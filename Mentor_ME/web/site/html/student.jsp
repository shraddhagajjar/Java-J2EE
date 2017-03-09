<%-- 
    Document   : student
    Created on : Apr 8, 2016, 7:48:37 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: Student ::</title>

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
                    <div style="margin-left: 40px"> <h1>Student Login</h1></div>
                    <form action="/Mentor_ME/StudentLogin" name="login" method="post">

                        <table cellpadding="5" cellspacing="5" border="0" width="90%" align="center" class="c">

                            <tr>
                                <td colspan="2" align="right" width="50%"></td>
                                <td rowspan="5" align="center" width="50%"> <img src="../../css/mentor1.jpg" style="  border-bottom-left-radius: 40px;
                         border-bottom-right-radius: 40px;  border-top-left-radius: 40px;
                         border-top-right-radius: 40px; width:80%" /></td>
                            </tr>
                            
                            <tr>
                                <td width="25%" align="right" ><b>USER NAME :</b> </td>
                                <td width="25%" align="left"><input type="text" name="name" size="30" /></td>
                            </tr>
                            <tr>
                                <td width="25%" align="right"><b>PASSWORD :</b> </td>
                                <td width="25%" align="left"><input type="password" name="password"  size="30"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" width="50%">
                                </td>
                            </tr>
                            <tr>	
                                <td colspan="2" align="left" width="50%">

                                    <input type="submit" name="submit" title="Click To Login"  value="Login"  />&nbsp;&nbsp;
                                    <a href="student_signup.jsp" title="Click here for Sign UP">Sign up!!</a>

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