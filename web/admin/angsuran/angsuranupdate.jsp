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
      <title>Angsuran Update</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bootstrap/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bootstrap/bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bootstrap/bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="bootstrap/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="bootstrap/dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-green fixed sidebar-mini">
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
                         <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-archive-o"></i> <span>Laporan</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                             <ul class="treeview-menu">
                                <li><a href="laporan/laporanparameter.jsp"><i class="fa fa-file"></i> Laporan dengan ID Gadai</a></li>
                                <li><a href="laporan/angsuran.jsp"><i class="fa fa-file"></i> Laporan Angsuran Perbulan</a></li>
                                <li><a href="laporan/parametercust.jsp"><i class="fa fa-file"></i> Laporan Gadai Customer</a></li>
                              <li><a href="laporan/parameterperiode.jsp"><i class="fa fa-file"></i> Laporan Angsuran Per-Periode</a></li>
                           
                             </ul>
                        </li>
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
 <div class="container">
      <h2>Form Update Angsuran</h2>

        <%
            Object datas = (Object) session.getAttribute("angsuranupdates");
            Angsuran c = (Angsuran) datas;
            %>
            <form action="prosesUpdateAngsuran" method="POST">
            <div>
                <label>ID Angsuran</label>
                <input type="text" name="idAngsuran" value="<%= c.getIdAngsuran() %>"  class="form-control" style="width:30%" readonly="true"/>
            </div>
            <div>
                <label>ID Gadai</label>
                <input type="text" name="idGadai" value="<%= c.getIdGadai()%>"  class="form-control" style="width:30%" readonly="true"/>
            </div>
            <div>
                <label>ID Customer</label>
                <input type="text" name="idCustomer" value="<%= c.getIdCustomer()%>"  class="form-control" style="width:30%" readonly="true"/>
            </div>
             <div>
                <label>Tanggal Angsuran</label>
                <input type="date" name="tanggalAngsuran"   class="form-control" style="width:30%" value="<%= c.getTanggalAngsuran()%> ">
            </div>
             <div>
                <label>Jumlah Angsuran</label>
                <input type="text" name="jumlahAngsuran"  class="form-control" style="width:30%" value="<%= c.getJumlahAngsuran() %>">
            </div>
             <div>
                <label>Denda</label>
                <input type="text" name="denda"  class="form-control" style="width:30%" value="<%= c.getDenda() %>">
            </div>
            <br>
            <div>
                <button type="submit" value="Update" class="btn btn-default">Update</button>
            </div>
        </form>
    </body>
</html>
