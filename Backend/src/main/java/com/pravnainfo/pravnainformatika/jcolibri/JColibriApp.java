package com.pravnainfo.pravnainformatika.jcolibri;


import com.pravnainfo.pravnainformatika.jcolibri.model.CaseDescription;
import com.pravnainfo.pravnainformatika.jcolibri.similarity.TabularSimilarity;
import com.pravnainfo.pravnainformatika.model.KrivicnoDelo;
import com.pravnainfo.pravnainformatika.model.Propis;
import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import com.pravnainfo.pravnainformatika.dto.PredlogPoSlucajuDTO;
import com.pravnainfo.pravnainformatika.dto.PresudaDTO;
import com.pravnainfo.pravnainformatika.dto.PunishmentSuggestionDTO;
import com.pravnainfo.pravnainformatika.jcolibri.connector.CsvConnector;
import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class JColibriApp implements StandardCBRApplication {
	
	Connector _connector;  /** Connector object */
	CBRCaseBase _caseBase;  /** CaseBase object */

	NNConfig simConfig;  /** KNN configuration */
	
	public void configure() throws ExecutionException {
		_connector =  new CsvConnector();
		
		_caseBase = new LinealCaseBase();  // Create a Lineal case base for in-memory organization
		
		simConfig = new NNConfig(); // KNN configuration
		simConfig.setDescriptionSimFunction(new Average());  // global similarity function = average
		
		TabularSimilarity slicnostPovreda = new TabularSimilarity(Arrays.asList(new String[] {"laka", "teska", "ubistvo"}));
		slicnostPovreda.setSimilarity("laka", "teska", .6);
		slicnostPovreda.setSimilarity("laka", "ubistvo", .2);
		slicnostPovreda.setSimilarity("teska","ubistvo", .8);
		simConfig.addMapping(new Attribute("telesnePovrede", CaseDescription.class), slicnostPovreda);

		TabularSimilarity slicnostOruzje = new TabularSimilarity(Arrays.asList(new String[] {"naoruzan", "nenaoruzan"}));
		slicnostOruzje.setSimilarity("naoruzan", "nenaoruzan", .4);
		simConfig.addMapping(new Attribute("hladnoOruzje", CaseDescription.class), slicnostOruzje);
		
		simConfig.addMapping(new Attribute("predumisljaj", CaseDescription.class), new Equal());
		
		TabularSimilarity slicnostOdnos = new TabularSimilarity(Arrays.asList(new String[] {"stranci", "poznanici", "prijatelji","kolege","rodbina_sira","rodbina_uza"}));
		slicnostOdnos.setSimilarity("stranci", "poznanici", .7);
		slicnostOdnos.setSimilarity("stranci", "prijatelji", .4);
		slicnostOdnos.setSimilarity("stranci","kolege", .5);
		slicnostOdnos.setSimilarity("stranci", "rodbina_sira", .6);
		slicnostOdnos.setSimilarity("stranci","rodbina_uza", .2);
		
		slicnostOdnos.setSimilarity("poznanici", "prijatelji", .3);
		slicnostOdnos.setSimilarity("poznanici","kolege", .6);
		slicnostOdnos.setSimilarity("poznanici", "rodbina_sira", .5);
		slicnostOdnos.setSimilarity("poznanici","rodbina_uza", .3);
		
		slicnostOdnos.setSimilarity("prijatelji","kolege", .5);
		slicnostOdnos.setSimilarity("prijatelji", "rodbina_sira", .6);
		slicnostOdnos.setSimilarity("prijatelji","rodbina_uza", .8);
		
		slicnostOdnos.setSimilarity("kolege", "rodbina_sira", .6);
		slicnostOdnos.setSimilarity("kolege","rodbina_uza", .3);
		
		slicnostOdnos.setSimilarity("rodbina_sira","rodbina_uza", .8);
		simConfig.addMapping(new Attribute("odnosOkrivljenogIOstecenog", CaseDescription.class), slicnostOdnos);
		
		// Equal - returns 1 if both individuals are equal, otherwise returns 0
		// Interval - returns the similarity of two number inside an interval: sim(x,y) = 1-(|x-y|/interval)
		// Threshold - returns 1 if the difference between two numbers is less than a threshold, 0 in the other case
		// EqualsStringIgnoreCase - returns 1 if both String are the same despite case letters, 0 in the other case
		// MaxString - returns a similarity value depending of the biggest substring that belong to both strings
		// EnumDistance - returns the similarity of two enum values as the their distance: sim(x,y) = |ord(x) - ord(y)|
		// EnumCyclicDistance - computes the similarity between two enum values as their cyclic distance
		// Table - uses a table to obtain the similarity between two values. Allowed values are Strings or Enums. The table is read from a text file.
		// TabularSimilarity - calculates similarity between two strings or two lists of strings on the basis of tabular similarities
	}

	public void cycle(CBRQuery query) throws ExecutionException {
		Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
		eval = SelectCases.selectTopKRR(eval, 5);
		System.out.println("Retrieved cases:");
		for (RetrievalResult nse : eval)
			System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
	}

	public void postCycle() throws ExecutionException {
		
	}

	public CBRCaseBase preCycle() throws ExecutionException {
		_caseBase.init(_connector);
		Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
		return _caseBase;
	}

	public static void jcolibri() {
		StandardCBRApplication recommender = new JColibriApp();
		try {
			recommender.configure();

			recommender.preCycle();

			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();
			
			caseDescription.setKrivicnoDelo("cl. 289 st. 3 KZ");
			List<String> primenjeniPropisi = new ArrayList();
			primenjeniPropisi.add("cl. 55 st. 3 tac. 15 ZOBSNP");
			primenjeniPropisi.add("cl. 43 st. 1 ZOBSNP");
			caseDescription.setPrimenjeniPropisi(primenjeniPropisi);
			List<String> telesnePovrede = new ArrayList();
			telesnePovrede.add("lake");
			caseDescription.setTelesnePovrede(telesnePovrede);
			
			query.setDescription( caseDescription );

			recommender.cycle(query);

			recommender.postCycle();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static PunishmentSuggestionDTO jcolibriNew(PredlogPoSlucajuDTO presudaDto) {
		JColibriApp recommender = new JColibriApp();
		String rezultat = "";
		try {
			recommender.configure();

			recommender.preCycle();
			
			CBRQuery query = new CBRQuery();
			CaseDescription caseDescription = new CaseDescription();

			caseDescription.setOdnosOkrivljenogIOstecenog(presudaDto.getOdnos().get(0));
			caseDescription.setHladnoOruzje(presudaDto.getHladnoOruzije() ? "naoruzan" : "nenaoruzan");
			caseDescription.setPredumisljaj(presudaDto.getPredumisljaj() ? "sa" : "bez");
			 
			List<String> telesnePovrede = new ArrayList();
			for (TelesnaPovreda povreda : presudaDto.getTelesnePovrede()) {
				telesnePovrede.add(povreda.getOpis());
			}
			caseDescription.setTelesnePovrede(telesnePovrede);
			
			query.setDescription( caseDescription );

			Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(recommender._caseBase.getCases(), query, recommender.simConfig);
			eval = SelectCases.selectTopKRR(eval, 5);
			System.out.println("Retrieved cases:");
			
			rezultat = rezultat + "<div><p><b>Predlog presuda na osnovu pet najsličnijih presuda u sistemu:</b>\n</p></div>";
			for (RetrievalResult nse : eval) {
				System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
				
				String kazna = "<div><a target=\"_blank\" href=\"http://localhost:4200/sudija/prikazPresude/" + (int)nse.get_case().getID() +"\">" 
				+ nse.get_case().getDescription().toString().split(";")[2].split("=")[1] + "</a><br/><br/>";
						
				kazna = kazna + nse.get_case().getDescription().toString().split(";")[10].replace(']', ' ')+"<br/><br/>";
				kazna = kazna + nse.get_case().getDescription().toString().split(";")[6]+"<br/><br/>";
				kazna = kazna + nse.get_case().getDescription().toString().split(";")[9]+"<br/><br/>";
				kazna = kazna + nse.get_case().getDescription().toString().split(";")[8]+"<br/><br/></div>";
				
				rezultat = rezultat + kazna;
				
			}
			
			recommender.postCycle();
			
			PunishmentSuggestionDTO dto = new PunishmentSuggestionDTO();
			dto.setPunishmentDescription(rezultat);
			
			return dto;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}