<%@page import="javax.swing.table.DefaultTableModel,java.util.ArrayList"%>
<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<html>
    <body>
       <table width="100%" height="20" border="2">    
        <tr bgcolor="pink" width="50">
         <td width="20%">First name</td>
         <td width="20%">Last name</td>
         <td width="20%">Email/id<td>
         <td width="20%">password</td>
        
    </tr>
     </table>
    </body>
    <table width="100%" height="20" border="2"> 
<%



Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("select * from register1");
//     st.setString(1,city);
     ResultSet rs=st.executeQuery();
     ArrayList lst1=new ArrayList();
     ArrayList lst2=new ArrayList();
     ArrayList lst3=new ArrayList();
     ArrayList lst4=new ArrayList();
      while(rs.next())
     {
         lst1.add(rs.getString(1));
          lst2.add(rs.getString(2));
           lst3.add(rs.getString(3));
           lst4.add(rs.getString(4));
          
     
     }
     for(int i=0;i<lst1.size();i++)
     {
         %>
         <tr bgcolor="White" width="50" align="center">
            <td width="20%"><%=lst1.get(i)%></td>
             <td width="20%"><%=lst2.get(i)%></td>
             <td width="20%"><%=lst3.get(i)%></td>
             <td width="20%"><%=lst4.get(i)%></td>
            
             

         </tr>
         <%
     
}
%>
</table>
     </html>