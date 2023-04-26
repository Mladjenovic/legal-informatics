package com.pravnainfo.pravnainformatika.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pravnainfo.pravnainformatika.model.Korisnik;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Korisnik, Integer> {

	Optional<Korisnik> findByKorisnickoIme(String korisnickoIme);
	
}
