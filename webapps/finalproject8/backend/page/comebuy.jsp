<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team8"/>
  <jsp:setProperty property="user" name="database" value="team8"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!"/>
</jsp:useBean>
<%
  database.connectDB();
  request.setCharacterEncoding("UTF-8");
  String p_name = request.getParameter("name");
  String p_id = request.getParameter("id");
  String p_price = request.getParameter("price");
  String p_image = request.getParameter("image");
  if (p_name != null && p_price != null && p_image != null ){
    database.connectDB();
    database.editData(p_id,p_name,p_price,p_image);
  }
  database.query("select * from drink where sid=3");
  ResultSet rs = database.getRS();
  database.CloseDb();
%>
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
                        <h4 class="page-title">飲料管理</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">後台管理系統</a></li>
                            <li class="active">飲料管理</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">飲料表單</h3>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">
                              新增資料
                            </button>
                             <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>名稱</th>
                                            <th>價錢</th>
                                            <th>圖片</th>
                                            <th>修改資料</th>
                                            <th>刪除資料</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <%
                                        if (rs != null){
                                          while(rs.next()){
                                            String id = rs.getString("id");
                                            String name = rs.getString("name");
                                            String price = rs.getString("price");
                                            String image = rs.getString("image");
                                      %>
                                        <tr>
                                          <form id = "form<%=id%>" action="edit.jsp" method="POST">
                                            <td><%=id%></td>
                                            <td id = "name<%=id%>"><%=name%></td>
                                            <td id = "price<%=id%>"><%=price%></td>
                                            <td id = "image<%=id%>"><img id = "imageURL<%=id%>" src="<%=image%>" width=50></td>
                                            <td>
                                              <button type = "button" id = "edit<%=id%>" type="button" class="btn btn-primary">修改</button>
                                            </td>
                                            <td>
                                              <button id = "delete<%=id%>" type="button" class="btn btn-danger">刪除</button>
                                            </td>
                                          </form>
                                        </tr>
                                      <% }} %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" style="display: none;">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                <h4 class="modal-title" id="exampleModalLabel1">新增飲料資料</h4> </div>
                            <div class="modal-body">
                                <form action="new.jsp" method="post">
                                  <div class="form-group">
                                    <label for="name" class="control-label">名稱</label>
                                    <input type="text" class="form-control" name="name">
                                  </div>
                                  <div class="form-group">
                                      <label for="price" class="control-label">價錢</label>
                                      <input type="text" class="form-control" name="price">
                                  </div>
                                  <div class="form-group">
                                      <label for="image" class="control-label">圖片連結</label>
                                      <textarea class="form-control" name = "image"></textarea>
                                  </div>
                                  <input type="text" class="form-control" name="sid" value="3" readonly="readonly">
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
                                    <input type="submit" class="btn btn-primary" value="新增飲料">
                                  </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
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
    <script>
    $(document).ready(function(){
      $("button").on("click",function(){
        switch($(this).text()){
          case "修改":
            var id = $(this).attr("id").split("edit")[1];
            $("#name" + id).html('<input type="text" name="name" id = "input_name' + id + '"value="' + $("#name" + id).text() + '" />');
            $("#price" + id).html('<input type="text" name="price" id = "input_price' + id + '"value="' + $("#price" + id).text() + '" />');
            $("#image" + id).html('<input type="text" name="image" id = "input_image' + id + '"value="' + $("#imageURL" + id).attr("src") + '" />');
            $(this).attr("id","storeEdit" + id);
            $(this).html("儲存");
            $("#delete" + id).html("取消")
            $("#delete" + id).attr("id","cancel" + id)
          break;
          case "儲存":
            var id = $(this).attr("id").split("storeEdit")[1];
            var name = $("#input_name" + id).val();
            var price = $("#input_price" + id).val();
            var image= $("#input_image" + id).val();
            var id_input = $("<input>").attr("type", "hidden").attr("name", "id").val(id);
            $("#form" + id).attr("action","comebuy.jsp");
            $("#form" + id).append(id_input);
            $("#form" + id).append($("#input_name" + id));
            $("#form" + id).append($("#input_price" + id));
            $("#form" + id).append($("#input_image" + id));
            $("#form" + id).submit();
          break;
          case "取消":
            var id = $(this).attr("id").split("cancel")[1];
            $("#name" + id).html($("#input_name" + id).val());
            $("#price" + id).html($("#input_price" + id).val());
            $("#image" + id).html('<a href="' + $("#input_image" + id).val() + '">連結</a>');
            $("#storeEdit" + id).html("修改");
            $(this).attr("id","delete" + id);
            $(this).html("刪除");
            $("#storeEdit" + id).attr("id","edit" + id);
          break;
          case "刪除":
              var id = $(this).attr("id").split("delete")[1];
              var id_input = $("<input>").attr("type", "hidden").attr("name", "id").val(id);
              var name_input = $("<input>").attr("type", "hidden").attr("name", "name").val($("#name" + id).text());
              var id_image = $("<input>").attr("type", "hidden").attr("name", "image").val($("#image" + id).text());
              var id_price = $("<input>").attr("type", "hidden").attr("name", "price").val($("#price" + id).text());
              $("#form" + id).attr("action","delete.jsp");
              $("#form" + id).append(id_input);
              $("#form" + id).append(name_input);
              $("#form" + id).append(id_image);
              $("#form" + id).append(id_price);
              $("#form" + id).submit();
          break;
          default:
        }
      });
    });
    </script>

</body>

</html>
