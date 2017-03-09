<%-- 
    Document   : student_signup
    Created on : Apr 8, 2016, 8:36:26 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Student Sign Up::</title>

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

    </head>
    <body>


        <div id ="container">
            <%@include file="header.jsp" %>
            <div id ="main">
                <div id ="center">
                    <br/>
                    <br/>
                    <br/>
                    <div style="margin-left: 40px"> <h1>Student Sign UP!!</h1></div>



                    <form action="/Mentor_ME/StudnetSignUpServlet" name="SignUp" method="post">


                        <table width="90%" >
                            <tr>
                                <td width="49%" align="left" >
                                    <table width="100%" cellpadding="5" cellspacing="5" border="0" class="c"><tr>
                                            <td  align="right"><b>First name:</b> </td>
                                            <td  align="left"><input type="text" name="fname" size="25"/></td>
                                        </tr>
                                        <tr>
                                            <td  align="right"><b>last name :</b> </td>
                                            <td  align="left"><input type="text" name="lname" size="25" /></td>

                                        </tr>
                                        <tr>

                                            <td  align="right"><b>User name :</b> </td>
                                            <td align="left"><input type="text" name="uname"  size="25"/></td>

                                        </tr>

                                        <tr>
                                            <td width="50%" align="right"><b>Password :</b> </td>
                                            <td width="50%" align="left"><input type="password" name="password"  size="25"/></td>
                                        </tr>

                                        <tr>
                                            <td  align="right"><b>Re Password :</b> </td>
                                            <td  align="left"><input type="password" name="repassword"  size="25"/></td>

                                        </tr>

                                    </table>


                                </td>
                                <td width="49%" align="right">
                                    <table width="100%" align="center" cellpadding="5" cellspacing="5" border="0" class="c">
                                        <tr>
                                            <td  align="right"><b>Location :</b> </td>
                                            <td  align="left">
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
                               Statement statemnet1 = con.createStatement();
                               ResultSet rset1 = statemnet1.executeQuery("SELECT * FROM `location`");
                                                %>
                                                <select name="location">
                                                    <%  while(rset1.next()){ 
                                                        String locId = rset1.getString(1);
                                                        String locName = rset1.getString(2);
                                                    %>
                                                    <option value="<%= locId %>"><%= locName %></option>

                                                    <%  }  %>
                                                </select>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td  align="right"><b>Subject :</b> </td>
                                            <td  align="left">

                                                <%
                               Statement statemnet = con.createStatement();
                               ResultSet rset = statemnet.executeQuery("SELECT * FROM `subject`");
                                                %>
                                                <select name="subject">
                                                    <%  while(rset.next()){ 
                                                        String id = rset.getString(1);
                                                        String subject = rset.getString(2);
                                                    %>
                                                    <option value="<%= id %>"><%= subject %></option>

                                                    <%  }  %>
                                                </select>

                                            </td>

                                        </tr>
                                        <tr>

                                            <td  align="right"><b>Study Field :</b> </td>
                                            <td  align="left"><input type="text" name="studyfield"  size="35" title="You can write your interest for study"/></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center" >
                                                <input type="reset" name="cancel" title="Cancel"  value="Cancel"  />
                                                <input type="submit" name="submit" value="Register" /></td>
                                        </tr>
                                    </table>
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
</html>
