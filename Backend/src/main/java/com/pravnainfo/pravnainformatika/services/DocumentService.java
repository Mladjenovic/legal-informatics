package com.pravnainfo.pravnainformatika.services;

import java.io.IOException;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.pravnainfo.pravnainformatika.dto.PunishmentSuggestionDTO;
import com.pravnainfo.pravnainformatika.dto.TipDelaDTO;

public interface DocumentService {
    String parsePDF(String brZakona, String docName);
    String parsePDFByID(int id);
    String parseCriminalLaw();
    PunishmentSuggestionDTO makeFactsRdf(TipDelaDTO dto) throws IOException, IllegalAccessException, InterruptedException, ParserConfigurationException, SAXException;
	String getAkomaNtoso(int id) throws IOException;

}
