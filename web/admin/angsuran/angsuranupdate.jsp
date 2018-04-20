<%-- 
    Document   : angsuranupdate
    Created on : Apr 18, 2018, 4:52:39 PM
    Author     : Evi
--%>

<%@page import="entities.Angsuran"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Object datas = (Object) session.getAttribute("angsuranupdates");
            Angsuran c = (Angsuran) datas;
            %>
            <form action="prosesUpdateAngsuran" method="POST">
            <div>
                <label>ID Angsuran</label>
                <input type="text" name="idAngsuran" value="<%= c.getIdAngsuran() %>" readonly="true"/>
            </div>
            <div>
                <label>ID Gadai</label>
                <input type="text" name="idGadai" value="<%= c.getIdGadai()%>" readonly="true"/>
            </div>
            <div>
                <label>ID Customer</label>
                <input type="text" name="idCustomer" value="<%= c.getIdCustomer()%>" readonly="true"/>
            </div>
             <div>
                <label>Tanggal Angsuran</label>
                <input type="date" name="tanggalAngsuran" value="<%= c.getTanggalAngsuran()%>">
            </div>
             <div>
                <label>Jumlah Angsuran</label>
                <input type="text" name="jumlahAngsuran" value="<%= c.getJumlahAngsuran() %>">
            </div>
             <div>
                <label>Denda</label>
                <input type="text" name="denda" value="<%= c.getDenda() %>">
            </div>
            <div>
                <button type="submit" value="Update" class="btn btn-default">Update</button>
            </div>
        </form>
    </body>
</html>
