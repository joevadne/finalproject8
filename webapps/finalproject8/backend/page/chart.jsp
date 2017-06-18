<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team8"/>
  <jsp:setProperty property="user" name="database" value="team8"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!"/>
</jsp:useBean>
<jsp:useBean id="database2" class="com.database.Database2">
  <jsp:setProperty property="ip" name="database2" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database2" value="3306"/>
  <jsp:setProperty property="db" name="database2" value="team8"/>
  <jsp:setProperty property="user" name="database2" value="team8"/>
  <jsp:setProperty property="password" name="database2" value="NCHUTeam8!"/>
</jsp:useBean>
<jsp:useBean id="database3" class="com.database.Database3">
  <jsp:setProperty property="ip" name="database3" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database3" value="3306"/>
  <jsp:setProperty property="db" name="database3" value="team8"/>
  <jsp:setProperty property="user" name="database3" value="team8"/>
  <jsp:setProperty property="password" name="database3" value="NCHUTeam8!"/>
</jsp:useBean>
<jsp:useBean id="database4" class="com.database.Database4">
  <jsp:setProperty property="ip" name="database4" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database4" value="3306"/>
  <jsp:setProperty property="db" name="database4" value="team8"/>
  <jsp:setProperty property="user" name="database4" value="team8"/>
  <jsp:setProperty property="password" name="database4" value="NCHUTeam8!"/>
</jsp:useBean>
<jsp:useBean id="database5" class="com.database.Database5">
  <jsp:setProperty property="ip" name="database5" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database5" value="3306"/>
  <jsp:setProperty property="db" name="database5" value="team8"/>
  <jsp:setProperty property="user" name="database5" value="team8"/>
  <jsp:setProperty property="password" name="database5" value="NCHUTeam8!"/>
