<%-- 
    Document   : Student
    Created on : Apr 17, 2016, 8:39:39 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <style>
        .c{
            font-family:Georgia, "Times New Roman", Times, serif;
            font-size:16px;
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
    <title>::Student Details::</title>
</head>
<body>


    <div id ="container">
        <%@include file="header.jsp" %>




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
                ResultSet rset = statemnet.executeQuery("SELECT * FROM `student_personal_details`,`student_professional_details` where `student_personal_details`.`id` = \'" + request.getSession().getAttribute("studentId") + "\'  and `student_professional_details`.`student_id`= \'" + request.getSession().getAttribute("studentId") + "\'");

            %>

            <table align="center" cellpadding="5" cellspacing="5" width="50%" class="c" border="2">
                <tr>
                    <th colspan="2"><font color="#000000" size="+3"> Your Details </font></th>
                </tr>

                <%                            while (rset.next()) {
                        String ID = rset.getString(1);
                        String firstName = rset.getString(2);
                        String lastName = rset.getString(3);
                        String userName = rset.getString(4);
                        String location = rset.getString(6);
                        String subject = rset.getString(9);
                        String studyField = rset.getString(10);
                %>
                <tr><td width="20%"> Student Id </td> <td width="80%"><%= ID%></td></tr>
                <tr><td> First Name </td> <td><%= firstName%></td></tr>
                <tr><td> Last Name </td> <td><%= lastName%></td></tr>
                <tr><td> User Name </td> <td><%= userName%></td></tr>
                <tr><td> Location </td> <td><%= location%></td></tr>
                <tr><td> Subject </td> <td><%= subject%></td></tr>
                <tr><td> Study Field </td> <td><%= studyField%></td></tr>
                <tr style="text-align: right" ><td colspan="2" > <a href="" > Update </a> </td></tr>
                <%
                    }


                %>

            </table>
        </div> 

        <%@include file="footer.jsp" %>
    </div>
</body>
</html>