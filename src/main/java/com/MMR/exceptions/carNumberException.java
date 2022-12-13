package com.MMR.exceptions;

public class carNumberException extends RuntimeException{
    private Integer code=400;
    private String msg="车牌不合法!";

    public carNumberException() {
        super("车牌不合法!");
    }

    public carNumberException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public carNumberException(Integer code) {
        super("车牌不合法!");
        this.code = code;
    }

    public carNumberException(Integer code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
