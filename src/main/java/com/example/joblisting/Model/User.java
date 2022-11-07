package com.example.joblisting.Model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.validation.constraints.NotBlank;
import java.util.UUID;

public class User {
    private UUID id;
    private String name;

    @NotBlank
    private String Email;

    @NotBlank
    private String Password;

    private byte[] ResumeFile;

    public User() {

    }

    public User (@JsonProperty("id") UUID id,
                 @JsonProperty("name") String name,
                 @JsonProperty("Email") String Email,
                 @JsonProperty("Password") String Password,
                 @JsonProperty("ResumeFile") byte[] ResumeFile) {
        this.id = id;
        this.name = name;
        this.Email = Email;
        this.Password = Password;
        this.ResumeFile = ResumeFile;
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public byte[] getResumeFile() {
        return ResumeFile;
    }

    public void setResumeFile(byte[] resumeFile) {
        ResumeFile = resumeFile;
    }

    public void setPassword(String password) {
        Password = password;
    }
}




