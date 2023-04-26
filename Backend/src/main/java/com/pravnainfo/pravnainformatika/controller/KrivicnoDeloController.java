package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.model.KrivicnoDelo;
import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import com.pravnainfo.pravnainformatika.repositories.KrivicnoDeloRepository;
import com.pravnainfo.pravnainformatika.repositories.TelesnaPovredaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/api/v1/krivicnoDelo")
@RestController
public class KrivicnoDeloController {
	
	@Autowired
	private KrivicnoDeloRepository krivicnoDeloRepository;

	@GetMapping()
	public ResponseEntity<List<KrivicnoDelo>> getKrivicnaDela(){
		List<KrivicnoDelo> krivicnoDelos = krivicnoDeloRepository.findAll();
		return new ResponseEntity<>(krivicnoDelos, HttpStatus.OK);
	}

	@GetMapping(value = "/{id}")
	public ResponseEntity<List<KrivicnoDelo>> getKrivicnoDelo(@PathVariable("id") Integer id){
		List<KrivicnoDelo> krivicnoDelos = new ArrayList<>();
		KrivicnoDelo krivicnoDelo = krivicnoDeloRepository.findById(id).orElse(null);
		krivicnoDelos.add(krivicnoDelo);
		return new ResponseEntity<>(krivicnoDelos, HttpStatus.OK);
	}
}
