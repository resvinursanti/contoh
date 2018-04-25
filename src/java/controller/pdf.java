/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import dao.GadaiDAO;
import entities.Barang;
import entities.Customer;
import entities.Gadai;
import java.io.IOException;
import java.io.OutputStream;

import java.util.List;
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
@WebServlet(name = "pdf", urlPatterns = {"/pdf"})
public class pdf extends HttpServlet {

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
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        String id = request.getParameter("id");
        RequestDispatcher dispatcher = null;
        try {
            try {
                HttpSession session = request.getSession(true);
                try {
                    Document document = new Document();
                    PdfWriter.getInstance(document, out);

                    document.open();

                    Paragraph par1 = new Paragraph();
                    Font fo = new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD, BaseColor.BLUE);
                    par1.add(new Phrase("Report Data Gadai", fo));
                    par1.setAlignment(Element.ALIGN_CENTER);
                    par1.add(new Phrase(Chunk.NEWLINE));
                    par1.add(new Phrase(Chunk.NEWLINE));
                    document.add(par1);

                    Image img = Image.getInstance("C:\\Users\\Evi\\Pictures\\unnamed.png");
                    img.setAlignment(Element.ALIGN_CENTER);
                    img.scaleToFit(100, 100);
                    document.add(img);

                    PdfPTable tbl = new PdfPTable(6);
                    PdfPCell cel0 = new PdfPCell(new Paragraph("No", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
//                    PdfPCell cel1 = new PdfPCell(new Paragraph("Id Cust", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    PdfPCell cel2 = new PdfPCell(new Paragraph("Id Gadai", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
//                    PdfPCell cel3 = new PdfPCell(new Paragraph("Id Barang", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    //            PdfPCell cel4 = new PdfPCell(new Paragraph("Nama Customer", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    PdfPCell cel5 = new PdfPCell(new Paragraph("Jumlah Pinjaman", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    PdfPCell cel6 = new PdfPCell(new Paragraph("Tanggal Diterima", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    PdfPCell cel7 = new PdfPCell(new Paragraph("Jatuh Tempo", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));
                    PdfPCell cel8 = new PdfPCell(new Paragraph("Sisa", FontFactory.getFont("Arial", 8, Font.BOLD, BaseColor.BLACK)));

                    tbl.addCell(cel0);
//                   tbl.addCell(cel1);
                    tbl.addCell(cel2);
//                    tbl.addCell(cel3);
                    //                tbl.addCell(cel4);
                    tbl.addCell(cel5);
                    tbl.addCell(cel6);
                    tbl.addCell(cel7);
                    tbl.addCell(cel8);

                    //   List<Object> datas = new GadaiDAO().getAll();
                    List<Object> datas = (List<Object>) session.getAttribute("gadaii");

                    int i = 1;
                    for (Object data : datas) {
                        Gadai gd = (Gadai) data;
                        //    System.out.println(new Customer(gd.getIdCustomer()+""));

                        //          Customer idcustomer = new Customer(gd.getIdCustomer().getIdCustomer());
//                        Barang idbarang = new Barang(gd.getIdBarang()+"");
                        //                      Customer nama = new Customer(gd.getIdCustomer().getNamaCustomer());
                        PdfPCell cel01 = new PdfPCell(new Paragraph("" +i+ "", FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
//                      PdfPCell cel11 = new PdfPCell(new Paragraph(gd.getIdCustomer().toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                        PdfPCell cel21 = new PdfPCell(new Paragraph(gd.getIdGadai(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
////                    PdfPCell cel31 = new PdfPCell(new Paragraph(idbarang.toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                     // PdfPCell cel41 = new PdfPCell(new Paragraph(gd.getIdCustomer().getNamaCustomer(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                        PdfPCell cel51 = new PdfPCell(new Paragraph(gd.getJumlahPinjaman().toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                        PdfPCell cel61 = new PdfPCell(new Paragraph(gd.getTanggalDiterima().toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                        PdfPCell cel71 = new PdfPCell(new Paragraph(gd.getJatuhTempo().toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
                        PdfPCell cel81 = new PdfPCell(new Paragraph(gd.getSisa().toString(), FontFactory.getFont("Arial", 7, Font.NORMAL, BaseColor.BLACK)));
//
                        tbl.addCell(cel01);
//                        tbl.addCell(cel11);
                        tbl.addCell(cel21);
////                        tbl.addCell(cel31);
                        //  tbl.addCell(cel41);
                        tbl.addCell(cel51);
                        tbl.addCell(cel61);
                        tbl.addCell(cel71);
                        tbl.addCell(cel81);
                        i++;
                    }

                    document.add(tbl);
                    document.close();
                } catch (Exception ex) {
                    ex.getMessage();
                }
            } catch (Exception e) {
                e.getMessage();
            }
        } finally {
            out.close();
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
