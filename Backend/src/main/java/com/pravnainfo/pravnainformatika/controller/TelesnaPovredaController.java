package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import com.pravnainfo.pravnainformatika.repositories.TelesnaPovredaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/api/v1/telesnaPovreda")
@RestController
public class TelesnaPovredaController {
	
	@Autowired
	private TelesnaPovredaRepository telesnaPovredaRepository;

	@GetMapping()
	public ResponseEntity<List<TelesnaPovreda>> getTelesnePovrede(){
		List<TelesnaPovreda> telesnaPovredas = telesnaPovredaRepository.findAll();
		return new ResponseEntity<>(telesnaPovredas, HttpStatus.OK);
	}
}
