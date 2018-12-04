package com.internshipElves.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

    public static final String YMDHMS_PATTERN = "yyyy-MM-dd HH:mm:ss";
    public static final String YMDHM_PATTERN = "yyyy-MM-dd HH:mm";
    public static final String YMD_PATTERN = "yyyy-MM-dd";
    public static final String HMS_PATTERN = "HH:mm:ss";
    public static final String YMDBIR_PATTERN = "yyyyMMdd";
    public static final String Y_PATTERN="yyyy";


    /**
     * 日期转换成字符串
     *
     * @param date    需要格式化的日期对象
     * @param pattern 日期的格式
     * @return 返回字符串表示的日期
     */
    public static String date2String(Date date, String pattern) {
        DateFormat df = new SimpleDateFormat ( pattern );
        return df.format ( date );
    }


    /**
     * 字符串转换成日期对象
     *
     * @param strDate 字符串表示的日期
     * @param pattern 日期的格式
     * @return 返回对应的日期对象
     */
    public static Date string2Date(String strDate, String pattern) {
        DateFormat df = new SimpleDateFormat ( pattern );
        try {
            return df.parse ( strDate );
        } catch (ParseException e) {
            e.printStackTrace ();
            return null;
        }
    }
    //判断两个时间的年数（用于年龄）
    public static int computeBir(Date date1,Date date2){
        Calendar calendar1 = Calendar.getInstance();
        calendar1.setTime( date1 );
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime( date2 );
        int age = calendar2.get(Calendar.YEAR) - calendar1.get(Calendar.YEAR);
        if(calendar1.get( Calendar.MONTH) > calendar2.get( Calendar.MONTH ))
            age--;
        else if(calendar1.get( Calendar.MONTH) == calendar2.get( Calendar.MONTH )&&
                calendar1.get( Calendar.DAY_OF_MONTH) > calendar2.get( Calendar.DAY_OF_MONTH ) )
            age--;

        return age;

    }



}


