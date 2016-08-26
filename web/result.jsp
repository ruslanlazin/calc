<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<%
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
    request.setAttribute("year", sdf.format(new java.util.Date()));
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Calculator Lazin.pp.ua</title>
        <link href="/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div id="wrapper" class="curved">
            <div id="navigation" class="curved container">
                <%@ include file="/navbar.html" %>
            </div>

            <div id="left" class="curved container">

            </div>

            <div id="center" class="container">

                <h1>JSP + Servlet Calculator</h1>
                <h3>Based on MVC model</h3>
                <br>
                <p>If you made request manually please use this request structure:</p>
                <p><strong>/calc?operand1=5&operand2=8&operation=ADD </strong> </p>
                <p> Or use the http form below: </p>
                <br>
                ${message}
                <br>
                <h4>${answer}</h4>
                <br>

                <form action="/calc" method="GET">
                    <input name="operand1" value="1" type="number"><br/>
                    <br/>
                    <input name="operand2" value="1" type="number">
                    <br/>
                    <input type="radio" name="operation" value="div">Divide</p>
                    <input type="radio" name="operation" value="mul">Multiply</p>
                    <input type="radio" name="operation" value="add" checked>Add</p>
                    <input type="radio" name="operation" value="sub">Subtract</p>
                    <p><input type="submit" class="inbutton"></p>
                </form>
            </div>

            <div id="right" class="curved container">
                <h3>Technologies used in this page:</h3>
                <img src="/images/java.jpg" alt="JAVA"/>
                <img src="/images/jsp.png" alt="JSP"/>
                <img src="/images/html.jpg" alt="HTML"/>
                <img src="/images/css.jpg" alt="CSS"/>
                <img src="/images/servlets.jpg" alt="JAVA SERVLETS"/>
                <img src="/images/mvc.png" alt="MVC"/>

            </div>

            <br class="separator"/>

            <div id="footer" class="curved container">
                The page source code is available in the <a href="https://github.com/ruslanlazin?tab=repositories">GitHub</a>
                repository
            </div>

        </div>

        <p class="copyright">Copyright &copy;2015-${year}. All Rights Reserved</p>

    </body>

</html>
