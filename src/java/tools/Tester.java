/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import dao.JenisBarangDAO;

/**
 *
 * @author Evi
 */
public class Tester {
    public static void main(String[] args) {
        System.out.println(new JenisBarangDAO().getById("J001"));
    }
}