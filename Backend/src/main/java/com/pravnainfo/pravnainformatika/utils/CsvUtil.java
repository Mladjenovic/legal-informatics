package com.pravnainfo.pravnainformatika.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pravnainfo.pravnainformatika.model.Korisnik;
import com.pravnainfo.pravnainformatika.model.KrivicnoDelo;
import com.pravnainfo.pravnainformatika.model.Presuda;
import com.pravnainfo.pravnainformatika.model.Propis;
import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import com.pravnainfo.pravnainformatika.repositories.PresudaRepository;

@Component
public class CsvUtil {

	@Autowired
	private PresudaRepository presudaRepository;
	
	public void refreshCSV() throws FileNotFoundException {
		
		List<String[]> dataLines = new ArrayList();
		dataLines.add(new String[] 
				  { "#id","Sud","Poslovni broj","Sudija","Tuzilac","Okrivljeni","Krivicno delo",
						  "Telesne povrede","Hladno oružje","Predumišljaj","Odnos okrivljenog i oštećenog","Vrsta presude","Primenjeni propisi","Kazna"});
	
		List<Presuda> presude = presudaRepository.findAll();
		
		for (Presuda presuda : presude) {
			writePresudaToCSVList(dataLines, presuda);
		}
		
	    File csvOutputFile = new File("./src/main/resources/presude.csv");
	    try (PrintWriter pw = new PrintWriter(csvOutputFile)) {
	        dataLines.stream()
	          .map(this::convertToCSV)
	          .forEach(pw::println);
	    }
		
	}
	
	private List<String[]> writePresudaToCSVList(List<String[]> dataLines, Presuda presuda) {
	
		String sudije = "";
		List<Korisnik> sudijeLista = presuda.getSudije();
		
		String krivicnaDela = "";
		List<KrivicnoDelo> delaLista = presuda.getKrivicnaDela();
		
		String telesnePovrede = "";
		List<TelesnaPovreda> povredeLista = presuda.getTelesnePovrede();
		
		String primenjeniPropisi = "";
		List<Propis> propisiLista = presuda.getPrimenjeniPropisi();
		
		String kazna = "";
		
		for (int i = 0; i < sudijeLista.size(); i++) {
			sudije = sudije + sudijeLista.get(i).getIme() + " " + sudijeLista.get(i).getPrezime();
			if(i != sudijeLista.size() - 1)
				sudije = sudije + ",";
		}
		
		for (int i = 0; i < delaLista.size(); i++) {
			krivicnaDela = krivicnaDela + delaLista.get(i).getNaziv();
			if(i != delaLista.size() - 1)
				krivicnaDela = krivicnaDela + ",";
		}
		
		for (int i = 0; i < povredeLista.size(); i++) {
			telesnePovrede = telesnePovrede + povredeLista.get(i).getOpis();
			if(i != delaLista.size() - 1)
				telesnePovrede = telesnePovrede + ",";
		}
		
		for (int i = 0; i < propisiLista.size(); i++) {
			primenjeniPropisi = primenjeniPropisi + propisiLista.get(i).getOpis();
			if(i != propisiLista.size() - 1)
				primenjeniPropisi = primenjeniPropisi + ",";
		}
		
		kazna =   "Zatvor: " + presuda.getKaznaZatvor() != null ? presuda.getKaznaZatvor() : "/"
				+ ", "
				+ "Novac: " + presuda.getKaznaNovac() != null ? presuda.getKaznaNovac() : "/";
		
		dataLines.add(new String[] 
				  { presuda.getId().toString(), 
						  presuda.getSud(),
						  presuda.getPoslovniBroj(),
						  sudije,
						  presuda.getTuzilac(),
						  presuda.getOkrivljeni(),
						  krivicnaDela,
						  telesnePovrede,
						  presuda.getHladnoOruzije() ? "naoruzan" : "nenaoruzan",
						  presuda.getPredumisljaj() ? "sa" : "bez",
					      presuda.getOdnos(),
						  presuda.getOsudjen() ? "osudjujuca" : "oslobadjajuca",
						  primenjeniPropisi,
						  kazna});
		
		return dataLines;
	}
	
	private String escapeSpecialCharacters(String data) {
	    String escapedData = data.replaceAll("\\R", " ");
	    if (data.contains(",") || data.contains("\"") || data.contains("'")) {
	        data = data.replace("\"", "\"\"");
	        escapedData = "\"" + data + "\"";
	    }
	    return escapedData;
	}
	
	private String convertToCSV(String[] data) {
	    return Stream.of(data)
	      .map(this::escapeSpecialCharacters)
	      .collect(Collectors.joining(";"));
	}
	
}
