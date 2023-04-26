package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.model.Korisnik;
import com.pravnainfo.pravnainformatika.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pravnainfo.pravnainformatika.dto.LoginRequest;
import com.pravnainfo.pravnainformatika.dto.UserDTO;
import com.pravnainfo.pravnainformatika.services.UserService;

import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/api/v1/korisnik")
@RestController
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserRepository userRepository;
	
	@PostMapping("/login")
	public ResponseEntity<UserDTO> login(@RequestBody LoginRequest request){
		
		return userService.login(request);
		
	}
	
	@GetMapping("/{korisnickoIme}")
	public ResponseEntity<UserDTO> getUser(@PathVariable(name = "korisnickoIme") String userName){
		
		return userService.getUser(userName);
		
	}
	
	@PostMapping()
	public ResponseEntity<UserDTO> register(@RequestBody LoginRequest request){
		
		return userService.login(request);
		
	}

	@GetMapping("/sudija/{korisnickoIme}")
	public ResponseEntity<Korisnik> getSudija(@PathVariable(name = "korisnickoIme") String userName){
		Korisnik korisnik = userRepository.findByKorisnickoIme(userName).orElse(null);
		return new ResponseEntity<>(korisnik, HttpStatus.OK);
	}

	@GetMapping()
	public ResponseEntity<List<Korisnik>> getSudije(){
		List<Korisnik> korisniks = userRepository.findAll();
		return new ResponseEntity<>(korisniks, HttpStatus.OK);
	}
}
