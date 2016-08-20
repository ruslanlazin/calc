
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8" />
        <title>Home Lazin.pp.ua</title>
        <link href="/style.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper" class="curved">
            <div id="navigation" class="curved container">
				<%@ include file ="/navbar.html" %>
            </div>
			
				<div id="left" class="curved container">					

				</div>
				
				<div id="center" class="container">
					<h3>Intro</h3>
					<p> This site was developed in order to improve my programing skills and at the same time practice studied technologies during study 
					"Java web programing" course at <a href="http://www.infopulse.com/career/it-university/">Infopulse IT University</a>.</p>									
				</div>    
			
				<div id="right" class="curved container">
					<h3>Technologies used in this site:</h3>
					<img src="/images/java.jpg" alt="JAVA"/>
					<img src="/images/jsp.png" alt="JSP"/>
					<img src="/images/html.jpg" alt="HTML"/>
					<img src="/images/css.jpg" alt="CSS"/>
					<img src="/images/servlets.jpg" alt="JAVA SERVLETS"/>
					<img src="/images/js.png" alt="JAVASCRIPT"/>
						   
				</div>
				
				<br class="separator" />

				<div id="footer" class="curved container">
					The page source code is available in the <a href="https://github.com/ruslanlazin?tab=repositories">GitHub</a> repository			
				</div>
			
		</div>
		
	<p class="copyright">Copyright &copy;2015-${year}.  All Rights Reserved</p>
       
    </body>

</html>
