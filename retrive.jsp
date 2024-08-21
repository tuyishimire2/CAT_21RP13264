<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product Search</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="dash.css">
</head>
<body>
    <button><a href="dashboard.jsp" style="text-decoration:none; color: white;">GO TO HOME</a></button><br>
    
    <form method="get" action="">
    <b>Enter ID you want to Retrieve</b><hr>
        <input type="text" name="productcode" placeholder="Enter Product Code" required>
        <button type="submit">Search</button>
    </form>
    
    <p><b>List of Retrieved Products!</b></p><hr><br>
    
    <table border="1">
        <tr>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <%
        String url = "jdbc:mysql://localhost:3306/cat_21rp13264";
        String user = "root"; 
        String pass = "";
        String productCode = request.getParameter("productcode");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            conn = DriverManager.getConnection(url, user, pass);
            
            String sql;
            if (productCode != null && !productCode.isEmpty()) {
                sql = "SELECT * FROM product WHERE productcode = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, productCode);
            } else {
                sql = "SELECT * FROM product";
                pstmt = conn.prepareStatement(sql);
            }

            rs = pstmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("productcode");
                String name = rs.getString("productname");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt("price");
        %>
                <tr>
                    <td><%= id %></td>
                    <td><%= name %></td>
                    <td><%= quantity %></td>
                    <td><%= price %></td>
                </tr>
        <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        %>
    </table>
</body>
</html>
