<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<%
    String name=request.getParameter("name");
    String feed=request.getParameter("feed");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("insert into feedback1 values(?,?)");
     st.setString(1,name);
     st.setString(2,feed);
     st.executeUpdate();
     response.sendRedirect("Feedback.html");
    %>