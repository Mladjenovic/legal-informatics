package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.model.Propis;
import com.pravnainfo.pravnainformatika.repositories.PropisRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/api/v1/propis")
@RestController
public class PropisController {
	
	@Autowired
	private PropisRepository propisRepository;

	@GetMapping()
	public ResponseEntity<List<Propis>> getPropisi(){
		List<Propis> propis = propisRepository.findAll();
		return new ResponseEntity<>(propis, HttpStatus.OK);
	}
}
