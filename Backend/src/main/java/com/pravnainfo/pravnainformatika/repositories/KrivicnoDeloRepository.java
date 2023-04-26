package com.pravnainfo.pravnainformatika.repositories;

import com.pravnainfo.pravnainformatika.model.KrivicnoDelo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KrivicnoDeloRepository extends JpaRepository<KrivicnoDelo, Integer> {
	
}
