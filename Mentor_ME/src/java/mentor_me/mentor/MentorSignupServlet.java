/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mentor_me.mentor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mentor_me.student.StudnetSignUpServlet;

/**
 *
 * @author shraddha
 */
@WebServlet(name = "MentorSignupServlet", urlPatterns = {"/MentorSignupServlet"})
public class MentorSignupServlet extends HttpServlet {

    private static final String CONTENT_TYPE = "text/html";
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String USERNAME = "root";
    private static final String PASSWORD = null;
    private static final String CONN_STRING = "jdbc:mysql://localhost/mentor_me";

    java.sql.Statement s, statement1, statement2;
    java.sql.ResultSet rs, resultset1, resultset2;
    java.sql.PreparedStatement pst, prepared1, preapred2;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            try {
            response.setContentType(CONTENT_TYPE);
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
            int id = 0;

            String firstName = (String) request.getParameter("fname");
            String lastName = (String) request.getParameter("lname");
            String userName = (String) request.getParameter("uname");
            String password = (String) request.getParameter("password");
            String rePword = (String) request.getParameter("repassword");
            int location = Integer.parseInt(request.getParameter("location"));
            int subject = Integer.parseInt(request.getParameter("subject"));
            String areaOfInterest = (String) request.getParameter("studyfield");
            int phoneNo = Integer.parseInt(request.getParameter("phoneNo"));
            

            if (password.equals(rePword)) {

                pst = connection.prepareStatement("INSERT INTO `tutor_details` (`firstname`, `lastname`, `username`, `password`, `subject_id`, `area_of_interest`, `location_id`, `phoneno`) VALUES (?,?,?,?,?,?,?,?);");
                pst.setString(1, firstName);
                pst.setString(2, lastName);
                pst.setString(3, userName);
                pst.setString(4, password);
                pst.setInt(5, subject);
                pst.setString(6, areaOfInterest);
                pst.setInt(7, location);
                pst.setInt(8, phoneNo);
                pst.executeUpdate();
                prepared1 = connection.prepareStatement("select `id` from `tutor_details` where  `username` = ? and `password` = ?");
                prepared1.setString(1, userName);
                prepared1.setString(2, password);
                resultset1 = prepared1.executeQuery();
                if (resultset1.next()) {
                  
                    HttpSession session = request.getSession();
                    session.setAttribute("tutorId", resultset1.getInt(1));
                    session.setAttribute("tutorName", firstName);
                    session.setAttribute("tutorUserName", userName);
                    out.print("Done");
                    response.sendRedirect("faces/tutor/html/TutorHome.jsp");

                } else {
                    out.println("error at second query");
                }

            } else {
                out.println("error");
                out.println("</br>");

               response.sendRedirect("faces/site/html/home.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudnetSignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StudnetSignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    }



