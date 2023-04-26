package com.pravnainfo.pravnainformatika.repositories;

import com.pravnainfo.pravnainformatika.model.Propis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PropisRepository extends JpaRepository<Propis, Integer> {
	
}
