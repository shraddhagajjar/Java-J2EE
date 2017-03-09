<%-- 
    Document   : student_signup
    Created on : Apr 8, 2016, 8:36:26 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Student Sign Up::</title>
        <style>
            #container{
                width:80%;
                margin:0px auto;
            }
            @media screen and (max-width: 700px) {
                body {
                    background-color: lightgreen;
                }
            }
            @media screen and (max-width: 480px) {
                #left{
                    width:100%;
                    margin:0px auto;
                    height:auto;
                    padding:0px;
                    background-color:#9c9;
                }
            }
            @media screen and (max-width: 480px) {

                #right{
                    width:100%;
                    margin:0px auto;
                    float:left;
                    background-color:green;
                    height:auto;
                    padding:0px;

                    background-color:#9c9;
                }}
            @media screen and (max-width: 480px) {

                #center{
                    width:100%;
                    margin:0px auto;
                    float:left;
                    height:200px;
                    background:#ddd;

                }
            }
            #header{
                top:30px;
                width:100%;
                margin:0px auto;
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
                height:500px;

                background:#ddd;

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
                background:black;
            }
        </style>

    </head>
    <body>

        <div id ="container">
            <%@include file="header.jsp" %>
            <div id ="main">
                <div id ="center">
                    <center><h1>Student Sign UP!!</h1></center>



                    <form action="" name="login" method="post">

                        <table align="left" cellpadding="5" cellspacing="5" border="0">

                            <tr>
                                <td colspan="2" align="right"></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>First name:</b> </td>
                                <td width="50%" align="left"><input type="text" name="fname" size="30" /></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>last name :</b> </td>
                                <td width="50%" align="left"><input type="text" name="lname"  size="30"/></td>
                            </tr>

                            <tr>
                                <td width="50%" align="right"><b>User name :</b> </td>
                                <td width="50%" align="left"><input type="text" name="uname"  size="30"/></td>
                            </tr>

                            <tr>
                                <td width="50%" align="right"><b>Password :</b> </td>
                                <td width="50%" align="left"><input type="password" name="password"  size="30"/></td>
                            </tr>

                            <tr>
                                <td width="50%" align="right"><b>Re Password :</b> </td>
                                <td width="50%" align="left"><input type="password" name="password"  size="30"/></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>Location :</b> </td>
                                <td width="50%" align="left"><input type="text" name="password"  size="30"/></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>Subject :</b> </td>
                                <td width="50%" align="left"><input type="text" name="password"  size="30"/></td>
                            </tr>
                           <tr>
                                <td width="50%" align="right"><b>Study Field :</b> </td>
                                <td width="50%" align="left"><input type="text" name="studyfield"  size="30"/></td>
                            </tr>
                            
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">

                                    <input type="submit" name="submit" title="Click To Login"  value="Login"  />
                                    <input type="submit" name="signup" title="Click New User"  value="Sign Up!!"  />
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
