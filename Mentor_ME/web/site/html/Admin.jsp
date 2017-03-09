<%-- 
    Document   : Admin
    Created on : Apr 17, 2016, 10:55:51 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Admin Login ::</title>
       
        <style>
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
                height:500px;
                background:#ddd;
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
                    <h1><center>Admin Login</center></h1>
                    <form action="/Mentor_ME/AdminLogin" name="login" method="post">

                        <table align="CENTER" cellpadding="5" cellspacing="5" border="0">

                            <tr>
                                <td colspan="2" align="right"></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>USER NAME :</b> </td>
                                <td width="50%" align="left"><input type="text" name="name" size="30" /></td>
                            </tr>
                            <tr>
                                <td width="50%" align="right"><b>PASSWORD :</b> </td>
                                <td width="50%" align="left"><input type="password" name="password"  size="30"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>	
                                <td colspan="2" align="right">

                                    <input type="submit" name="submit" title="Click To Login"  value="Login"  />&nbsp;&nbsp;


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