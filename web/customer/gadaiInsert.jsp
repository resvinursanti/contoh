<%-- 
Document   : gadaiInsert
Created on : Apr 20, 2018, 2:21:34 PM
Author     : Evi
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entities.Barang"%>
<%@page import="dao.BarangDAO"%>
<%@page import="entities.Customer"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gadai Insert</title>
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
                    <span class="logo-lg"><b>Pegadaian</b></span>
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



                    <%
                        String autoid = (String) session.getAttribute("autoID");
                        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        Date now = new Date();
                        String tanggalPengajuan = dateFormat.format(now);
                        String tanggalditerima = dateFormat.format(now);
                     //   String jatuhtempo = dateFormat.format(now);
                        Calendar d = Calendar.getInstance();
                        d.setTime(now);
                        d.add(Calendar.YEAR, 0);
                        d.add(Calendar.MONTH, 3);
                        d.add(Calendar.DATE, 0); //same with c.add(Calendar.DAY_OF_MONTH, 1);
                        d.add(Calendar.HOUR, 0);
                        d.add(Calendar.MINUTE, 0);
                        d.add(Calendar.SECOND, 0);
                        Date nowPlusOne = d.getTime();
                        String jatuhtempo = dateFormat.format(nowPlusOne);
                        

//                        now.setDate(now.getDate()+15);
//                        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
//                        String formattedDate = sd.format(now);
//                        vars.put("date", formattedDate);

//                        String hitung = hitung * 86400;
//                        hasiljumlah = tanggalditerima + hitung
                    %>
                    <div class="container">
                        <h2>Form Insert Gadai</h2>
                        <form action="gadaiInsert">
                            <div>
                                <label>ID Gadai</label>
                                <%if (autoid.equals("gad")) {
                                %> <input type="text" name="idGadai"  class="form-control" style="width:30%" value="<%= autoid%>01" readonly="true"/> <%
                                } else {
                                %> <input  type = "text" name = "idGadai" value =
                                        "<%= autoid%>" readonly="true" class="form-control" style="width:30%"/> <%

                                            }
                                %>
                            </div>
                            <div>
                                <label>ID Customer</label>
                                <select name="idCustomer"  class="form-control" style="width:30%">
                                    <% List<Object> datar = new CustomerDAO().getAll();
                                        for (Object data : datar) {
                                            Customer c = (Customer) data;%>
                                    <option value="<%=c.getIdCustomer()%>"><%=c.getIdCustomer()%>-<%=c.getNamaCustomer()%></option>
                                    <%
                                        }
                                    %>
                                </select>

                            </div>

                            <div>
                                <label>ID Barang</label>
                                <select name="idBarang"  class="form-control" style="width:30%">
                                    <% List<Object> datars = new BarangDAO().getAll();
                                        for (Object data : datars) {
                                            Barang c = (Barang) data;%>
                                    <option value="<%=c.getIdBarang()%>"><%=c.getNamaBarang()%></option>
                                    <%
                                        }
                                    %>
                                </select>

                            </div>   

                            <div>
                                <label>Jumlah Pinjaman</label>
                                <input type="number" name="jumlahPinjaman" value="" class="form-control" style="width:30%">
                            </div>

                            <div>
                                <label>Tanggal Pengajuan</label>
                                <input type="date" name="tanggalPengajuan" value="<%= tanggalPengajuan%>" class="form-control" style="width:30%">
                            </div>
<!--                            <div>
                                <label>Tanggal diterima</label>
                                <input type="date" name="tanggalditerima" value="<%= tanggalditerima%>"  class="form-control" style="width:30%">
                            </div>-->
                           
                            <div>
                                <label>Jatuh Tempo</label>
                                <input type="date" name="jatuhTempo" value="<%= jatuhtempo%>" class="form-control" style="width:30%">
                            </div>
                            <div>
                                <label>Keterangan</label>
                                <input type="text" name="keterangan" value="" class="form-control" style="width:30%">
                            </div>


                            <br>

                            <div>
                                <button type="submit"  class="btn btn-default" value="Insert">Insert</button>
                            </div>
                        </form>
                    </div>
            </div>
        </section>
    </div>


    <br>

    <script src="bootstrap/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="bootstrap/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="bootstrap/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="bootstrap/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="bootstrap/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="bootstrap/dist/js/demo.js"></script>


</body>
