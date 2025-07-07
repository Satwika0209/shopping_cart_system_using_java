<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shopping_cart", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM products");
%>
<html>
<body>
<h2>Product List</h2>
<% while(rs.next()) { %>
    <div>
        <h3><%= rs.getString("name") %></h3>
        <p><%= rs.getString("description") %></p>
        <p>?<%= rs.getDouble("price") %></p>
        <form action="AddToCartServlet" method="post">
            <input type="hidden" name="product_id" value="<%= rs.getInt("id") %>">
            Quantity: <input type="number" name="quantity" value="1" min="1" max="<%= rs.getInt("stock") %>">
            <input type="submit" value="Add to Cart">
        </form>
    </div>
<% } %>
</body>
</html>
