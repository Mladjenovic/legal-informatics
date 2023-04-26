package com.pravnainfo.pravnainformatika.dto;

import com.pravnainfo.pravnainformatika.model.Korisnik;
import com.pravnainfo.pravnainformatika.model.KrivicnoDelo;
import com.pravnainfo.pravnainformatika.model.Propis;
import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import lombok.Data;

import java.util.List;

@Data
public class PresudaDTO {
	private Integer id;
	private String sud;
	private String poslovniBroj;
	private String tuzilac;
	private String okrivljeni;
	private Boolean osudjen;
	private String kaznaZatvor;
	private String kaznaNovac;
	private Boolean hladnoOruzije;
	private Boolean predumisljaj;
	private String odnos;
	private List<Korisnik> sudije;
	private List<TelesnaPovreda> telesnePovrede;
	private List<Propis> primenjeniPropisi;
	private List<KrivicnoDelo> krivicnaDela;
}
