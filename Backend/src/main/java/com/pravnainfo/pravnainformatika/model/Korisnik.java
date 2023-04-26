package com.pravnainfo.pravnainformatika.model;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Korisnik {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	private String ime;
	private String prezime;
	private String jmbg;
	
	private String korisnickoIme;
	private String lozinka;

	@ManyToMany(mappedBy = "sudije", cascade = {
			CascadeType.DETACH,
			CascadeType.MERGE,
			CascadeType.REFRESH,
			CascadeType.PERSIST})
	@JsonIgnore
	private Set<Presuda> presude = new HashSet<>();
}
