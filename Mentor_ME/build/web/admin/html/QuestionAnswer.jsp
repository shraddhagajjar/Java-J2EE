<%-- 
    Document   : QuestionAnswer
    Created on : Apr 17, 2016, 9:52:12 AM
    Author     : shraddha
--%>

<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        
        <style>
            .c{
                font-family:Georgia, "Times New Roman", Times, serif;
                font-size:16px;
                margin-bottom: 70px;
            }
            #container{
                width:80%;
                margin:0px auto;
            }
            #header{
                top:30px;
                width:100%;
                margin:0px auto;
                margin-top:100px;
                font-family: Verdana, Arial, Helvetica, sans-serif;
                border-top-left-radius: 40px;
                border-top-right-radius: 40px;

            }

            body {
                font-size: 11.5pt;
                line-height: 1.75em;
                background-image:url(../..//css/bg.JPG);
                background-attachment:fixed;
                background-position:center;
                letter-spacing: -0.02em;
            }
            ul {
                width:100%;
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }
            #left{
                width:20%;
                margin:0px auto;
                float:left;
                height:500px;
                padding:0px;

                background-color:#9c9;
            }
            #center{
                width:100%;
                margin:0px auto;
                float:left;
                min-height: 600px;
                max-height: 2000px;
                background:#F2F2F2;
                border-bottom-left-radius: 40px;
                border-bottom-right-radius: 40px;


            }
            li {
                float: left;

                margin: 0px auto;
            }

            li a {
                display: block;
                color: white;
                font-size:20px;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }

            .active {
                background-color: #4CAF50;
            }
            #footer {
                width:100%;
                height:100px;
                clear:both;
                top:40px;
            }
        </style>
        <title>Home page</title>
    </head>
    <body>


        <div id ="container">
            <%@include file="header.jsp" %>
            <div id ="main">
                <div id ="center">

                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <%

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

                        ResultSet rset = statemnet.executeQuery("SELECT * FROM `student_question_details`,`tutor_answer_details` where `student_question_details`.`id` = `tutor_answer_details`.`question_id` AND `student_question_details`.`id` = `tutor_answer_details`.`question_id`");
                    %>

                    <table align="center" cellpadding="5" cellspacing="5" width="90%" class="c" border="2">
                        <tr>
                            <th colspan="7"><font color="#000000" size="+3">Student's Question and Tutor's Answer </font></th>
                        </tr>
                        <tr>
                            <th>Id</th>
                            <th>Subject</th>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Tutor's Id</th>
                            <th>Student's Id</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            while (rset.next()) {
                                String ID = rset.getString(1);
                                String StudentId = rset.getString(2);
                                String SubjectId = rset.getString(3);
                                String Question = rset.getString(4);
                                String Tutor_Id = rset.getString(5);
                                String Anwser = rset.getString(8);
                        %>
                        <tr>
                            <td><%= ID%></td>
                            <td><%= SubjectId%></td>
                            <td><%= Question%></td>
                            <td><%= Anwser %> </td>
                            <td><%= Tutor_Id%></td>
                            <td><%= StudentId%></td>
                            <td><a href="">Delete </a>  </td>
                        </tr>
                        <%
                            }


                        %>

                    </table>
                        
                        <br/>
                        <br/>

                <table align="center" cellpadding="5" cellspacing="5" width="80%" class="c" border="2">
                    <tr>
                        <th colspan="5"><font color="#000000" size="+3"> Questions </font></th>
                    </tr>
                    <tr>
                            <th>Id</th>
                            <th>Studnet Name</th>
                            <th>Subject</th>
                            <th>Question</th>
                            <th></th>
                    </tr>
                    <%                        
                        Statement statemnet2 = con.createStatement();
                        //ps = con.prepareStatement("select * from `student_personal_details`");
                        ResultSet rset2 = statemnet2.executeQuery("SELECT * FROM `student_personal_details`,`student_question_details`,`tutor_answer_details` where `student_personal_details`.`id` =`student_question_details`.`student_id`  AND `student_question_details`.`id` <> `tutor_answer_details`.`question_id`");

                        while (rset2.next()) {
                            
                            String StudentName = rset2.getString(2);
                            String QuestionId = rset2.getString(7);
                            String subId = rset2.getString(9);
                            String Que = rset2.getString(10);

                    %>
                    
                    <tr><td><%= QuestionId%></td><td><%= StudentName %></td><td><%= subId%></td><td><%= Que%></td><td colspan="2" >Delete &nbsp;</td></tr>
                    <%
                        }


                    %>

                </table>

                </div> 
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
