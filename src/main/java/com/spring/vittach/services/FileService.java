package com.spring.vittach.services;

import java.io.IOException;
import java.io.InputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.springframework.stereotype.Service;

@Service
public class FileService {
    public String getClasspathResourceAsString(String path) throws IOException {
        InputStream in=this.getClass().getClassLoader().getResourceAsStream("../../"+ path);
        BufferedReader readerBuffer = new BufferedReader(new InputStreamReader(in,"UTF-8"));
        StringBuilder out = new StringBuilder();
        String myline; while((myline = readerBuffer.readLine()) != null) out.append(myline);
        readerBuffer.close();
        return out.toString();
    }
}
