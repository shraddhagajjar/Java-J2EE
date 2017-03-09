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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: About US ::</title>
        <title>Home page</title>
    </head>
    <body>


<div id ="container">
    <%@include file="header.jsp" %>
    <div id ="main">
<div id ="center">
<h1><center>What is Mentor Me</center></h1>
</div> 
</div>
    <%@include file="footer.jsp" %>
</div>
    </body>
</html>
