package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.dto.PredlogPoSlucajuDTO;
import com.pravnainfo.pravnainformatika.dto.PresudaDTO;
import com.pravnainfo.pravnainformatika.dto.PunishmentSuggestionDTO;
import com.pravnainfo.pravnainformatika.jcolibri.JColibriApp;
import com.pravnainfo.pravnainformatika.utils.CsvUtil;

import lombok.RequiredArgsConstructor;

import java.io.FileNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RequestMapping("/api/v1/jcolibri")
@RestController
public class JColibriController {

	@Autowired
	private CsvUtil csvUtil;
	
    @GetMapping("/getColibri")
    public ResponseEntity<String> getColibri(){
        JColibriApp.jcolibri();
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @PostMapping("/postColibri")
    public ResponseEntity<PunishmentSuggestionDTO> postColibri(@RequestBody PredlogPoSlucajuDTO presudaDto) throws FileNotFoundException{
    	csvUtil.refreshCSV();
        return new ResponseEntity<>(JColibriApp.jcolibriNew(presudaDto), HttpStatus.OK);
    }
}
