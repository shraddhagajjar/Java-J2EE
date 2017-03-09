<%-- 
    Document   : AskQuestion
    Created on : Apr 17, 2016, 8:39:56 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
    <title>:: Student Question ::</title>
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
                <form action="/Mentor_ME/AskQuestionServlet" name="Question" method="post">

                    <table align="center" width="60%" cellpadding="5" cellspacing="5" border="2" class="c">

                        <tr>
                            <th colspan="2"><font color="#000000" size="+3"> Ask Your Question </font></th>
                        </tr>

                        <tr>
                            <td width="30%" align="right"><b>Select Subject:</b> </td>
                            <td width="70%" align="left">
                                <%

                                    java.sql.Connection con = null;
                                    java.sql.PreparedStatement ps = null;

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
                                %>

                                <%
                                    Statement statemnet = con.createStatement();
                                    ResultSet rset = statemnet.executeQuery("SELECT * FROM `subject`");
                                %>
                                <select name="subject">
                                    <%  while (rset.next()) {
                                            String id = rset.getString(1);
                                            String subject = rset.getString(2);
                                    %>
                                    <option value="<%= id%>"> <%= subject%></option>

                                    <%  }%>
                                </select>


                            </td>
                        </tr>
                        <tr>
                            <td width="30%" align="right"><b>Question :</b> </td>
                            <td width="70%" align="left"><input type="question" name="question"  size="50"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>	
                            <td colspan="2" align="right">

                                <input type="submit" name="submit" title="Submit Question  value="Submit Question"  />&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" name="reset" title="Reset"  value="Cancel"  />&nbsp;&nbsp;

                            </td>
                        </tr>
                    </table>
                </form>

            </div> 
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>
