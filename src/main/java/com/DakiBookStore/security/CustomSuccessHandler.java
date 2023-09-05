package com.DakiBookStore.security;



import com.DakiBookStore.util.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        String targetUrl = determineTargetUrl(authentication);
        if(response.isCommitted()){
            return;
        }
        redirectStrategy.sendRedirect(request,response,targetUrl);
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    private String determineTargetUrl(Authentication authentication){
        String url="";
        // if role is ROLE_2ADMIN so redirect to controller /admin/home
        // if role is ROLE_USER so redirect to controller /user/home
        List<String> roles = SecurityUtils.getAuthrities();
        if (isAdmin(roles)) {
            url = "/admin/home";
        } else if (isUser(roles)) {
            url = "/user";
        }
        return url;
    }
    private boolean isAdmin(List<String> roles){
        if(roles.contains("Admin")){
            return true;
        }
        else{
            return false;
        }
    }
    private boolean isUser(List<String> roles){
        if(roles.contains("User")){
            return true;
        }
        else{
            return false;
        }
    }
}
