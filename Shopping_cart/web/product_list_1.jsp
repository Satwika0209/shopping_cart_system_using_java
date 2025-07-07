<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f8f9fa;
            padding: 20px;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
        }
        .product-card {
            background: white;
            padding: 1rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 250px;
        }
        .product-card h3 {
            margin: 0;
        }
        .product-card p {
            font-size: 14px;
        }
        .product-card input[type="number"] {
            width: 60px;
            padding: 5px;
            margin-top: 0.5rem;
        }
        .product-card button {
            background: #6c5ce7;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 0.5rem;
        }
    </style>
</head>
<body>
    <h2>Available Products</h2>
    <div class="product-container">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/shopping_cart", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM products");
            while(rs.next()) {
        %>
        <div class="product-card">
            <h3><%= rs.getString("name") %></h3>
            <p><%= rs.getString("description") %></p>
            <p>?<%= rs.getDouble("price") %></p>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="product_id" value="<%= rs.getInt("id") %>">
                Quantity: <input type="number" name="quantity" value="1" min="1" max="<%= rs.getInt("stock") %>">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        <% } %>
    </div>
</body>
</html>
