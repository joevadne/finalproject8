<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
   String c_id = request.getParameter("c_id");
   String password = request.getParameter("password");
   Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/team8","team8","NCHUTeam8!");
      Statement st =con.createStatement();
      ResultSet rs;
      rs = st.executeQuery("select * from member where c_id='"+ c_id+"' and password='" + password + "'");

        %>
        <%-- out.println("登入成功!請稍後!"); --%>

    <html>
    <head>
        <link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">
          <link rel="stylesheet" href="css1/style.css">
            <style>
                body {
                    background: url("images/photo2.jpg") no-repeat center center fixed;
                    background-size: cover;
                    font-size: 16px;
                    font-family: 'Lato', sans-serif;
                    font-weight: 300;
                    margin: 0;
                    color: #666;
                }

            </style>
        </head>
        <body>
              <%  if(rs.next()){
                  session.setAttribute("c_id",c_id);%>

                <div class="top">
            			<h1 id="title" class="hidden"><span id="logo">登入成功!</span></h1>
            		</div>
                  <div class="ui active centered inline loader"></div>
                  <%
                  response.setHeader("Refresh","1, URL=data.jsp");

                }else{
                  %>
                  <center>

                  <h2 >帳號密碼輸入錯誤!</h2><img src="images/m2.jpg" height="500" width="450">
                  <br>
                <button class="ui inverted olive button" onclick="window.open('index.html','_self')">回上一頁</button>
              </center>
                  <%-- out.println("帳號密碼輸入錯誤!<a href='index.html'> 重新輸入</a>"); --%>
              <% }
                rs.close();
                st.close();
                con.close();

                %>

        </body>
    </html>
