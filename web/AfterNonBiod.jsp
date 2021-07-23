<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<%
    String onm=request.getParameter("onm");
    String ownm=request.getParameter("ownm");
    String co1=request.getParameter("co1");
    String co2=request.getParameter("co2");
    String city=request.getParameter("city");
     String address=request.getParameter("address");
    String category=request.getParameter("category");
    String quan=request.getParameter("quan");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("insert into afternonbio values(?,?,?,?,?,?,?,?)");
     st.setString(1,onm);
     st.setString(2,ownm);
     st.setString(3,co1);
     st.setString(4,co2);
     st.setString(5,city);
     st.setString(6,address);
     st.setString(7,category);
     st.setString(8,quan);
     st.executeUpdate();
     response.sendRedirect("AfterNonBiod.html");
    %>