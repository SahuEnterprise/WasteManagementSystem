in<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>

   <%
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
     PreparedStatement st= con.prepareStatement("select * from register1 where email=? and password=?");
     st.setString(1,email);
     st.setString(2,pass);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     { response.sendRedirect("AfterLogin.html");
    	%>  	
<%
 
    	 
     }
     else
     {
  %>  	<html lang="en">  
<head>  
  <title>Bootstrap Example</title>  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
</head>  
<body>  
  
<div class="container">  
  <h2>Alerts</h2>  
  <div class="alert alert-danger">  
    <strong>Invalid!</strong> Invalid Id and Password. 
    Please Back to the login page any try again.  
</div>  
</div>  
  
</body>  
</html>  
<%
     }
    %>
    