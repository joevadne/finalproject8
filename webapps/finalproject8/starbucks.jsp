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
request.setCharacterEncoding("UTF-8");
if((session.getAttribute("c_id") == null) || (session.getAttribute("c_id") == "")){
 response.setHeader("Refresh","1, URL = logout.jsp");}
  database.connectDB();
  database.query("select * from drink where sid=1;");
  ResultSet rs = database.getRS();
  database.CloseDb();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 什麼版本IE 就用什麼版本的標準模式 -->
<!-- width通常設為device-width，用意是適應各家裝置的大小，這樣寫CSS時就能放心的把版面寬度設為100% initial-scale=1 表不能縮放-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="前端與網頁資料庫之實例應用">
<meta name="author" content="venus_bert">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>StarBucks</title>

<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap1.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">


  <script>

        function buy(p_id){
          var name = document.getElementById("name"+p_id).innerText;
          var number = $("#number"+p_id).val();
          $.post("cart.jsp",{id:p_id,quantity:number},function(text){
            alert("《"+name+"》added to MyCart");
          });
        }
      </script>


<!-- Semantic UI CSS -->
<link href="vendors/semantic-ui/dist/semantic.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendors/sweetalert/dist/sweetalert.css">


  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="container-fluid">
        <ul class="nav navbar-nav navbar-right">
                <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> MyCart</a></li>
                <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
              </ul>
  <div class="navbar-header">
  <!-- Collect the nav links, forms, and other content for toggling -->
  <a class="navbar-brand" href="index.html"><img src="images/staricon.jpg" w="25" h="25"></a>
  <a class="navbar-brand" href="index.html">HOME</a>

</div>
  <ul class="nav navbar-nav">
  <li>

    <a href="starbucks.jsp" style="font-family:Microsoft JhengHei;">StarBucks</a>
  </li>
  <li>
  <a href="comebuy.jsp" style="font-family:Microsoft JhengHei;">Comebuy</a>
  </li>

  <li>
  <a href="50.jsp" style="font-family:Microsoft JhengHei;">50嵐</a>

  </li>


  </ul>
  </div>
  </div>
  </nav>

<div class="page-header">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="banner/1.png" width="1200" height="700">
        </div>

      <div class="item">
        <img src="banner/2.jpg" width="1200" height="700">

      </div>

      <div class="item">
        <img src="banner/3.jpg" width="1200" height="700">

      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
</head>
<body>
<center><div class="container">
  <div class="row">
      <%
      if(rs !=null){
        int temp = 0;
        while(rs.next()){
        String id =rs.getString("id");
        String name=rs.getString("name") ;
        String image=rs.getString("image") ;
        String price=rs.getString("price") ;
        String sid=rs.getString("sid") ;
        %>
        <div class="col-sm-6" >
          <div class="card horizontal">
              <div class="card-image" style="padding:2vh;">
                  <img class="image-responsive" style="width:350px;height:350px;"src="<%=image%>"></div>
                  <div class="card-stacked">
                      <div class="card-content">
                          <h id="name<%=id%>" style="font-size:20px;font-weight:bold;"><%=name%></h>
                          <p>價錢：<%=price%></p>
                      </div>
                  </div>
              </div>
          <tbody>
              <tr>
            <td id = "sid<%=id%>"></td>
            <td>
              <div class="card-action">
                <select id="number<%=id%>" class='ui fluid dropdown'>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
                <option value='6'>6</option>
                <option value='7'>7</option>
                <option value='8'>8</option>
                <option value='9'>9</option>
                <option value='10'>10</option>
               </select>
                <br></br>
                <button class='fluid ui black button' style='font-family: &quot;Microsoft JhengHei&quot;;' onclick="buy(<%=id%>)" class="btn btn-info">訂購</button>
                    </div></td>
        </tr>
      </tbody>
    </div>
      <%
      temp++;
      if(temp%2==0){%>
    </div><div class="row">
      <%}
      }
    }%>
  </div>
</div>
<br>

<iframe width='90%' height='500' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58258.10899604592!2d120.65916892292343!3d24.13200865839141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34693d014f6cff33%3A0xd6e71f56d906c9f3!2zU1RBUkJVQ0tTIENPRkZFRee1seS4gOaYn-W3tOWFiyjlnIvos4flnJbploDluIIp!5e0!3m2!1szh-TW!2stw!4v1497756174622'></iframe>
  <hr>
   <footer>
      <button class="ui facebook button" onclick="self.location.href='https://www.facebook.com/'"/>
          <i class="facebook icon"></i>
          Facebook
      </button>
      <button class="ui google plus button" onclick="self.location.href='https://www.google.com.tw/'"/>
          <i class="google  icon"></i>
          Google
      </button>
      <button class="ui youtube button" onclick="self.location.href='https://www.youtube.com/?hl=zh-TW&gl=TW&tab=w1'"/>
          <i class="youtube icon" ></i>
          YouTube
      </button>
  </footer>

    </div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

  </body>
</html>
