package com.DakiBookStore.service.impl;


import com.DakiBookStore.dto.CustomUser;
import com.DakiBookStore.model.Account;
import com.DakiBookStore.model.Role;
import com.DakiBookStore.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private AccountRepository accountRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = accountRepository.findByUsername(username);
        if(account == null){
            throw new UsernameNotFoundException("User not found");
        }

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for(Role role: account.getRoles()){
            authorities.add(new SimpleGrantedAuthority(role.getRole()));
        }
        // put thong tin vao security duy tri thong tin do khi user login vao
        CustomUser customUser = new CustomUser(username, account.getPassword(), true,true,true,true,authorities);
        customUser.setFullName(account.getName());
        return customUser;
    }
}
