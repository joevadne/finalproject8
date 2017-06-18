<%@ page language="java" contentType="text/html;charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team8" />
  <jsp:setProperty property="user" name="database" value="team8" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!" />
</jsp:useBean>
<%
  if((session.getAttribute("c_id") == null) || (session.getAttribute("c_id") == "")){
   response.setHeader("Refresh","1, URL = logout.jsp");}
  request.setCharacterEncoding("UTF-8");
  String username = (String)session.getAttribute("name");
  String user = (String)session.getAttribute("c_id");
  String id = request.getParameter("id");
  String paycheck = request.getParameter("pay");
  String quantity = request.getParameter("quantity");
  out.println(id);
  if(paycheck!=null){
    database.connectDB();
    database.payment(user);
    database.closeDB();
  }
  if(id!=null){
    database.connectDB();
    database.addtoCart(user,id,quantity);
    database.closeDB();
  }else{
    ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="sweetalert-master/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="sweetalert-master/dist/sweetalert.css">
    <link rel="stylesheet" href="css/style.css">
      <link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">
    <style>
    body{
      background: none;
      background-color: black;

      }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" >

      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">All U Can Drink</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="data.jsp">Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> MyCart</a></li>
          <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
      </div>
    
    </nav>

    <div class="page-header" style="margin-top:0">
        <img class="img-responsive" src="css/banner.png">
    </div>

    <div class="container-fluid">

      <div class="row">


        <div class="col-md-12">
          <ul class="list-group">
            <%
            database.connectDB();
            String sql = "SELECT * FROM drink INNER JOIN mycart ON mycart.p_id = drink.id and mycart.c_id = '"+user+"'";
            database.query(sql);
            rs = database.getRS();
            int total = 0 ;
            int totalone = 0 ;
            if(rs!=null){
              while(rs.next()){
                int price = rs.getInt("price");
                int qty = rs.getInt("quantity");
                total+=price*qty;
                totalone=price*qty;
                %>
                  <li class="list-group-item" style="background-color:white;">
                    <div class="row">
                    <div class="col-md-2"> <img class="img-responsive" style="height:200px;width:300px;" src="<%=rs.getString("image")%>"/></div>

                        <div class="col-md-6"><h3><br>飲料：《<%=rs.getString("name")%>》<br><br>NT<%=price%></h3></div>
                        <div><br></div>
                        <div class="col-md-4" style="background-color:white;text-align:right;">
                          <br><br><br><br>
                          <h3><%=rs.getString("quantity")%>杯</h3>
                          <h3>價格：<%=totalone%>元</h3>
                        </div>

                </li>
                <%
              }%>
              <li class="list-group-item" style="background-color:white;text-align:right;list-style-position: inside;">
                <h2>Total：NT<span id="total"><%=total%></span></h2>
              </li>
            <%}
            %>
          </ul>
          <form id="pay" action="cart.jsp" methog="post">
            <input type="hidden" name="pay" value="ok"/>

            <button type="button" style="float:right" onclick="mycartPay()" class="ui inverted violet basic button">Delete</button>
            <button type="button" style="float:right" onclick="window.open('javascript:history.back(-1)','_self')" class="ui inverted purple basic button">Back</button>

            <script>
              function mycartPay(){
                  document.getElementById("pay").submit();
              }
            </script>
          </form>
        </div>
      </div>
    </div>
  </div>
    <hr>
    <br>

  </body>
</html>
<%
}
%>
