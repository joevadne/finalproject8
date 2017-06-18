<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/team8","team8","NCHUTeam8!");
            PreparedStatement ps = con.prepareStatement("SELECT  * FROM member WHERE " +
                    "c_id = ?");
            ps.setString(1,request.getParameter("c_id"));
            ResultSet res = ps.executeQuery();
            if(res.first()){
                out.print("帳號已被使用");
            }else{
                out.print("帳號可使用");
            }
        }catch (Exception e){
            System.out.println(e);
        }
%>
