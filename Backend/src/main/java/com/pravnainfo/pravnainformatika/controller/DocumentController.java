package com.pravnainfo.pravnainformatika.controller;

import com.pravnainfo.pravnainformatika.dto.PunishmentSuggestionDTO;
import com.pravnainfo.pravnainformatika.dto.TipDelaDTO;
import com.pravnainfo.pravnainformatika.services.DocumentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;


@RequiredArgsConstructor
@RequestMapping("/api/v1/document")
@RestController
public class DocumentController {
    public final DocumentService documentService;
    
    @GetMapping("{brZakona}/{docName}")
    public ResponseEntity<String> getRandomString(@PathVariable("brZakona") String brZakona,
                                                  @PathVariable("docName") String docName){
        return new ResponseEntity<>(documentService.parsePDF(brZakona, docName), HttpStatus.OK);
    }
    
    @GetMapping(path = "/parse/{id}", produces = "text/plain")
    public ResponseEntity<String> getRandomString(@PathVariable("id") int id){
        return new ResponseEntity<>(documentService.parsePDFByID(id), HttpStatus.OK);
    }

    @GetMapping("krivicniZakonik")
    public ResponseEntity<String> getRandomString(){
        return new ResponseEntity<>(documentService.parseCriminalLaw(), HttpStatus.OK);
    }

    @PostMapping("rasudjivanjePoPravilima")
    public ResponseEntity<PunishmentSuggestionDTO> poPravilima(@RequestBody TipDelaDTO dto) throws IOException, IllegalAccessException, InterruptedException, ParserConfigurationException, SAXException {
        return new ResponseEntity<>(documentService.makeFactsRdf(dto), HttpStatus.CREATED);
    }
    
    @GetMapping("/akomaNtoso/{id}")
    public ResponseEntity<String> getXml(@PathVariable("id") int id) throws IOException {
    	return new ResponseEntity<>(documentService.getAkomaNtoso(id), HttpStatus.OK);
    }
}
