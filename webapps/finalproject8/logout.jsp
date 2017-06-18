<%
session.setAttribute("c_id",null);
session.invalidate();
response.sendRedirect("index.html");
%>
