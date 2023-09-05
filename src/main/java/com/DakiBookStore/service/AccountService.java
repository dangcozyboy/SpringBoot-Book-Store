package com.DakiBookStore.service;

import com.DakiBookStore.dto.AccountDTO;
import com.DakiBookStore.dto.InfomationDTO;
import com.DakiBookStore.model.*;
import com.DakiBookStore.repository.AccountRepository;
import com.DakiBookStore.repository.InformationRepository;
import com.DakiBookStore.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AccountService {
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private InformationRepository informationRepository;
    private PasswordEncoder passwordEncoder;

    public AccountService(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    public Account findByUsername(String username){
        return accountRepository.findByUsername(username);
    }
    public Account findById(long id){
        return accountRepository.findById(id);
    }
    public Long countAccount(){
        return accountRepository.countAccount();
    }

    public Account register(AccountDTO accountDTO) {
        Account account = new Account();
        account.setUsername(accountDTO.getUsername());
        account.setPassword(passwordEncoder.encode((accountDTO.getPassword())));
        Role roles = roleRepository.findByRole("User");
        account.setRoles(Arrays.asList(roles));
        InformationAccount informationAccount = new InformationAccount();
        informationAccount.setEmail(accountDTO.getEmail());
        account.setName(accountDTO.getFullname());
        return accountRepository.save(account); // lưu account vào database
    }
    public String forgetPassword(AccountDTO accountDTO){
        Account account = accountRepository.findByUsername(accountDTO.getUsername());
        String error="";
        if(accountRepository.existsAccountByUsername(accountDTO.getUsername())){
            String encodedPassword = passwordEncoder.encode(accountDTO.getLastPassword());
            if(passwordEncoder.matches(encodedPassword, accountDTO.getPassword())){
                String encodedNewPassword = passwordEncoder.encode(accountDTO.getNewPassword());
                String encodedRepeatPassword = passwordEncoder.encode(accountDTO.getRepeatPassword());
                if(passwordEncoder.matches(encodedNewPassword,encodedRepeatPassword)){
                    account.setPassword(encodedNewPassword);
                    accountRepository.save(account);
                }
                else{
                    error="Repeat password not match";
                }
            }
            else {
                error="Last password not match";
            }
        }
        else {
            error="Username not exist on this website";
        }
        return error;
    }
    public void updateAddress(InfomationDTO infomationDTO, long idAccount){
        InformationAccount informationAccount = informationRepository.findByAccountId(idAccount);
        if(informationAccount==null){
            informationAccount = new InformationAccount();
        }
        informationAccount.setAddress(infomationDTO.getAddress());
        informationAccount.setPhone(infomationDTO.getPhonenumber());
        Account account = accountRepository.findById(idAccount);
        informationAccount.setAccount(account);
        informationRepository.save(informationAccount);
    }
    public boolean existsAccountByUsername(String username){
        return accountRepository.existsAccountByUsername(username);
    }
    public Page<Account> findAll(Pageable pageable) {
        return accountRepository.findAll(pageable);
    }
}
