package com.pravnainfo.pravnainformatika.utils;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

class PDFParserTest {

    public static PDFParser parser;

    static {
        try {
            parser = PDFParser.getInstance();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    void convertPDFToString() throws IOException {
        System.out.println(parser.convertPDFToString("151", "test.pdf"));
    }
}