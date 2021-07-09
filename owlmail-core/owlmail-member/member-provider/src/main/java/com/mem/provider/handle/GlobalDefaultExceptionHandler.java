package com.mem.provider.handle;

import com.mem.provider.dto.ErrorDto;
import com.mem.provider.util.BaseResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.sql.Date;
import java.time.Instant;

@Slf4j
@Component
@RestControllerAdvice
public class GlobalDefaultExceptionHandler {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public BaseResult<ErrorDto> argument(MethodArgumentNotValidException e) {
        log.info("参数异常...");
        ErrorDto errorDto = new ErrorDto();
        errorDto.setMessage(e.getMessage());
        errorDto.setErrorClass(e.getCause().toString());
        errorDto.setErrorTime(Instant.now());
        return BaseResult.error("参数异常", errorDto);
    }

    @ExceptionHandler(RuntimeException.class)
    public BaseResult<ErrorDto> runtime(RuntimeException e) {
        log.info("运行时异常...");
        ErrorDto errorDto = new ErrorDto();
        errorDto.setMessage(e.getMessage());
        errorDto.setErrorClass(e.getCause().toString());
        errorDto.setErrorTime(Instant.now());
        return BaseResult.error("运行时异常", errorDto);
    }

}
