package com.mem.provider.util;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Setter
@Getter
@ApiModel("通用返回对象")
public class BaseResult<T> implements Serializable {

    @ApiModelProperty(value = "返回码", dataType = "String")
    private int code;
    @ApiModelProperty(value = "提示信息", dataType = "String")
    private String msg;
    @ApiModelProperty(value = "返回值", dataType = "String")
    private T data;


    public BaseResult() {

    }

    public BaseResult(BaseResult.Type type, String msg) {
        this.code = type.value;
        this.msg = msg;
    }

    public BaseResult(BaseResult.Type type, String msg, T data) {
        this.code = type.value;
        this.msg = msg;
        if (data != null) {
            this.data = data;
        }
    }

    public static <T> BaseResult<T> success() {
        return success("操作成功");
    }

    public static <T> BaseResult<T> success(String msg) {
        return success(msg, (T) null);
    }

    public static <T> BaseResult<T> success(String msg, T data) {
        return info(BaseResult.Type.SUCCESS, msg, data);
    }

    public static <T> BaseResult<T> error() {
        return error("操作失败");
    }

    public static <T> BaseResult<T> error(String msg) {
        return error(msg, (T) null);
    }

    public static <T> BaseResult<T> error(String msg, T data) {
        return info(BaseResult.Type.ERROR, msg, data);
    }

    public static <T> BaseResult<T> info(BaseResult.Type type, String msg, T data) {
        return new BaseResult<T>(type, msg, data);
    }

    public static enum Type {
        SUCCESS(200),
        WARN(402),
        UNAUTH(401),
        ERROR(500);
        private final int value;

        private Type(int value) {
            this.value = value;
        }

        public int value() {
            return this.value;
        }
    }

}
