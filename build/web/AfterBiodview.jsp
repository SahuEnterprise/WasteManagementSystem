<%@page import="javax.swing.table.DefaultTableModel,java.util.ArrayList"%>
<%@page import="java.sql.ResultSet,java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager" %>
<html>
    <body>
       <table width="100%" height="20" border="2">    
        <tr bgcolor="pink" width="50">
         <td width="12%">Organization name</td>
         <td width="12%">Owner name</td>
         <td width="12%">Contact Number<td>
         <td width="12%">Alternate Number</td>
         <td width="12%">City Name</td>
         <td width="12%">Address</td>
           <td width="12%">Category</td>
            <td width="12%">Quantity</td>
       
    </tr>
     </table>
    </body>
    <table width="100%" height="20" border="2"> 
<%



Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st= con.prepareStatement("select * from afterbio");
//     st.setString(1,city);
     ResultSet rs=st.executeQuery();
     ArrayList lst1=new ArrayList();
     ArrayList lst2=new ArrayList();
     ArrayList lst3=new ArrayList();
     ArrayList lst4=new ArrayList();
     ArrayList lst5=new ArrayList();
     ArrayList lst6=new ArrayList();
     ArrayList lst7=new ArrayList();
     ArrayList lst8=new ArrayList();
     while(rs.next())
     {
         lst1.add(rs.getString(1));
          lst2.add(rs.getString(2));
           lst3.add(rs.getString(3));
           lst4.add(rs.getString(4));
           lst5.add(rs.getString(5));
           lst6.add(rs.getString(6));
            lst7.add(rs.getString(7));
            lst8.add(rs.getString(8));
     
     }
     for(int i=0;i<lst1.size();i++)
     {
         %>
         <tr bgcolor="White" width="50" align="center">
            <td width="12%"><%=lst1.get(i)%></td>
             <td width="12%"><%=lst2.get(i)%></td>
             <td width="12%"><%=lst3.get(i)%></td>
             <td width="12%"><%=lst4.get(i)%></td>
             <td width="12%"><%=lst5.get(i)%></td>
             <td width="12%"><%=lst6.get(i)%></td>
             <td width="12%"><%=lst7.get(i)%></td>
              <td width="12%"><%=lst8.get(i)%></td>
           
             

         </tr>
         <%
     
}
%>
</table>
     </html>