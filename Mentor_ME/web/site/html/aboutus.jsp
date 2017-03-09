<%-- 
    Document   : aboutus
    Created on : Apr 8, 2016, 7:49:24 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

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
                min-height: 500px;
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: About US ::</title>
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
                    
                    <div style="align: center"> </div>

                    <div style=" margin-bottom: 50px;
                         align-content: center;
                         margin: 0px auto;
                         width: 90%;     ">
                        <table class="c" cellspacing="5" >
                            <tr><th><h1>Student Who wants to go up</h1></th><th><h1>They get</h1></th></tr>
                            <tr><td width="50%">  <img src="../../css/mentor1.jpg" style="margin-bottom: 50px;   border-bottom-left-radius: 40px;
                                                       border-bottom-right-radius: 40px;  border-top-left-radius: 40px;
                                                       border-top-right-radius: 40px; width:80%" />
                                </td><td width="50%">
                                    <img src="../../css/mentors.jpg" style="margin-bottom: 50px;   border-bottom-left-radius: 40px;
                                         border-bottom-right-radius: 40px;  border-top-left-radius: 40px;
                                         border-top-right-radius: 40px; width:90%" />

                                </td></tr>

                        </table>
                    </div>

                </div> 
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
