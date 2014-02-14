<%-- 
    Document   : pohja
    Created on : 13-Feb-2014, 13:55:44
    Author     : teematve@cs
--%>

<%@tag description="Tagi-tiedosto hyödyllisille toiminnoille" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="pageTitle"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${pageTitle}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Toimintosivu">Etusivu</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="UlosKirjautuminen">Kirjaudu ulos</a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="Toiminto_salaus">Kryptaus</a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="Toiminto_purku">Kryptauksen purku</a></li>
                </ul>                
            </div>
        </div>

        <div class="container">
            <jsp:doBody/>
            <c:if test="${Virhe != null}" >
                <h1>${Virhe}</h1>
            </c:if>


        </div>
    </body>
</html>