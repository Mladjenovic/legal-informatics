package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.dto.PresudaDTO;
import com.pravnainfo.pravnainformatika.model.Presuda;
import com.pravnainfo.pravnainformatika.repositories.PresudaRepository;
import com.pravnainfo.pravnainformatika.services.MapperService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/api/v1/presuda")
@RestController
public class PresudaController {
    @Autowired
    private PresudaRepository presudaRepository;
    @Autowired
    private MapperService mapper;

    @GetMapping()
    public ResponseEntity<List<Presuda>> getPresude(){
        List<Presuda> presude = presudaRepository.findAll();
        return new ResponseEntity<>(presude,HttpStatus.OK);
    }

    @PostMapping()
    public ResponseEntity<Presuda> postPresuda(@RequestBody PresudaDTO presudaDTO){
        Presuda presuda = mapper.presudaDTOToPresuda(presudaDTO);
        Presuda savedPresuda = presudaRepository.save(presuda);
        return new ResponseEntity<>(savedPresuda,HttpStatus.OK);
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<Presuda> getPresuda(@PathVariable("id") Integer id){
        return new ResponseEntity<>(presudaRepository.findById(id).orElse(null),HttpStatus.OK);
    }
}
