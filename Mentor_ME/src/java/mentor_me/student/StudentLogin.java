/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mentor_me.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.util.jar.Attributes.Name.CONTENT_TYPE;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shraddha
 */
@WebServlet(name = "StudentLogin", urlPatterns = {"/StudentLogin"})
public class StudentLogin extends HttpServlet {

    private static final String CONTENT_TYPE = "text/html";
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String USERNAME = "root";
    private static final String PASSWORD = null;
    private static final String CONN_STRING = "jdbc:mysql://localhost/mentor_me";

    java.sql.Connection connection = null;
    java.sql.Statement s;
    java.sql.ResultSet rs;
    java.sql.PreparedStatement pst;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType(CONTENT_TYPE);
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
            String Type = (String) request.getParameter("login");
            String username = (String) request.getParameter("name");
            String password = (String) request.getParameter("password");
            pst = connection.prepareStatement("select * from `student_personal_details` where  `username` = ? and `password` = ?");
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rset = pst.executeQuery();

            if (rset.next()) {
                int id = Integer.parseInt(rset.getString(1));
                
                String FirstName = (String) rset.getString(2);
                String userName = (String) rset.getString(4);
                HttpSession session = request.getSession();
                session.setAttribute("studentId", id);
                session.setAttribute("studentName", FirstName);
                session.setAttribute("studentUserName", userName);
                response.sendRedirect("faces/student/html/StudentHome.jsp");
            } else {
                /*String nextJSP = "site/html/home.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
                dispatcher.forward(request, response);*/
                response.sendRedirect("faces/site/html/home.jsp");
            }
        } catch (Exception e) {

        }
    }
}
