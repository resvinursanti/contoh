<%-- 
    Document   : angsuran
    Created on : Apr 18, 2018, 4:34:55 PM
    Author     : Evi
--%>

<%@page import="entities.Angsuran"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Theme Company Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .jumbotron {
                background-color: #f4511e;
                color: #fff;
                padding: 100px 25px;
            }
            .container-fluid {
                padding: 60px 50px;
            }
            .bg-grey {
                background-color: #f6f6f6;
            }
            .logo-small {
                color: #f4511e;
                font-size: 50px;
            }
            .logo {
                color: #f4511e;
                font-size: 200px;
            }
            .thumbnail {
                padding: 0 0 15px 0;
                border: none;
                border-radius: 0;
            }
            .thumbnail img {
                width: 100%;
                height: 100%;
                margin-bottom: 10px;
            }
            .carousel-control.right, .carousel-control.left {
                background-image: none;
                color: #f4511e;
            }
            .carousel-indicators li {
                border-color: #f4511e;
            }
            .carousel-indicators li.active {
                background-color: #f4511e;
            }
            .item h4 {
                font-size: 19px;
                line-height: 1.375em;
                font-weight: 400;
                font-style: italic;
                margin: 70px 0;
            }
            .item span {
                font-style: normal;
            }
            .panel {
                border: 1px solid #f4511e; 
                border-radius:0 !important;
                transition: box-shadow 0.5s;
            }
            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }
            .panel-footer .btn:hover {
                border: 1px solid #f4511e;
                background-color: #fff !important;
                color: #f4511e;
            }
            .panel-heading {
                color: #fff !important;
                background-color: #f4511e !important;
                padding: 25px;
                border-bottom: 1px solid transparent;
                border-top-left-radius: 0px;
                border-top-right-radius: 0px;
                border-bottom-left-radius: 0px;
                border-bottom-right-radius: 0px;
            }
            .navbar {
                margin-bottom: 0;
                background-color: #f4511e;
                z-index: 9999;
                border: 0;
                font-size: 12px !important;
                line-height: 1.42857143 !important;
                letter-spacing: 4px;
                border-radius: 0;
            }
            .navbar li a, .navbar .navbar-brand {
                color: #fff !important;
            }
            .navbar-nav li a:hover, .navbar-nav li.active a {
                color: #f4511e !important;
                background-color: #fff !important;
            }
            .navbar-default .navbar-toggle {
                border-color: transparent;
                color: #fff !important;
            }
            @media screen and (max-width: 768px) {
                .col-sm-4 {
                    text-align: center;
                    margin: 25px 0;
                }
            }
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
                text-align: center;


            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #4CAF50;
                color: white;
            }


        </style>
    </head>

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="index.html">Pegadaian</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li>  <a href="customerController">Customer</a></li>
                    <li>  <a href="gadaiController">Gadai</a></li>
                    <li>  <a href="jenisbarangController">Jenis Barang</a></li>
                    <li>  <a href="barangController">Barang</a></li>
                    <li>  <a href="angsuranController">Angsuran</a></li>
                    <li>  <a href="#">Login</a></li>
                </ul>
            </div>
        </div>
    </nav><br>
    <br>
    <br>
    <br>
    <body>
        <a href="angsuranAutoID">Tambah data Angsuran</a>
        <div class="content-wrapper" style="padding: 50px">

            <!-- Content Header (Page header) -->

            <div class="box" >

                <div class="box-header">

                    <h3 class="box-title">
                        Data Table With Full Features</h3>

                </div>


                <!-- /.box-header -->

                <div class="box-body">

                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>ID Angsuran</th>
                                <th>ID Gadai</th>
                                <th>ID Customer</th>
                                <th>Tanggal Angsuran</th>
                                <th>Jumlah Angsuran</th>
                                <th>Denda</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <%
                            // List<Object> datas = new JenisBarangDAO().getAll();
                            List<Object> datas = (List<Object>) session.getAttribute("Angsuran");
                            int i = 1;
                            for (Object data : datas) {
                                Angsuran c = (Angsuran) data;
                        %>

                        <tr>
                            <td><%= i++%></td>
                            <td><%= c.getIdAngsuran()%></td>
                            <td><%= c.getIdGadai()%></td>
                            <td><%= c.getIdCustomer()%></td>
                            <td><%= c.getTanggalAngsuran()%></td>
                            <td><%= c.getJumlahAngsuran()%></td>
                            <td><%= c.getDenda()%></td>
                            <td><a href="angsuranUpdate?id=<%= c.getIdAngsuran()%>">Update</a>
                                    </tr> 
                        <%
                            }
                        %>

                    </table>
                </div>
            </div>
        </div>

    </body>
</html>

