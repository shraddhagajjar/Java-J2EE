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
@WebServlet(name = "AskQuestionServlet", urlPatterns = {"/AskQuestionServlet"})
public class AskQuestionServlet extends HttpServlet {

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

            int subject = Integer.parseInt(request.getParameter("subject"));
            String question = (String) request.getParameter("question");
            int id = ((Integer) request.getSession().getAttribute("studentId")).intValue();
            pst = connection.prepareStatement("INSERT INTO `student_question_details` (`student_id`, `subject_id`, `question`) VALUES (?,?,?);");
            pst.setInt(1, id);
            pst.setInt(2, subject);
            pst.setString(3, question);
            pst.executeUpdate();
            response.sendRedirect("faces/student/html/StudentHome.jsp");
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        }
    }

}