</jsp:useBean>
<%
  database.connectDB();
  request.setCharacterEncoding("UTF-8");
  database.query("select * from drink ");
  ResultSet rs = database.getRS();
  database2.connectDB();
  database2.query("select * from mycart");
  ResultSet rs2 = database2.getRS();
  database3.connectDB();
  database3.query("select SUM(quantity) AS orders_num from mycart");
  ResultSet rs3 = database3.getRS();
  database4.connectDB();
  database4.query("SELECT SUM(drink.price*mycart.quantity) AS income FROM `mycart` JOIN `drink` on mycart.p_id = drink.id");
  ResultSet rs4 = database4.getRS();
  database5.connectDB();
  database5.query(" SELECT drink.name, SUM(mycart.quantity) AS numbers , SUM(drink.price*mycart.quantity) AS income FROM `mycart` LEFT JOIN `drink` ON mycart.p_id = drink.id GROUP BY p_id ORDER BY SUM(mycart.quantity) DESC LIMIT 3");
  ResultSet rs5 = database5.getRS();
  database.CloseDb();
  database2.CloseDb();
  database3.CloseDb();
  database4.CloseDb();
  database5.CloseDb();
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
                        <h4 class="page-title">後台管理</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">後台管理系統</a></li>
                            <li class="active">管理介面</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->

                    <%
                    int count=0;
                    int orders=0;
                    if(rs !=null){
                      while(rs.next()){
                        count++;
                      }
                    }
                    if(rs2 !=null){
                      while(rs2.next()){
                        orders++;
                      }
                   }
                   int num=0;
                    if(rs3 !=null){
                      while(rs3.next()){
                    num+=rs3.getInt("orders_num");
                      }
                    }

                    int incomes=0;
                     if(rs4 !=null){
                       while(rs4.next()){
                     incomes+=rs4.getInt("income");
                       }
                     }
                     %>

                      <div class="row" style="height: 20px;"></div>

                      <div class="ui five column grid">
                        <div class="four wide column">
                               <div class="ui card statistic">
                                   <div class="ui divider"></div>
                                   <div class="value" id="products_number">
                                     <%=count%>
                                   </div>
                                   <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                                       產品項數
                                   </div>
                                   <div class="ui divider"></div>
                               </div>
                           </div>
                           <div class="four wide column">
                               <div class="ui card statistic">
                                   <div class="ui divider"></div>
                                   <div class="value" id="sales_number">
                                     <%=num%>
                                   </div>
                                   <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                                       產品售量
                                   </div>
                                   <div class="ui divider"></div>
                               </div>
                           </div>
                           <div class="four wide column">
                               <div class="ui card statistic">
                                   <div class="ui divider"></div>
                                   <div class="value" id="income_number">
                                     <%=incomes%>
                                   </div>
                                   <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                                       收入金額
                                   </div>
                                   <div class="ui divider"></div>
                               </div>
                           </div>
                           <div class="four wide column">
                               <div class="ui card statistic">
                                   <div class="ui divider"></div>
                                   <div class="value" id="transaction_number">
                                        <%=orders%>
                                   </div>
                                   <div class="label" style="font-size:17px; font-family:Microsoft JhengHei;">
                                       交易次數
                                   </div>
                                   <div class="ui divider"></div>
                               </div>
                           </div>
                      </div>

                      <div class="row" style="height: 20px;"></div>

                      <div class="eight wide column">
                          <div class="ui card" style="width: 100%; height: 100%">
                              <div class="ui divider"></div>
                              <div class="content">
                                <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                                  <%-- <canvas id="myChart" style="width: 40%;height: 40%"></canvas> --%>
                              </div>
                              <div class="row center aligned centered">
                                  <div class="label" style="font-size:20px; font-family:Microsoft JhengHei; color: #000;"><b>
                                        預期成長率
                                  </b></div>
                              </div>

                              <div class="ui divider"></div>
                            </div>

                      </div>

                      <div class="row" style="height: 20px;"></div>

                      <div class="sixteen wide column">
                          <div class="ui card" style="width: 100%;">

                              <table class="ui celled table">
                                    <thead>
                                    <tr>
                                        <th>產品名稱</th>
                                        <th>售出總數量</th>
                                        <th>售出總金額</th>
                                    </tr>
                                    </thead>

                                  <%  int numbers=0;
                                    int in=0;
                                     if(rs5 !=null){
                                       while(rs5.next()){
                                      numbers=rs5.getInt("numbers");
                                      in=rs5.getInt("income");
                                      String names=rs5.getString("name");
                                      %>
                                          <tbody id = "top">
                                          <tr>
                                          <td><%=names%></td>
                                          <td><%=numbers%></td>
                                          <td><%=in%></td>
                                          </tr>


                                    </tbody>
                                    <% }} %>
                                </table>
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
    <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    <script type="text/javascript">
      window.onload = function () {
        var chart = new CanvasJS.Chart("chartContainer",
        {
          title:{
            text: "The Sales(Revenue) Growth Rate",
            fontFamily: "arial black",
            fontColor: "#695A42"

          },
         animationEnabled: true,
          toolTip: {
            shared: true,
            content: function(e){
              var str = '';
              var total = 0 ;
              var str3;
              var str2 ;
              for (var i = 0; i < e.entries.length; i++){
                var  str1 = "<span style= 'color:"+e.entries[i].dataSeries.color + "'> " + e.entries[i].dataSeries.name + "</span>: $<strong>"+  e.entries[i].dataPoint.y + "</strong>  bn<br/>" ;
                total = e.entries[i].dataPoint.y + total;
                str = str.concat(str1);
              }
              str2 = "<span style = 'color:DodgerBlue; '><strong>"+ (e.entries[0].dataPoint.x).getFullYear() + "</strong></span><br/>";
              total = Math.round(total*100)/100
              str3 = "<span style = 'color:Tomato '>Total:</span><strong> $" + total + "</strong> bn<br/>";

              return (str2.concat(str)).concat(str3);
            }
          },
          axisY:{
            valueFormatString:"$#0bn",
            interval: 10,
            gridColor: "#B6B1A8",
            tickColor: "#B6B1A8",
            interlacedColor: "rgba(182,177,168,0.2)"

          },
          axisX: {
            interval: 1,
            intervalType: "year"
          },
          data: [
          {
           type: "stackedColumn",
           showInLegend:true,
           color: "#696661",
           name:"comebuy",
           dataPoints: [
           {  y: 2.25, x: new Date(2006,0)},
           {  y: 3.66, x: new Date(2007,0)},
           {  y: 5.18, x: new Date(2008,0)},
           {  y: 5.50, x: new Date(2009,0)},
           {  y: 6.75, x: new Date(2010,0)},
           {  y: 8.57, x: new Date(2011,0)},
           {  y: 10.64, x: new Date(2012,0)}
           ]
         },
         {
           type: "stackedColumn",
           showInLegend:true,
           name:"50",
           color: "#EDCA93",
           dataPoints: [
           {  y: 2.45, x: new Date (2006,0)},
           {  y: 3.87, x: new Date (2007,0)},
           {  y: 5.36, x: new Date (2008,0)},
           {  y: 5.52, x: new Date (2009,0)},
           {  y: 6.82, x: new Date (2010,0)},
           {  y: 9.02, x: new Date (2011,0)},
           {  y: 11.80, x: new Date (2012,0)}
           ]
         },
         {
           type: "stackedColumn",
           showInLegend:true,
           name:"Starbucks",
           color:"#695A42",
           dataPoints: [
           {  y: 2.68, x: new Date(2006,0)},
           {  y: 4.23, x: new Date(2007,0)},
           {  y: 5.54, x: new Date(2008,0)},
           {  y: 5.94, x: new Date(2009,0)},
           {  y: 7.28, x: new Date(2010,0)},
           {  y: 9.72, x: new Date(2011,0)},
           {  y: 13.30, x: new Date(2012,0)}
           ]
         },
        //  {
        //    type: "stackedColumn",
        //    showInLegend:true,
        //    name:"Q4",
        //    color:"#B6B1A8",
        //    dataPoints: [
        //    {  y: 3.20, x: new Date(2006,0)},
        //    {  y: 4.82, x: new Date(2007,0)},
        //    {  y: 5.70, x: new Date(2008,0)},
        //    {  y: 6.67, x: new Date(2009,0)},
        //    {  y: 8.44, x: new Date(2010,0)},
        //    {  y: 10.58, x: new Date(2011,0)},
        //    {  y: 14.41, x: new Date(2012,0)}
        //    ]
        //  }
         ]
       });

    chart.render();
    }
    </script>
</body>

</html>
