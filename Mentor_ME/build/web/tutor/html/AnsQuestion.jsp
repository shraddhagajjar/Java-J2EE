<%-- 
    Document   : AnsQuestion
    Created on : Apr 21, 2016, 11:02:13 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><style>
            .c{
                font-family:Georgia, "Times New Roman", Times, serif;
                font-size:16px;
                margin-bottom: 70px;
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
        <title>:: Mentor :: </title>
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
                    <% String QuestionId = request.getParameter("QuestionId");
                        session.setAttribute("QuestionId", QuestionId);
                    %>
                    
                    <% String Question = request.getParameter("Question");%>
                    
                    <form action="/Mentor_ME/GiveAnswerServlet" method="post" >
                    <table align="center" cellpadding="5" cellspacing="5" width="50%" class="c" border="2">
                        <tr>
                            <th colspan="2"><font color="#000000" size="+3"> Give Your Answer </font></th>
                        </tr>
                        <tr>
                            <td>Question </td><td><%= Question%><input type="hidden" name="QuestionID" value="<%= QuestionId %>" /> </td>
                        </tr>
                        <tr>
                            <td>Answer </td><td> <textarea name="Answer" rows="3" cols="30"></textarea> </td>
                        </tr>
                        <tr><td colspan="2"><input type="submit" name="submit" value="submit"/>&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" vlaue="reset"/> </td></tr>

                    </table>

                    </form>   

                </div> 
            </div>
            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
