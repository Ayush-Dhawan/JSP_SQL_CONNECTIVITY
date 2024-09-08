<%@ page errorPage="error.jsp" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<table>
    <tr>
        <th>Roll Number</th>
        <th>Name</th>
    </tr>
<%
    String query = "SELECT * FROM studs";
    String JDBC_DRIVER = "com.mysql.jdbc.Driver";

        Class.forName(JDBC_DRIVER);

         Connection con = null;

        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "password");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next()) {
            int roll = rs.getInt("roll_number");
            String name = rs.getString("name");
%>
    <tr>
        <td style="color: red"><%=roll%></td>
        <td><%=name%></td>
    </tr>
    <%
        }

//        rs.close();
//        st.close();
//        con.close();

%>
</table>
</body>
</html>
