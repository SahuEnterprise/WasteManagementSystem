<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<%
    String fnm=request.getParameter("fnm");
    String lnm=request.getParameter("lnm");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("insert into register1 values(?,?,?,?)");
     st.setString(1,fnm);
     st.setString(2,lnm);
     st.setString(3,email);
     st.setString(4,pass);
     st.executeUpdate();
       response.sendRedirect("elements.html");
    %>