package com.mem.provider;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

//@EnableDiscoveryClient
@SpringBootApplication
public class OwlMemProviderApplication {

    public static void main(String[] args) {
        SpringApplication.run(OwlMemProviderApplication.class, args);
    }

}
