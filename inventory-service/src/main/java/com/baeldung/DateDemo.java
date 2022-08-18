package com.baeldung;

import java.util.Date;

public class DateDemo {
    public static void main(String[] args){
        Date date = new Date();
        long unixTime = date.getTime() / 1000L;
        System.out.println(unixTime);
    }
}
