package com.pravnainfo.pravnainformatika.dto;

import java.util.List;

import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;

import lombok.Data;

@Data
public class PredlogPoSlucajuDTO {
	
	private List<String> odnos;
	private Boolean hladnoOruzije;
	private Boolean predumisljaj;
	private List<TelesnaPovreda> telesnePovrede;
}
