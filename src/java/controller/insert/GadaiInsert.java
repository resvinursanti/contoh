/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.insert;

import dao.GadaiDAO;
import entities.Barang;
import entities.Customer;
import entities.Gadai;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Evi
 */
@WebServlet(name = "GadaiInsert", urlPatterns = {"/gadaiInsert"})
public class GadaiInsert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("idGadai");
        String idcust = request.getParameter("idCustomer");
        String idbrg = request.getParameter("idBarang");
        String jmlpinjaman = request.getParameter("jumlahPinjaman");
        String tglpengajuan = request.getParameter("tanggalPengajuan");
        String tglditerima = request.getParameter("tanggalditerima");
        String jthtempo = request.getParameter("jatuhTempo");
        String sisa = request.getParameter("sisa");
        String status = request.getParameter("status");
        RequestDispatcher dis = null;
        String pesan = "gagal menambah data";
        GadaiDAO cdao = new GadaiDAO();
        HttpSession session = request.getSession();
        Date date1 = null;
        try {
            date1 = new SimpleDateFormat("yyyy-mm-dd").parse(tglpengajuan);
        } catch (ParseException ex) {
            
        }
        Date date2 = null;
        try
        {
            date2 = new SimpleDateFormat("yyyy-mm-dd").parse(tglditerima);
        }catch (ParseException ex) {
        }
        Date date3 = null;
        try{
            date3 = new SimpleDateFormat("yyyy-mm-dd").parse(jthtempo);
        }catch (ParseException ex){
            
        }
        try (PrintWriter out = response.getWriter()) {
            Gadai ang = new Gadai(id);
            ang.setIdCustomer(new Customer(idcust));
            ang.setIdBarang(new Barang (idbrg));
            ang.setJumlahPinjaman(Long.parseLong(jmlpinjaman));
            ang.setTanggalPinjaman(date1);
            ang.setTanggalDiterima(date2);
            ang.setJatuhTempo(date3);
            ang.setSisa(Long.parseLong(sisa));
            ang.setStatus(status);
            if (cdao.update(ang)) {
                pesan = "berhasil menambahkan data" + ang.getIdGadai();
            }
            session.setAttribute("gadaiInsert", ang);
            session.setAttribute("pesan", pesan);
            dis = request.getRequestDispatcher("gadaiController");
            dis.include(request, response);
        }
    }



// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
