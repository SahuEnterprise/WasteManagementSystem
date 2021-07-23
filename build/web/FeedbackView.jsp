<%@page import="javax.swing.table.DefaultTableModel,java.util.ArrayList"%>
<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<html>
    <body>
       <table width="50%" height="20" border="2" align="center">    
        <tr bgcolor="pink" width="50">
         <td width="25%"> name</td>
         <td width="25%"> feedback</td>
        
    </tr>
     </table>
    </body>
    <table width="100%" height="20" border="2"> 
<%



Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("select * from feedback1");
//     st.setString(1,city);
     ResultSet rs=st.executeQuery();
     ArrayList lst1=new ArrayList();
     ArrayList lst2=new ArrayList();
      while(rs.next())
     {
         lst1.add(rs.getString(1));
          lst2.add(rs.getString(2));
       
     }
     for(int i=0;i<lst1.size();i++)
     {
         %>
         <tr bgcolor="White" width="50" align="center">
            <td width="12%"><%=lst1.get(i)%></td>
             <td width="12%"><%=lst2.get(i)%></td>
            
             

         </tr>
         <%
     
}
%>
</table>
     </html>