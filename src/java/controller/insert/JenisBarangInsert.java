/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.insert;

import dao.JenisBarangDAO;
import entities.JenisBarang;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "JenisBarangInsert", urlPatterns = {"/jenisBarangInsert"})
public class JenisBarangInsert extends HttpServlet {

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
        String id = request.getParameter("idJenisBarang");
        String nama = request.getParameter("namaJenis");
        String pesan = "gagal menambah data";
        JenisBarangDAO cdao = new JenisBarangDAO();
        RequestDispatcher dis = null;
        HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            JenisBarang jenisbarang = new JenisBarang(id);
            jenisbarang.setNamaJenisBarang(nama);
            if (cdao.insert(jenisbarang)) {
                pesan = "berhasil menambahkan data" + jenisbarang.getIdJenisBarang();
            }
            session.setAttribute("jenisbaranginsert", jenisbarang);
            session.setAttribute("pesan", pesan);
            out.println(pesan);
            dis = request.getRequestDispatcher("jenisbarangController");
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
        }
}


