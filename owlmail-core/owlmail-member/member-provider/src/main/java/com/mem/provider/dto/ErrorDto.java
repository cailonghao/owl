package com.mem.provider.dto;

import lombok.Data;

import java.time.Instant;


@Data
public class ErrorDto {

    private String message;

    private String errorClass;

    private Instant errorTime;
}
