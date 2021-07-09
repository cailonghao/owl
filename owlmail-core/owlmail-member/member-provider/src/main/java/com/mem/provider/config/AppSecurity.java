package com.mem.provider.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mem.provider.dto.ErrorDto;
import com.mem.provider.entity.SysUser;
import com.mem.provider.util.BaseResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.Instant;

@Slf4j
@Configuration
@EnableWebSecurity
public class AppSecurity extends WebSecurityConfigurerAdapter {


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/openFeign/**").permitAll()
                .anyRequest().permitAll()
                .and()
                .formLogin().disable()
                .csrf().disable()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .exceptionHandling()
                .accessDeniedHandler(new AccessDeniedHandler() {
                    @Override
                    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException, ServletException {
                        log.info("认证异常");
                        ErrorDto errorDto = new ErrorDto();
                        errorDto.setMessage(e.getMessage());
                        errorDto.setErrorClass(e.getCause().toString());
                        errorDto.setErrorTime(Instant.now());
                        httpServletResponse.setCharacterEncoding("UTF-8");
                        ObjectMapper mapper = new ObjectMapper();
                        String json = mapper.writeValueAsString(errorDto);
                        httpServletResponse.getWriter().write(json);
                    }
                })
                .authenticationEntryPoint(new AuthenticationEntryPoint() {
                    @Override
                    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
                        log.info("权限异常");
                        ErrorDto errorDto = new ErrorDto();
                        errorDto.setMessage(e.getMessage());
                        errorDto.setErrorClass(e.getCause().toString());
                        errorDto.setErrorTime(Instant.now());
                        httpServletResponse.setCharacterEncoding("UTF-8");
                        ObjectMapper mapper = new ObjectMapper();
                        String json = mapper.writeValueAsString(errorDto);
                        httpServletResponse.getWriter().write(json);
                    }
                });
//                .and()
//                .addFilterBefore(tokenFilter(), UsernamePasswordAuthenticationFilter.class);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//
//    public TokenFilter tokenFilter() {
//        return new TokenFilter();
//    }
}
