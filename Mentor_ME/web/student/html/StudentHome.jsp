<%-- 
    Document   : StudentHome
    Created on : Apr 16, 2016, 8:32:35 PM
    Author     : shraddha
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <title>:: Student Home </title>
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

                    //int id = Integer.parseInt(request.getSession().getAttribute("studentId"));
                    // int ID1 = Integer.parseInt(id);
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
                    ResultSet rset = statemnet.executeQuery("SELECT * FROM `student_personal_details`,`student_question_details`,`tutor_answer_details`,`tutor_details` where `student_personal_details`.`id` = \'" + request.getSession().getAttribute("studentId") + "\'  and `student_question_details`.`student_id`= \'" + request.getSession().getAttribute("studentId") + "\' and `tutor_answer_details`.`question_id` =  `student_question_details`.`id` and `tutor_answer_details`.`tutor_id` = `tutor_details`.`id`");

                %>

                <table align="center" cellpadding="5" cellspacing="5" width="50%" class="c" border="2">
                    <tr>
                        <th colspan="2"><font color="#000000" size="+3"> Your Questions with Answer </font></th>
                    </tr>

                    <%                        while (rset.next()) {
                            String QuestionId = rset.getString(7);
                            String Question = rset.getString(10);

                            String Anwser = rset.getString(14);
                            String Tutorfname = rset.getString(16);
                            String Tutorlname = rset.getString(17);
                    %>
                    <tr><td width="20%"> Question Id </td> <td width="80%"><%= QuestionId%></td></tr>

                    <tr><td> Question </td> <td><%= Question%></td></tr>
                    <tr><td> Mentor Name </td> <td><%= Tutorfname%> <%= Tutorlname%> </td></tr>
                    <tr><td> Answer </td> <td><%= Anwser%></td></tr>
                    <tr style="text-align: right" ><td colspan="2" > &nbsp;</td></tr>
                    <%
                        }


                    %>

                </table>


                <table align="center" cellpadding="5" cellspacing="5" width="50%" class="c" border="2">
                    <tr>
                        <th colspan="2"><font color="#000000" size="+3"> Questions </font></th>
                    </tr>

                    <%                        
                        Statement statemnet2 = con.createStatement();
                        //ps = con.prepareStatement("select * from `student_personal_details`");
                           ResultSet rset2 = statemnet2.executeQuery("SELECT * FROM `student_personal_details`,`student_question_details`,`tutor_answer_details` where `student_personal_details`.`id` = \'" + request.getSession().getAttribute("studentId") + "\'  and `student_question_details`.`student_id`= \'" + request.getSession().getAttribute("studentId") + "\'   and `tutor_answer_details`.`question_id` <> `student_question_details`.`id` group by(`student_question_details`.`id`)");

                        while (rset2.next()) {
                            String QuestionId = rset2.getString(7);
                            String Question = rset2.getString(10);

                    %>
                    <tr><td width="20%"> Question Id </td> <td width="80%"><%= QuestionId%></td></tr>

                    <tr><td> Question </td> <td><%= Question%></td></tr>
                    <tr style="text-align: right" ><td colspan="2" > &nbsp;</td></tr>
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