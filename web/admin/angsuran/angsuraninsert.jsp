<%-- 
    Document   : angsuraninsert
    Created on : Apr 18, 2018, 4:49:39 PM
    Author     : Evi
--%>

<%@page import="entities.Gadai"%>
<%@page import="dao.GadaiDAO"%>
<%@page import="entities.Customer"%>
<%@page import="java.util.List"%>
<%@page import="dao.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 3px solid #ccc;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
        }

        input[type=text]:focus {
            border: 3px solid #555;
        }

    </style>
</head>
<body>
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
                    <li>      <a href="gadaiController">Gadai</a></li>
                    <li>     <a href="jenisbarangController">Jenis Barang</a></li>
                    <li>      <a href="barangController">Barang</a></li>
                    <li>      <a href="angsuranController">Angsuran</a></li>
                    <li>      <a href="#" style="float:right">Login</a></li>
                </ul>
            </div>
        </div>
    </nav><br>
    <br>
    <br>
        <%
            String autoid = (String) session.getAttribute("autoID");
        %>
         <div class="container">
             <h2>Form Angsuran Gadai</h2>
        <form action="angsuranInsert">
            <div>
                <label>ID Angsuran</label>
                
                <%if (autoid.equals("ang")) {
                %> <input type="text" name="idAngsuran" value="<%= autoid%>01" readonly="true"/> <%
                } else {
                %> <input  type ="text" name ="idAngsuran" value="<%= autoid%>" readonly="true" /><%
               }
                %>
            </div>
            <div>
                <label>ID Gadai</label>
                <select name="idGadai"  class="form-control" style="width:30%">
                    <% List<Object> datas = new GadaiDAO().getAll();
                        for (Object data : datas) {
                            Gadai g = (Gadai) data;%>
                    <option><%=g.getIdGadai()%></option>
                    <%
                        }
                    %>
                </select>
            </div>
            <div>
                <label>ID Customer</label>
                <select name="idCustomer"  class="form-control" style="width:30%">
                    <% List<Object> datar = new CustomerDAO().getAll();
                        for (Object data : datar) {
                            Customer c = (Customer) data;%>
                    <option><%=c.getIdCustomer()%></option>
                    <%
                        }
                    %>
                </select>
            </div>
            <div>
                <label>Tanggal Angsuran</label>
                <input type="date" name="tanggalAngsuran" value=""  class="form-control" style="width:30%">
            </div>
            <div>
                <label>Jumlah Angsuran</label>
                <input type="text" name="jumlahAngsuran" value=""  class="form-control" style="width:30%">
            </div>
            <div>
                <label>Denda</label>
                <input type="text" name="denda" value=""  class="form-control" style="width:30%">
            </div>
            <div>
                <button type="submit" class="btn btn-default" value="Insert">Insert</button>
            </div>
        </form>
    </body>
</html>
