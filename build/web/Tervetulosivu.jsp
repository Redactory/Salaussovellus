<%-- 
    Document   : Virhesivu
    Created on : 13-Feb-2014, 13:18:12
    Author     : teematve@cs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">

        <title>Tekijän terveiset</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
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
    <body>
        <h1>Tervetuloa!</h1>
        <p>Haluat siis jonkin asian joko pysyvän salassa tai selvittää mitä tämä salaisuus sitten on?
            Siinä tapauksessa tervetuloa ja valitse navigointipalkista mitä haluat tehdä.</p>
        
        <p> Tässä vaiheessa haluan vain varoittaa että kryptauksen purussa kannattaa syötettävän 
            merkkijonon kohdalla vältää välien lisäämista syötteeseen. 
            Sovellusta ei ole ajanpuutteen vuoksi ohjelmoitu ottamaan niitä huomioon ja se 
            tuottaa kryptauksen purussa mm. ylimääräisiä merkkejä tulosteeseen.</p>
    </body>
</html>
