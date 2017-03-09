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
import java.sql.ResultSet;
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
@WebServlet(name = "GiveAnswerServlet", urlPatterns = {"/GiveAnswerServlet"})
public class GiveAnswerServlet extends HttpServlet {

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

            int id = ((Integer) request.getSession().getAttribute("tutorId")).intValue();
            out.print(id);
            
            //int Qid = ((Integer) request.getSession().getAttribute("QuestionId")).intValue();
            
            String Qid = (String) request.getParameter("QuestionID");
                
            String Ans = (String) request.getParameter("Answer");
            int sQid = Integer.parseInt(Qid);
            out.print(Qid);
            out.print(sQid);
            out.print(id);
            out.print(Ans);
            pst = connection.prepareStatement("INSERT INTO `tutor_answer_details`(`tutor_id`, `question_id`, `answer`) VALUES (?,?,?)");
            pst.setInt(1, id);
            pst.setInt(2, sQid);
            pst.setString(3, Ans);
            pst.executeUpdate();
            response.sendRedirect("faces/tutor/html/TutorHome.jsp");
        } catch (Exception e) {

        }

    }

}
