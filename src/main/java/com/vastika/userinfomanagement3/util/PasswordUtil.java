package com.vastika.userinfomanagement3.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordUtil
{
    public static String encodePassword(String password)
    {
        PasswordEncoder encoder= new BCryptPasswordEncoder();
        String encodedPassword=encoder.encode(password);
        return encodedPassword;
    }
    public static void main(String[]args)
    {
        System.out.println(encodePassword("user"));
    }
}
