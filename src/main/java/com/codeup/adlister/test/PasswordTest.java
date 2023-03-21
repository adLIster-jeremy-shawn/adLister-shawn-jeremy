package com.codeup.adlister.test;

import java.util.Scanner;

public class PasswordTest {
//A password must have at least eight characters
//A password consists of only letters and digits
//A password must contain at least two digits

    public static final int PASSWORD_LENGTH = 8;

    public static boolean is_Valid_Password(String password) {

        if (password.length() < PASSWORD_LENGTH) return false;

//        *********************
//
//        int spChCount = 0;
//
//        for (int i = 0; i < password.length(); i++) {
//
//            if (!Character.isDigit(password.charAt(i))
//                    && !Character.isLetter(password.charAt(i))
//                    && !Character.isWhitespace(password.charAt(i))) {
//                spChCount++;
//            }
//        }
//
//        // When there is no special character encountered
//        if (spChCount == 0)
//
//            // Display the print statement
//            System.out.println(
//                    "No Special Characters found.");
//        else
//
//            // Special character/s found then
//            // Display the print statement
//            System.out.println(
//                    "String has Special Characters\n" + spChCount + " "
//                            + "Special Characters found.");
//        **************

        int charCount = 0;
        int spCharCount = 0;
        int numCount = 0;
        for (int i = 0; i < password.length(); i++) {

            char ch = password.charAt(i);

            if (is_Numeric(ch)) numCount++;
            else if (is_Letter(ch)) charCount++;
            else if (!is_Letter(ch) && !is_Numeric(ch)) spCharCount++;
            else return false;
        }


        return (charCount >= 2 && numCount >= 1 && spCharCount >= 1);
    }

    public static boolean is_Letter(char ch) {
        ch = Character.toUpperCase(ch);
        return (ch >= 'A' && ch <= 'Z');
    }


    public static boolean is_Numeric(char ch) {
        return (ch >= '0' && ch <= '9');
    }

}

