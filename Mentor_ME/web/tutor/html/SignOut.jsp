<%-- 
    Document   : SignOut
    Created on : Apr 18, 2016, 11:11:24 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>:: Student Home </title>
</head>
<body>


    <div id ="container">
        <%@include file="header.jsp" %>
        <div id ="main">
            <div id ="center">

                <%

                    request.getSession().removeAttribute("tutorId");
                    request.getSession().removeAttribute("tutorName");
                    request.getSession().removeAttribute("tutorUserName");
                    response.sendRedirect("../../site/html/home.jsp");
                %>

            </div> 
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>