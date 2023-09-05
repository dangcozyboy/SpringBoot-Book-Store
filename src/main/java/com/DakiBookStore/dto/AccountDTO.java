package com.DakiBookStore.dto;
import lombok.Data;

@Data
public class AccountDTO {
    private String username;
    private String password;
    private String repeatPassword;
    private String email;
    private String fullname;
    private String lastPassword;
    private String newPassword;
}
