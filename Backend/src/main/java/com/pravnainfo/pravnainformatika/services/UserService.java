package com.pravnainfo.pravnainformatika.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.pravnainfo.pravnainformatika.dto.LoginRequest;
import com.pravnainfo.pravnainformatika.dto.UserDTO;
import com.pravnainfo.pravnainformatika.model.Korisnik;
import com.pravnainfo.pravnainformatika.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository repository;

	public ResponseEntity<UserDTO> login(LoginRequest request) {

		Korisnik k = repository.findByKorisnickoIme(request.getKorisnickoIme()).orElse(null);
		UserDTO dto = null;

		if (k != null && k.getLozinka().equals(request.getLozinka())) {

			dto = new UserDTO();

			dto.setIme(k.getIme());
			dto.setPrezime(k.getPrezime());
			dto.setKorisnickoIme(k.getKorisnickoIme());
			dto.setJmbg(k.getJmbg());

		}

		return ResponseEntity.of(Optional.of(dto));
	}

	public ResponseEntity<UserDTO> getUser(String userName) {
		
		Korisnik k = repository.findByKorisnickoIme(userName).orElse(null);
		UserDTO dto = null;

		if (k != null ) {
			
			dto = new UserDTO();

			dto.setIme(k.getIme());
			dto.setPrezime(k.getPrezime());
			dto.setKorisnickoIme(k.getKorisnickoIme());
			dto.setJmbg(k.getJmbg());
		}
		
		return ResponseEntity.of(Optional.of(dto));
		
	}

}
