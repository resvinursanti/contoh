<%-- 
    Document   : laporan
    Created on : Apr 21, 2018, 12:03:04 AM
    Author     : Evi
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
               
           
            String konek = "jdbc:oracle:thin:@localhost:1521:XE";
            String user = "system";
            String password = "12345";
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection(konek,"system","12345"); 
             File reportAll = new File(application.getRealPath("Angsuran.jasper"));
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportAll.getPath(),parameters,conn);
                
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0,bytes.length);
                outStream.flush();
                outStream.close();
            }
            catch(Exception e)
            {
                out.println("Gagal Menampilkan Data");
            }
             
        %>  
       
    </body>
</html>
