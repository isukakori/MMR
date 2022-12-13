package com.MMR.utils;

import org.apache.commons.lang3.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class carNumber {
    public static  boolean isMobile(String carNumber){
        Pattern p = null;
        Matcher m = null;
        boolean b = false;
        // 验证车牌
        String s2="[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z][A-Z][A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳]";
        if(StringUtils.isNotBlank(carNumber)){
            p = Pattern.compile(s2);
            m = p.matcher(carNumber);
            b = m.matches();
        }
        return b;
    }

}
