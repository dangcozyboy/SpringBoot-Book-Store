package com.DakiBookStore.util;

import com.DakiBookStore.dto.CustomUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils {
    public static CustomUser getMyUserDetail() {
        return (CustomUser) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
    }
    @SuppressWarnings("unchecked")
    public static List<String> getAuthrities(){
        List<String> results = new ArrayList<>();
        List<GrantedAuthority> authorities= (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for(GrantedAuthority authority : authorities){
            results.add(authority.getAuthority());
        }
        return results;
    }
}
