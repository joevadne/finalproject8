<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database2">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team8"/>
  <jsp:setProperty property="user" name="database" value="team8"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam8!"/>
</jsp:useBean>
<%
  database.connectDB();
  request.setCharacterEncoding("UTF-8");
  String c_id = request.getParameter("c_id");
  database.query("select * from member where c_id = '" + c_id + "';");
  ResultSet rs = database.getRS();
  String name = request.getParameter("name");
  String password = request.getParameter("password");
  String cellphone = request.getParameter("cellphone");
  String email=request.getParameter("email");
  String message="";

  if(c_id != null && name != null && password != null && cellphone != null&& email != null){
    if(rs!=null){
      if(rs.next()){
          message="註冊失敗,賬號已被使用";
        }else{
          database.insertData(c_id,name,password,cellphone,email);
          message="註冊成功";
        }
      }
    }else{
    message="註冊失敗";
  }
%>
<HTML>
<HEAD><TITLE>註冊</TITLE>
<style>
body {
  background: url("images/photo1.jpg") no-repeat center center fixed;
  background-size: cover;
  font-size: 20px;
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  margin: 0;
  color: 	#000000;
}
.btn-primary{
    background-color: #4CAF50;
    color: white;
    border: 2px solid #4CAF50;
}

.btn-primary:hover {
    background-color:white;
    color:black;
}
</style>
</HEAD>
<BODY>
      <h4 class="page-title"><%=message%></h4> </div>
      帳號：<%=c_id%><br>
      用戶姓名：<%=name%><br>
      密碼：<%=password%><br>
      電話：<%=cellphone%><br>
      信箱：<%=email%><br>
      <button class="btn btn-primary" onclick="window.open('index.html','_self')">確定</button>
</BODY>
</center>
</HTML>
