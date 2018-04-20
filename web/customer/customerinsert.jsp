<%-- 
    Document   : customerinsert
    Created on : Apr 18, 2018, 8:48:59 AM
    Author     : TAMU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
 <script>  function lettersOnly(evt) {
                evt = (evt) ? evt : event;
                var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
                        ((evt.which) ? evt.which : 0));
                if (charCode > 31 && (charCode < 65 || charCode > 90) &&
                        (charCode < 97 || charCode > 122)) {
                    alert("Hanya Karakter tidak angka.");
                    return false;
                }
                return true;
            }

            function validateForm() {

                var z = document.forms["customerinsert"]["nomorKtp"].value;

                if (!/^[0-9]+$/.test(z)) {
                    alert("Hanya memasukan angka, tidak huruf!");
                    return false;
                }
            }
          </script>
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

                  

        <%
            String autoid = (String) session.getAttribute("autoID");
        %>
        
        <div class="container">
            <h2>Form Insert Customer</h2>
            <form action="customerInsert">
                <div class="form-group">
                    <label>ID Customer</label>
                    <input type="text" class="form-control" style="width:30%" name="idCustomer" value="<%= autoid%>" readonly="true">
                </div>
                <div class="form-group">
                    <label>Nomor KTP</label>
                    <input type="number"  required="" class="form-control" style="width:30%" name="nomorKtp" value="" onkeypress="validateForm()">
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <input type="text" class="form-control" style="width:30%" name="nama" value="">
                </div>
                <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <input type="text" class="form-control" style="width:30%" name="jenisKelamin" value="">
              
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" style="width:30%" name="password" value="">
                </div>
                <div class="form-group">
                    <label>Nomor Telepon</label>
                    <input type="text" class="form-control" style="width:30%" name="nomorTelepon" value="">
                </div>
                <div class="form-group">
                    <label>Pekerjaan</label>
                    <input type="text" class="form-control" style="width:30%" name="pekerjaan" value="">
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <input type="text" class="form-control" style="width:30%" name="alamat" value="">
                </div>

                <button type="submit" class="btn btn-default" value="Insert">Insert</button>
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
</html>
