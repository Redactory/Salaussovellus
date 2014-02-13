<%--
    Document : Kysymyssivu
    Created on : 13-Feb-2014
    Author : Teemu Matvejeff
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
        <title>Sisään kirjautuminen</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="container">
            <section>
                <h1>Mikä on vastaus suureen kysymykseen elämästä, maailmankaikkeudesta 
                    ja muusta sellaisesta?</h1>
            </section>

            <form class="form-horizontal" role="form" action="Kirjautuminen" method="POST">
                <div class="form-group">
                    <label for="inputPassword1" class="col-md-2 control-label">Vastaus</label>
                    <div class="col-md-10">
                        <input type="password" class="form-control" id="inputPassword1" name="Salasana">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <button type="submit" class="btn btn-default">Vastaa</button>
                    </div>
                </div>
            </form>
            
        </div>
        <h1>${Virhe}</h1>
    </body>
</html>
