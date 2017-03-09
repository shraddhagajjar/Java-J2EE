package org.apache.jsp.student.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public final class Student_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/student/html/header.jsp");
    _jspx_dependants.add("/student/html/footer.jsp");
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
      out.write("    <style>\n");
      out.write("        #container{\n");
      out.write("            width:80%;\n");
      out.write("            margin:0px auto;\n");
      out.write("        }\n");
      out.write("        @media screen and (max-width: 700px) {\n");
      out.write("            body {\n");
      out.write("                background-color: lightgreen;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        @media screen and (max-width: 480px) {\n");
      out.write("            #left{\n");
      out.write("                width:100%;\n");
      out.write("                margin:0px auto;\n");
      out.write("                height:auto;\n");
      out.write("                padding:0px;\n");
      out.write("                background-color:#9c9;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        @media screen and (max-width: 480px) {\n");
      out.write("\n");
      out.write("            #right{\n");
      out.write("                width:100%;\n");
      out.write("                margin:0px auto;\n");
      out.write("                float:left;\n");
      out.write("                background-color:green;\n");
      out.write("                height:auto;\n");
      out.write("                padding:0px;\n");
      out.write("\n");
      out.write("                background-color:#9c9;\n");
      out.write("            }}\n");
      out.write("        @media screen and (max-width: 480px) {\n");
      out.write("\n");
      out.write("            #center{\n");
      out.write("                width:100%;\n");
      out.write("                margin:0px auto;\n");
      out.write("                float:left;\n");
      out.write("                height:200px;\n");
      out.write("                background:#ddd;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        #header{\n");
      out.write("            top:30px;\n");
      out.write("            width:100%;\n");
      out.write("            margin:0px auto;\n");
      out.write("        }\n");
      out.write("        ul {\n");
      out.write("            width:100%;\n");
      out.write("            list-style-type: none;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            overflow: hidden;\n");
      out.write("            background-color: #333;\n");
      out.write("        }\n");
      out.write("        #left{\n");
      out.write("            width:20%;\n");
      out.write("            margin:0px auto;\n");
      out.write("            float:left;\n");
      out.write("            height:500px;\n");
      out.write("            padding:0px;\n");
      out.write("\n");
      out.write("            background-color:#9c9;\n");
      out.write("        }\n");
      out.write("        #center{\n");
      out.write("            width:100%;\n");
      out.write("            margin:0px auto;\n");
      out.write("            float:left;\n");
      out.write("            height:500px;\n");
      out.write("\n");
      out.write("            background:#ddd;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        li {\n");
      out.write("            float: left;\n");
      out.write("\n");
      out.write("            margin: 0px auto;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        li a {\n");
      out.write("            display: block;\n");
      out.write("            color: white;\n");
      out.write("            font-size:20px;\n");
      out.write("            text-align: center;\n");
      out.write("            padding: 14px 16px;\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        li a:hover:not(.active) {\n");
      out.write("            background-color: #111;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .active {\n");
      out.write("            background-color: #4CAF50;\n");
      out.write("        }\n");
      out.write("        #footer {\n");
      out.write("            width:100%;\n");
      out.write("            height:100px;\n");
      out.write("            clear:both;\n");
      out.write("            top:40px;\n");
      out.write("            background:black;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <title>::Student Details::</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id =\"container\">\n");
      out.write("        ");
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
      out.write("         <div id = \"header\">\n");
      out.write("<ul>\n");
      out.write("    <li><a href=\"StudentHome.jsp\">Home</a></li>\n");
      out.write("    <li><a href=\"Student.jsp\">Student</a></li>\n");
      out.write("    <li><a href=\"AskQuestion.jsp\">Ask Question</a></li>\n");
      out.write("    <li><a  href=\"AvailableTutor.jsp\">Available Tutor </a></li>\n");
      out.write("    <li><a href=\"SignOut.jsp\">Sign Out</a></li>  \n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("            \n");
      out.write("          \n");
      out.write("        \n");
      out.write("            <div id =\"center\"> \n");
      out.write("              \n");
      out.write("                \n");
      out.write("                    <br/>\n");
      out.write("                    <br/>\n");
      out.write("                    <br/>\n");
      out.write("                    <br/>\n");
      out.write("                    ");


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
                        String id = (String) request.getSession().getAttribute("studentId");
                        int ID1 = Integer.parseInt(id);
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

                        ResultSet rset = statemnet.executeQuery("SELECT * FROM `student_personal_details`,`student_professional_details` where `student_personal_details`.`id` = \'" + ID1 + "\'  and `student_professional_details`.`student_id`= \'" + ID1 + "\'");
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <table align=\"center\" cellpadding=\"5\" cellspacing=\"5\" width=\"80%\" class=\"c\" border=\"2\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th colspan=\"2\"><font color=\"#000000\" size=\"+3\"> Your Details </font></th>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        ");

                            while (rset.next()) {
                                String ID = rset.getString(1);
                                String firstName = rset.getString(2);
                                String lastName = rset.getString(3);
                                String userName = rset.getString(4);
                                String location = rset.getString(6);
                                String subject = rset.getString(9);
                                String studyField = rset.getString(10);
                        
      out.write("\n");
      out.write("                        <tr><td> Student Id </td> <td>");
      out.print( ID );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> First Name </td> <td>");
      out.print( firstName );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> Last Name </td> <td>");
      out.print( lastName );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> User Name </td> <td>");
      out.print( userName );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> Location </td> <td>");
      out.print( location );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> Subject </td> <td>");
      out.print( subject );
      out.write("</td></tr>\n");
      out.write("                        <tr><td> Study Field </td> <td>");
      out.print( studyField );
      out.write("</td></tr>\n");
      out.write("                        <tr><td colspan=\"2\" > <a href=\"\" > Update </a> </td></tr>\n");
      out.write("                        ");

                            }


                        
      out.write("\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("            </div> \n");
      out.write("        \n");
      out.write("        ");
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
      out.write("       \n");
      out.write("    <div id=\"footer\">\n");
      out.write("        <center>\n");
      out.write("            <br/>\n");
      out.write("            <a href=\"StudentHome.jsp\"  title=\"Home\">\n");
      out.write("                <font color=\"#FFFFFF\">Home</a></font></a>&nbsp;&nbsp;|\n");
      out.write("        <a href=\"Student.jsp\" title=\"Student\"><font color=\"#FFFFFF\">Student</font></a>&nbsp;&nbsp;|\n");
      out.write("        \n");
      out.write("            <a href=\"AskQuestion.jsp\" title=\"Tutor\"><font color=\"#FFFFFF\">Ask Question</font></a>&nbsp;&nbsp;|\n");
      out.write("            <a href=\"AvailableTutor.jsp\" title=\"About Mentor Me\"><font color=\"#FFFFFF\">Available Tutor</font></a>&nbsp;&nbsp;|\n");
      out.write("            <a href=\"SignOut.jsp\" title=\"News\"><font color=\"#FFFFFF\">Sign out</font></a></font></</center>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("    </center>\n");
      out.write("    <center>\n");
      out.write("        <font color=\"#CCCCCC\"> &copy; - All rights reserved.| Powered by | Mentor Me.(Get your Problem's solution).</font></center>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
