package com.pravnainfo.pravnainformatika.services;

import com.pravnainfo.pravnainformatika.dto.PresudaDTO;
import com.pravnainfo.pravnainformatika.model.*;
import com.pravnainfo.pravnainformatika.repositories.KrivicnoDeloRepository;
import com.pravnainfo.pravnainformatika.repositories.PropisRepository;
import com.pravnainfo.pravnainformatika.repositories.TelesnaPovredaRepository;
import com.pravnainfo.pravnainformatika.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MapperService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private TelesnaPovredaRepository telesnaPovredaRepository;
    @Autowired
    private PropisRepository propisRepository;
    @Autowired
    private KrivicnoDeloRepository krivicnoDeloRepository;

    public Presuda presudaDTOToPresuda(PresudaDTO dto)
    {
        Presuda presuda = new Presuda();
        presuda.setSud(dto.getSud());
        presuda.setTuzilac(dto.getTuzilac());
        presuda.setPoslovniBroj(dto.getPoslovniBroj());
        presuda.setOkrivljeni(dto.getOkrivljeni());
        presuda.setKaznaNovac(dto.getKaznaNovac());
        presuda.setKaznaZatvor(dto.getKaznaZatvor());
        presuda.setOsudjen(dto.getOsudjen());
        presuda.setHladnoOruzije(dto.getHladnoOruzije());
        List<Korisnik> sudije = new ArrayList<>();
        for(Korisnik korisnik : dto.getSudije())
        {
            Korisnik korisnik1 = userRepository.findById(korisnik.getId()).orElse(null);
            if(korisnik1 != null)
            {
                sudije.add(korisnik1);
            }
        }
        presuda.setSudije(sudije);

        List<TelesnaPovreda> telesnePovrede = new ArrayList<>();
        for(TelesnaPovreda telesnaPovreda : dto.getTelesnePovrede())
        {
            TelesnaPovreda telesnaPovreda1 = telesnaPovredaRepository.findById(telesnaPovreda.getId()).orElse(null);
            if(telesnaPovreda1 != null)
            {
                telesnePovrede.add(telesnaPovreda1);
            }
        }
        presuda.setTelesnePovrede(telesnePovrede);

        List<Propis> propisi = new ArrayList<>();
        for(Propis propis : dto.getPrimenjeniPropisi())
        {
            Propis propis1 = propisRepository.findById(propis.getId()).orElse(null);
            if(propis1 != null)
            {
                propisi.add(propis1);
            }
        }
        presuda.setPrimenjeniPropisi(propisi);

        List<KrivicnoDelo> krivicnaDela = new ArrayList<>();
        for(KrivicnoDelo krivicnoDelo : dto.getKrivicnaDela())
        {
            KrivicnoDelo krivicnoDelo1 = krivicnoDeloRepository.findById(krivicnoDelo.getId()).orElse(null);
            if(krivicnoDelo1 != null)
            {
                krivicnaDela.add(krivicnoDelo1);
            }
        }
        presuda.setKrivicnaDela(krivicnaDela);
        return presuda;
    }
}
