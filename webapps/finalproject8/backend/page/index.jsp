<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="zh-hant">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>管理後台</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <!-- Semantic UI CSS -->
    <link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    <div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="index.jsp"></a>
                    <h style="font-size:25px;">
                      <i class="shop icon"></i>後台管理</h>
                </div>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="starbucks.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="coffee icon" aria-hidden="true"></i>星巴克管理</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="50.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="coffee icon" aria-hidden="true"></i>50嵐管理</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="comebuy.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="coffee icon" aria-hidden="true"></i>comebuy管理</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="order.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="euro icon" aria-hidden="true"></i>訂單管理</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="chart.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="pie chart icon" aria-hidden="true"></i>銷售額</a>
                    </li>
                    <li style="padding: 70px 0 0;">
                        <a href="member.jsp" class="item" style="font-size:17px; font-family:Microsoft JhengHei; color: black">
                          <i class="users icon" aria-hidden="true"></i>會員管理</a>
                    </li>
                  </ul>
                <%-- <div class="center p-20">
                     <a href="https://wrappixel.com/templates/ampleadmin/" target="_blank" class="btn btn-danger btn-block waves-effect waves-light">Upgrade to Pro</a>
                 </div> --%>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">後台管理</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">後台管理系統</a></li>
                            <li class="active">管理介面</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

              <img src="final/pic5.jpg" width="1400" height="360">
                  <hr>
                <div class="row">
                <div class="col-sm-4">
                  <a href="#demo" data-toggle="collapse">
                    <img src="final/pic4.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
                  </a>
                  <div id="demo" class="collapse">
                    <p>Coffee</p>
                  </div>
                </div>
                <div class="col-sm-4">
                  <a href="#demo2" data-toggle="collapse">
                    <img src="final/pic2.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
                  </a>
                  <div id="demo2" class="collapse">
                    <p>Tea</p>
                  </div>
                </div>
                <div class="col-sm-4">
                  <a href="#demo3" data-toggle="collapse">
                    <img src="final/pic3.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
                  </a>
                  <div id="demo3" class="collapse">
                    <p>Juice</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.container-fluid -->

              <footer class="footer text-center"> 2017 &copy; 君君還在製作中</footer>
        </div>
        <!-- /#page-wrapper -->
    </div>

    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>


</body>

</html>
