package com.MMR;

import com.MMR.base.ResultInfo;
import com.MMR.exceptions.NoLoginException;
import com.MMR.exceptions.ParamsException;
import com.MMR.exceptions.carNumberException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalExceptionResolver {
    //参数错误异常处理
    @ExceptionHandler(value = ParamsException.class)
    @ResponseBody
    public ResultInfo paramsExceptionHandler(ParamsException p){
        ResultInfo resultInfo = new ResultInfo();
        resultInfo.setCode(p.getCode());
        resultInfo.setMsg(p.getMsg());
        return resultInfo;
    }
    //未登录异常处理
    @ExceptionHandler(value = NoLoginException.class)
    @ResponseBody
    public ResultInfo NoLoginExceptionHandler(NoLoginException p){
        ResultInfo resultInfo = new ResultInfo();
        resultInfo.setCode(p.getCode());
        resultInfo.setMsg(p.getMsg());
        return resultInfo;
    }
    //车牌异常处理
    @ExceptionHandler(value = carNumberException.class)
    @ResponseBody
    public ResultInfo carNumberExceptionHandler(carNumberException p){
        ResultInfo resultInfo = new ResultInfo();
        resultInfo.setCode(p.getCode());
        resultInfo.setMsg(p.getMsg());
        return resultInfo;
    }
}
