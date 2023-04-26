package com.pravnainfo.pravnainformatika.dto;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class PunishmentSuggestionDTO {

	@NotNull
	private String punishmentDescription; 
	
}
