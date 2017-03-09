package org.apache.jsp.admin.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.*;
import javax.sql.*;;

public final class Student_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/html/header.jsp");
    _jspx_dependants.add("/admin/html/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #container{\n");
      out.write("                width:80%;\n");
      out.write("                margin:0px auto;\n");
      out.write("            }\n");
      out.write("            @media screen and (max-width: 700px) {\n");
      out.write("                body {\n");
      out.write("                    background-color: lightgreen;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            @media screen and (max-width: 480px) {\n");
      out.write("                #left{\n");
      out.write("                    width:100%;\n");
      out.write("                    margin:0px auto;\n");
      out.write("                    height:auto;\n");
      out.write("                    padding:0px;\n");
      out.write("                    background-color:#9c9;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            @media screen and (max-width: 480px) {\n");
      out.write("\n");
      out.write("                #right{\n");
      out.write("                    width:100%;\n");
      out.write("                    margin:0px auto;\n");
      out.write("                    float:left;\n");
      out.write("                    background-color:green;\n");
      out.write("                    height:auto;\n");
      out.write("                    padding:0px;\n");
      out.write("\n");
      out.write("                    background-color:#9c9;\n");
      out.write("                }}\n");
      out.write("            @media screen and (max-width: 480px) {\n");
      out.write("\n");
      out.write("                #center{\n");
      out.write("                    width:100%;\n");
      out.write("                    margin:0px auto;\n");
      out.write("                    float:left;\n");
      out.write("                    height:200px;\n");
      out.write("                    background:#ddd;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            #header{\n");
      out.write("                top:30px;\n");
      out.write("                width:100%;\n");
      out.write("                margin:0px auto;\n");
      out.write("            }\n");
      out.write("            ul {\n");
      out.write("                width:100%;\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: #333;\n");
      out.write("            }\n");
      out.write("            #left{\n");
      out.write("                width:20%;\n");
      out.write("                margin:0px auto;\n");
      out.write("                float:left;\n");
      out.write("                height:500px;\n");
      out.write("                padding:0px;\n");
      out.write("\n");
      out.write("                background-color:#9c9;\n");
      out.write("            }\n");
      out.write("            #center{\n");
      out.write("                width:100%;\n");
      out.write("                margin:0px auto;\n");
      out.write("                float:left;\n");
      out.write("                height:500px;\n");
      out.write("\n");
      out.write("                background:#ddd;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            li {\n");
      out.write("                float: left;\n");
      out.write("\n");
      out.write("                margin: 0px auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a {\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                font-size:20px;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a:hover:not(.active) {\n");
      out.write("                background-color: #111;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .active {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("            }\n");
      out.write("            #footer {\n");
      out.write("                width:100%;\n");
      out.write("                height:100px;\n");
      out.write("                clear:both;\n");
      out.write("                top:40px;\n");
      out.write("                background:black;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <title>Home page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id =\"container\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id = \"header\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"Student.jsp\">Student</a></li>\n");
      out.write("                <li><a href=\"Tutor.jsp\">Tutor</a></li>\n");
      out.write("                <li><a  href=\"Location.jsp\">Location </a></li>\n");
      out.write("                <li><a  href=\"QuestionAnswer.jsp\">Question Answer </a></li>\n");
      out.write("                <li><a  href=\"Subject.jsp\">Subject </a></li>\n");
      out.write("                <li><a href=\"Admin.jsp\">Admin </a></li>  \n");
      out.write("                <li><a href=\"LogOut.jsp\">LogOut </a></li>  \n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            <div id =\"main\">\n");
      out.write("                <div id =\"center\"><h1><center>Student Page</center></h1>\n");
      out.write("                            ");


                                java.sql.Connection con;
                                java.sql.Statement s;
                                java.sql.ResultSet rs;
                                java.sql.PreparedStatement pst;
                                java.sql.Statement statemnet;
                                con = null;
                                s = null;
                                pst = null;
                                rs = null;
                                PreparedStatement ps = null;
                                String url = "jdbc:mysql://localhost/mentor_me";
                                String username = "root";
                                String pass = null;
                                
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    System.out.println("Driver loaded");
                                    con = java.sql.DriverManager.getConnection(url, username, pass);
                                    System.out.println("Database connected");
                                } catch (ClassNotFoundException cnfe) {
                                    cnfe.printStackTrace();
                                }
                                statemnet = con.createStatement();
                                //ps = con.prepareStatement("select * from `student_personal_details`");

                                ResultSet rset = statemnet.executeQuery("select * from `student_personal_details`");
                                while (rset.next()) {
                                    String ID = rset.getString(1);
                                    String FirstName = rset.getString(2);
                                    String LastName = rset.getString(3);
                                    String UserName = rset.getString(4);
                                  
                                    String Location = rset.getString(6);
                            
      out.write("\n");
      out.write("                    <font size =\"3\">\n");
      out.write("                    <br/>\n");
      out.write("                   Id ");
      out.print( ID );
      out.write(" <br/>\n");
      out.write("                   First Name ");
      out.print( FirstName );
      out.write(" <br/>\n");
      out.write("                   Last Name ");
      out.print( LastName );
      out.write(" <br/>\n");
      out.write("                   User Name ");
      out.print( UserName );
      out.write(" <br/>\n");
      out.write("                   Location ");
      out.print( Location );
      out.write(" <br/>\n");
      out.write("                    \n");
      out.write("                        ");

                            }

                        


                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"footer\">\n");
      out.write("            <center>\n");
      out.write("                <br/>\n");
      out.write("                <a href=\"Home.jsp\"  title=\"Home\"><font color=\"#FFFFFF\">Home</a></font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Student.jsp\" title=\"Student\"><font color=\"#FFFFFF\">Student</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Tutor.jsp\" title=\"Tutor\"><font color=\"#FFFFFF\">Tutor</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Location.jsp\" title=\"location\"><font color=\"#FFFFFF\">location</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"QuestionAnswer.jsp\" title=\"Question Answer\"><font color=\"#FFFFFF\">Question Answer</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Subject.jsp\" title=\"subject\"><font color=\"#FFFFFF\">Subject</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Admin.jsp\" title=\"subject\"><font color=\"#FFFFFF\">Admin</font></a>&nbsp;&nbsp;|\n");
      out.write("                <a href=\"Logout.jsp\" title=\"News\"><font color=\"#FFFFFF\">Logout</font></a></font></</center>\n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("        </center>\n");
      out.write("        <center>\n");
      out.write("            <font color=\"#CCCCCC\"> &copy; - All rights reserved.| Powered by | Mentor Me.(Get your Problem's solution).</font></center>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
