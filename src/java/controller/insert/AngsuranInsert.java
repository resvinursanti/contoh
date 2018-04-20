/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.insert;

import dao.AngsuranDAO;
import entities.Angsuran;
import entities.Customer;
import entities.Gadai;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "AngsuranInsert", urlPatterns = {"/angsuranInsert"})
public class AngsuranInsert extends HttpServlet {

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
        String id = request.getParameter("idAngsuran");
        String idgadai = request.getParameter("idGadai");
        String idcust = request.getParameter("idCustomer");
        String tglangsuran = request.getParameter("tanggalAngsuran");
        String jmlangsuran = request.getParameter("jumlahAngsuran");
        String denda = request.getParameter("denda");
        RequestDispatcher dis = null;
        String pesan = "gagal menambah data";
        AngsuranDAO cdao = new AngsuranDAO();
        HttpSession session = request.getSession();
        Date date1 = null;
        try {
            date1 = new SimpleDateFormat("yyyy-mm-dd").parse(tglangsuran);
        } catch (ParseException ex) {
            
        }
        try (PrintWriter out = response.getWriter()) {
            Angsuran ang = new Angsuran(id);
            ang.setIdGadai(new Gadai(idgadai));
            ang.setIdCustomer(new Customer(idcust));
            ang.setTanggalAngsuran(date1);
            ang.setJumlahAngsuran(Long.parseLong(jmlangsuran));
            ang.setDenda(Long.parseLong(denda));
            if (cdao.update(ang)) {
                pesan = "berhasil menambahkan data" + ang.getIdAngsuran();
            }
            session.setAttribute("angsuraninsert", ang);
            session.setAttribute("pesan", pesan);
            dis = request.getRequestDispatcher("angsuranController");
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
