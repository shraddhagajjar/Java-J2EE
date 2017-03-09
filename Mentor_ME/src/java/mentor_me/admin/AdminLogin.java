/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mentor_me.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
@WebServlet(name = "AdminLogin", urlPatterns = {"/AdminLogin"})
public class AdminLogin extends HttpServlet {

    private static final String CONTENT_TYPE = "text/html";
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String USERNAME = "root";
    private static final String PASSWORD = null;
    private static final String CONN_STRING = "jdbc:mysql://localhost/mentor_me";

    java.sql.Connection connection = null;
    java.sql.Statement s;
    java.sql.ResultSet rs;
    java.sql.PreparedStatement pst;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType(CONTENT_TYPE);
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
            String username = (String) request.getParameter("name");
            String password = (String) request.getParameter("password");
            pst = connection.prepareStatement("select * from `admin` where  `username` = ? and `password` = ?");
            pst.setString(1, username);
            pst.setString(2, password);

            ResultSet rset = pst.executeQuery();

            if (rset.next()) {
                int id = Integer.parseInt(rset.getString(1));
                String adminUserName = (String) rset.getString(2);
                HttpSession session = request.getSession();

                session.setAttribute("adminId", id);
                session.setAttribute("adminUserName", adminUserName);
                response.sendRedirect("faces/admin/html/Home.jsp");
                /* String nextJSP = "/student/html/StudentHome.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
                dispatcher.forward(request, response);*/
            } else {
                response.sendRedirect("faces/site/html/home.jsp");
            }
        } catch (Exception e) {

        }
    }

}
