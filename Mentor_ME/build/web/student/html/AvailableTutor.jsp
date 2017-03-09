<%-- 
    Document   : AvailableTutor
    Created on : Apr 17, 2016, 8:40:09 AM
    Author     : shraddha
--%>

<%@page import="mentor_me.student.StudnetSignUpServlet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <style>
        .c{
            font-family:Georgia, "Times New Roman", Times, serif;
            font-size:16px;
            margin-bottom: 80px;
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
    <title>:: Tutor Details ::</title>
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
                    java.sql.ResultSet rs, resulset1, resulset2;
                    java.sql.PreparedStatement prepared1, prepared2;
                    java.sql.Statement statemnet;
                    con = null;
                    s = null;
                    rs = null;
                    String url = "jdbc:mysql://localhost/mentor_me";
                    String username = "root";
                    String pass = null;
                    int ID = 0, subject = 0;
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
                    ResultSet rset = statemnet.executeQuery("SELECT * FROM `student_personal_details`,`student_professional_details` where `student_personal_details`.`id` = \'" + request.getSession().getAttribute("studentId") + "\'  and `student_professional_details`.`student_id`= \'" + request.getSession().getAttribute("studentId") + "\'");

                %>

                <table align="center" cellpadding="5" cellspacing="5" width="50%" class="c" border="2">
                    <tr>
                        <th colspan="2"><font color="#000000" size="+3"> Available Mentor For you Subject </font></th>
                    </tr>

                    <%                    if (rset.next()) {
                            String sid = rset.getString(1);
                            String ssubject = rset.getString(9);
                            ID = Integer.parseInt(sid);
                            subject = Integer.parseInt(ssubject);
                        }
                        statemnet = con.createStatement();
                        resulset2 = statemnet.executeQuery("SELECT * FROM `tutor_details`,`student_professional_details` where `student_professional_details`.`student_id` = \'" + ID + "\'  AND  `student_professional_details`.`subject_id` = `tutor_details`.`subject_id`;");
                        //prepared2 = con.prepareStatement("SELECT * FROM `tutor_details`,`student_professional_details` where `student_professional_details`.`student_id` = \'" +  1 + "\'? and `student_professional_details`.`subject_id` = `tutor_details`.`subject_id`;");
                        //prepared2.setInt(1,Integer.parseInt(request.getSession().getAttribute("studentId")));


                    %>

                    <%                        while (resulset2.next()) {
                            int tutroID = resulset2.getInt(1);
                            String firstName = resulset2.getString(2);
                            String lastName = resulset2.getString(3);
                            int sub = resulset2.getInt(6);
                            String InterestOfTutor = resulset2.getString(7);
                            int location = resulset2.getInt(8);
                            int phoneNo = resulset2.getInt(9);

                    %>
                    <tr><td width="20%"> Tutor Id </td> <td width="80%"><%= tutroID %></td></tr>
                    <tr><td> First Name </td> <td><%= firstName%></td></tr>
                    <tr><td> Last Name </td> <td><%= lastName%></td></tr>
                    <tr><td> Subject </td> <td><%= sub%></td></tr>
                    <tr><td> Tutor Area of Mentor </td> <td><%= InterestOfTutor%></td></tr>
                    <tr><td> Contact </td> <td><%=  phoneNo%></td></tr>
                    <tr style="text-align: right" ><td colspan="2" > <a href="" > Contact </a> </td></tr>
                    </tr>
                    <% }%>

                </table>
            </div> 

        </div> 
    </div>
    <%@include file="footer.jsp" %>
</div>
</body>
</html>