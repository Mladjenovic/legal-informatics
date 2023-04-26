package com.pravnainfo.pravnainformatika.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

public class PDFParser {
    private static PDFParser instance;
    private PDFParser() {}

    public static PDFParser getInstance() throws IOException {
        if (instance == null) {
            instance = new PDFParser();
        }
        return instance;
    }

    public String convertPDFToString(String brZakona, String docName) {
        try {
            //Path to PDFs
            Path relativePath = Paths.get(System.getProperty("user.dir")).getParent()
                    //.getParent()                          //Uncomment for unit test to pass
                    .resolve("doc")
                    .resolve("Presude")
                    .resolve(brZakona)
                    .resolve(docName);

            //Loading an existing document
            File file = new File(relativePath.toUri());

            PDDocument document = PDDocument.load(file);

            //Instantiate PDFTextStripper class
            PDFTextStripper pdfStripper = new PDFTextStripper();
            //Retrieving text from PDF document
            String pdfText = pdfStripper.getText(document);
            //Closing the document
            document.close();

            return pdfText;
        }
        catch(Exception e) {
            return "Bad path provided! Shady 'brZakona' or 'docName'";
        }
    }
    
    public String convertPDFToStringByID(int id) {
        try {
            //Path to PDFs
            Path relativePath = Paths.get(System.getProperty("user.dir")).getParent()
                    //.getParent()                          //Uncomment for unit test to pass
                    .resolve("doc")
                    .resolve("Presude")
                    .resolve("db_id")
                    .resolve(String.valueOf(id)+".pdf");

            //Loading an existing document
            File file = new File(relativePath.toUri());

            PDDocument document = PDDocument.load(file);

            //Instantiate PDFTextStripper class
            PDFTextStripper pdfStripper = new PDFTextStripper();
            //Retrieving text from PDF document
            String pdfText = pdfStripper.getText(document);
            //Closing the document
            document.close();

            return pdfText;
        }
        catch(Exception e) {
            return "Bad path provided! Shady 'id'";
        }
    }

    public String convertCrimanlLawPdfToString(){
        try {
            //Path to PDFs
            Path relativePath = Paths.get(System.getProperty("user.dir")).getParent()
                    //.getParent()                          //Uncomment for unit test to pass
                    .resolve("doc")
                    .resolve("Presude")
                    .resolve("krivicni-zakonik-crne-gore-2.pdf");

            //Loading an existing document
            File file = new File(relativePath.toUri());

            PDDocument document = PDDocument.load(file);

            //Instantiate PDFTextStripper class
            PDFTextStripper pdfStripper = new PDFTextStripper();
            //Retrieving text from PDF document
            String pdfText = pdfStripper.getText(document);
            //Closing the document
            document.close();

            return pdfText;
        }
        catch(Exception e) {
            System.out.println(e.toString());
            return "Error in parsing criminal law pdf'";
        }
    }
}