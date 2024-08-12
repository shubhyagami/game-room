<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String usr = request.getParameter("username");
String name = request.getParameter("name");
String msg = request.getParameter("message");

Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
PreparedStatement stmt = null;

try {
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xbox", "root", "root");
    String sqlQuery = "INSERT INTO messages (username, name, message) VALUES (?, ?, ?)";
    stmt = conn.prepareStatement(sqlQuery);
    stmt.setString(1, usr);
    stmt.setString(2, name);
    stmt.setString(3, msg);
    stmt.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    try {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
<script>
setTimeout(() => {
    window.location.href = "chat.jsp?msg=<%= usr%>";
}, 10);
</script>
