<%@ page import="java.sql.*" %>
<%
    
    String username = (String) session.getAttribute("username");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shopping_cart", "root", "");

    PreparedStatement ps1 = con.prepareStatement("SELECT id FROM users WHERE username=?");
    ps1.setString(1, username);
    ResultSet rs1 = ps1.executeQuery();
    int userId = 0;
    if (rs1.next()) userId = rs1.getInt("id");

    PreparedStatement ps = con.prepareStatement("SELECT cart.id, products.name, products.price, cart.quantity FROM cart JOIN products ON cart.product_id = products.id WHERE user_id=?");
    ps.setInt(1, userId);
    ResultSet rs = ps.executeQuery();
%>
<html>
<body>
<h2>Your Cart</h2>
<table border="1">
    <tr><th>Product</th><th>Price</th><th>Quantity</th><th>Total</th><th>Action</th></tr>
<%
    double grandTotal = 0;
    while(rs.next()) {
        double total = rs.getDouble("price") * rs.getInt("quantity");
        grandTotal += total;
%>
    <tr>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getDouble("price") %></td>
        <td><%= rs.getInt("quantity") %></td>
        <td><%= total %></td>
        <td>
            <form action="RemoveFromCartServlet" method="post">
                <input type="hidden" name="cart_id" value="<%= rs.getInt("id") %>">
                <input type="submit" value="Remove">
            </form>
        </td>
    </tr>
<% } %>
</table>
<h3>Grand Total: ?<%= grandTotal %></h3>
</body>
</html>
