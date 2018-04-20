<%-- 
    Document   : gadai
    Created on : Apr 17, 2018, 10:03:30 PM
    Author     : TAMU
--%>

<%@page import="dao.GadaiDAO"%>
<%@page import="entities.Gadai"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <!-- Theme Made By www.w3schools.com - No Copyright -->
        <title>Bootstrap Theme Company Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <body class="hold-transition skin-blue fixed sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="../../index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>A</b>LT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Pegadaian</b> Admin</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">

                                <ul class="dropdown-menu">

                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li><!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">

                                                    </div>


                                                </a>
                                            </li>
                                            <!-- end message -->
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->

                            <ul class="dropdown-menu">

                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                    </ul>
                                </li>

                            </ul>
                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->
                            <li class="dropdown tasks-menu">
                                </a>
                            </li>
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                    <span class="hidden-xs">Admin</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            Admin
                                            <small></small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                        </ul>
                    </div>
                </nav>
            </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                        </div>

                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                       
                        <li><a href=#><i class="fa fa-circle"></i>Dashboard</a></li>
                        <li><a href="customerController"><i class="fa fa-user"></i>Data Customer</a></li>
                        <li><a href="barangController"><i class="fa fa-file-o"></i>Data Barang</a></li>
                        <li><a href="jenisbarangController"><i class="fa fa-file-o"></i>Data Jenis Barang</a></li>
                        <li><a href="gadaiController"><i class="fa fa-file-o"></i>Data Gadai Barang</a></li>
                        <li><a href="angsuranController"><i class="fa fa-money"></i>Data Angsuran </a></li>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->

                <!-- Main content -->
                <section class="content">       
                    <!-- Content Header (Page header) -->

            <div class="box" >

                <div class="box-header">

                    <h3 class="box-title">
                       Data Gadai </h3>

                </div>

                <br>
                        <div class="text-right" style="padding-right: 10px">
                            <a href="gadaiAutoID" class="btn btn-sm btn-warning">Tambah Gadai<i class="fa fa-arrow-circle-right"></i></a>

                        </div>
                        <br>
                <!-- /.box-header -->

                <div class="box-body">

                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
     
                            <tr>
                                <th>NO</th>
                                <th>ID GADAI</th>
                                <th>ID CUSTOMER</th>
                                <th>ID BARANG</th>
                                <th>JUMLAH PINJAMAN</th>
                                <th>TANGGAL PENGAJUAN</th>
                                <th>TANGGAL DITERIMA</th>
                                <th>JATUH TEMPO</th>
                                <th>SISA</th>
                                <th>STATUS</th>
                                <th>AKSI</th>
                            </tr>
                        </thead>
                   

                            <%
                                List<Object> data2 = new GadaiDAO().getAll();
                                // List<Object> datas = (List<Object>) session.getAttribute("gadaii");
                                int j = 1;
                                for (Object data : data2) {
                                    Gadai g = (Gadai) data;
                            %>

                            <tr>
                                <td><%= j++%></td>
                                <td><%= g.getIdGadai()%></td>
                                <td><%= g.getIdCustomer()%></td>
                                <td><%= g.getIdBarang()%></td>
                                <td><%= g.getJumlahPinjaman()%></td>
                                <td><%= g.getTanggalPinjaman()%></td>
                                <td><%= g.getTanggalDiterima()%>
                                <td><%= g.getJatuhTempo()%></td>
                                <td><%= g.getSisa()%></td>
                                <td><%= g.getStatus()%></td>
                                <td><a href="gadaiUpdate?id=<%= g.getIdGadai()%>"><span class="glyphicon glyphicon-edit"></span></a>
                                    <a href="gadaiDelete?id=<%= g.getIdGadai()%>"onclick="return confirm('Apakah yakin akan menghapus data?')"><span class="glyphicon glyphicon-trash"></span></a></td>
                            </tr> 
                            <%
                                }
                            %>
                      
                    </table>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
