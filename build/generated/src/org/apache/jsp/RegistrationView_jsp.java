package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.table.DefaultTableModel;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;

public final class RegistrationView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("       <table width=\"100%\" height=\"20\" border=\"2\">    \n");
      out.write("        <tr bgcolor=\"pink\" width=\"50\">\n");
      out.write("         <td width=\"20%\">First name</td>\n");
      out.write("         <td width=\"20%\">Last name</td>\n");
      out.write("         <td width=\"20%\">Email/id<td>\n");
      out.write("         <td width=\"20%\">password</td>\n");
      out.write("        \n");
      out.write("    </tr>\n");
      out.write("     </table>\n");
      out.write("    </body>\n");
      out.write("    <table width=\"100%\" height=\"20\" border=\"2\"> \n");




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
         
      out.write("\n");
      out.write("         <tr bgcolor=\"White\" width=\"50\" align=\"center\">\n");
      out.write("            <td width=\"20%\">");
      out.print(lst1.get(i));
      out.write("</td>\n");
      out.write("             <td width=\"20%\">");
      out.print(lst2.get(i));
      out.write("</td>\n");
      out.write("             <td width=\"20%\">");
      out.print(lst3.get(i));
      out.write("</td>\n");
      out.write("             <td width=\"20%\">");
      out.print(lst4.get(i));
      out.write("</td>\n");
      out.write("            \n");
      out.write("             \n");
      out.write("\n");
      out.write("         </tr>\n");
      out.write("         ");

     
}

      out.write("\n");
      out.write("</table>\n");
      out.write("     </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
