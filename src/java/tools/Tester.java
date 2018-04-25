/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Evi
 */
public class Tester {

    public static void main(String[] args) {
//        System.out.println(new JenisBarangDAO().getById("J001"));

//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-dd-MM");
//        SimpleDateFormat formater = new SimpleDateFormat("E MM/dd/yyyy");
//        String dateInString = "2018-01-04";
//
//        try {
//
//            Date date = formatter.parse(dateInString);
//            System.out.println(date);
//            System.out.println(formater.format(date));
//
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
                        Date today = new Date("12/31/2015");
                        Date tomorrow = new Date(today.toString());
                        tomorrow.setDate(today.getDate()+1);
                        System.out.println(tomorrow.toLocaleString());
    }
}
