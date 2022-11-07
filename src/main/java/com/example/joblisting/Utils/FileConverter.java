package com.example.joblisting.Utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FileConverter {

    private File file;

    public FileConverter(File file) {
        this.file = file;
    }

    public FileConverter(String filepath) {
        this.file = new File(filepath);
    }

    public byte[] fileToByte() {
        try {
            byte[] bytes = Files.readAllBytes(file.toPath());
            System.out.println(bytes);

            return bytes;
        } catch (IOException e) {}
        return null;
    }

    public int byteToFile(byte[] bytes){
        Path filePath = Paths.get("test.pdf");
        try {
            Files.write(filePath, bytes);
            return 1;
        } catch (IOException e) {}
        return 0;
    }
}
