package com.hot.dev.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/first")
    public Map<String, Object> first() {
        log.info("test first");
        Map<String, Object> map = new HashMap<>();
        map.put("code", 200);
        map.put("message", "first");
        map.put("data", null);
        return map;
    }

    @RequestMapping("/second")
    public Map<String, Object> second() {
        log.info("test second");
        Map<String, Object> map = new HashMap<>();
        String message = "hello world 2";
        map.put("code", 200);
        map.put("message", message);
        map.put("data", null);
        return map;
    }
}
