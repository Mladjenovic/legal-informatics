package com.pravnainfo.pravnainformatika.repositories;

import com.pravnainfo.pravnainformatika.model.Presuda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PresudaRepository extends JpaRepository<Presuda, Integer> {
	
}
