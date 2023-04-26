package com.pravnainfo.pravnainformatika.repositories;

import com.pravnainfo.pravnainformatika.model.TelesnaPovreda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TelesnaPovredaRepository extends JpaRepository<TelesnaPovreda, Integer> {
	
}
