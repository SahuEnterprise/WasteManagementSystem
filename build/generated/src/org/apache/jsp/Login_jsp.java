package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   ");

    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
     PreparedStatement st= con.prepareStatement("select * from register1 where email=? and password=?");
     st.setString(1,email);
     st.setString(2,pass);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
    	
      out.write("  \t\r\n");

 
    	 
     }
     else
     {
  
      out.write("  \t<html lang=\"en\">  \r\n");
      out.write("<head>  \r\n");
      out.write("  <title>Bootstrap Example</title>  \r\n");
      out.write("  <meta charset=\"utf-8\">  \r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">  \r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">  \r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script>  \r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>  \r\n");
      out.write("</head>  \r\n");
      out.write("<body>  \r\n");
      out.write("  \r\n");
      out.write("<div class=\"container\">  \r\n");
      out.write("  <h2>Alerts</h2>  \r\n");
      out.write("  <div class=\"alert alert-danger\">  \r\n");
      out.write("    <strong>Invalid!</strong> Invalid Id and Password. \r\n");
      out.write("    Please Back to the login page any try again.  \r\n");
      out.write("</div>  \r\n");
      out.write("</div>  \r\n");
      out.write("  \r\n");
      out.write("</body>  \r\n");
      out.write("</html>  \r\n");

     }
    
      out.write("\r\n");
      out.write("    ");
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
