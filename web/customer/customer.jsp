<%-- 
    Document   : Customer
    Created on : Apr 17, 2018, 8:58:18 PM
    Author     : TAMU
--%>

<%@page import="dao.CustomerDAO"%>
<%@page import="java.util.List"%>
<%@page import="entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Theme Made By www.w3schools.com - No Copyright -->
        <title>Bootstrap Theme Company Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <body>
        <br>
        <br>
        <br>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Content Header (Page header) -->

            <div class="box" >

                <div class="box-header">

                    <h2 class="box-title">
                        Data Customer</h2>

                </div>
                <br>
                <div class="text-right" style="padding-right: 10px">
                    <a href="customerAutoID" class="btn btn-sm btn-warning">Tambah Customer<i class="fa fa-arrow-circle-right"></i></a>

                </div>
                <br>

                <!-- /.box-header -->

                <div class="box-body">

                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>ID CUSTOMER</th>
                                <th>NOMOR KTP</th>
                                <th>NAMA CUSTOMER</th>
                                <th>JENIS KELAMIN</th>
                                <th>PASSWORD</th>
                                <th>NOMOR TELEPON</th>
                                <th>PEKERJAAN</th>
                                <th>ALAMAT</th>
                                <th>AKSI</th>
                            </tr>
                        </thead>

                        <%
                            List<Object> datas = new CustomerDAO().getAll();
                            //  List<Object> datas = (List<Object>) session.getAttribute("Customerrr");
                            int i = 1;
                            for (Object data : datas) {
                                Customer c = (Customer) data;
                        %>

                        <tr>
                            <td><%= i++%></td>
                            <td><%= c.getIdCustomer()%></td>
                            <td><%= c.getNomorKtp()%></td>
                            <td><%= c.getNamaCustomer()%></td>
                            <td><%= c.getJenisKelamin()%></td>
                            <td><%= c.getPassword()%></td>
                            <td><%= c.getNomorTelepon()%></td>
                            <td><%= c.getPekerjaan()%></td>
                            <td><%= c.getAlamat()%></td>
                            <td><a href="customerUpdate?id=<%= c.getIdCustomer()%>"><span class="glyphicon glyphicon-edit"></a></span>
                                <a href="customerDelete?id=<%= c.getIdCustomer()%>"><span class="glyphicon glyphicon-trash"></a><span</td>
                        </tr> 
                        <%
                            }
                        %>

                    </table>

                    <br>
                    <br>
                    <a href="customerAutoID">Tambah data</a>

                </div>

            </div>
        </div>

    </body>
</html>
