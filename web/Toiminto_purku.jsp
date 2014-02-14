<%-- 
    Document   : Toiminto_purku
    Created on : 14-Feb-2014, 13:21:21
    Author     : teematve@cs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salauksen purku</title>
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
        </div>
    </div>
    <body>
        <h1>Salauksen purku</h1>

        <!--Segmentti, joka huolehtii kryptauksen purkamisesta.-->
        <div class="col-md-8 panel panel-default">
            <h2>Salauksen purku</h2>

            <form class="col-md-5 form-horizontal" role="form" action="Toiminto_purku" method="POST">
                <div class="form-group">
                    <label for="inputIngredients1" class="col-md-4 control-label">Purettava merkkijono</label>
                    <div class="col-md-5">
                        <textarea NAME="purettava" rows="4" cols="50"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputRecipe1" class="col-md-4 control-label">Tulos</label>
                    <div class="col-md-5">
                        <textarea NAME="tulos" rows="4" cols="50">${tulos}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <button type="submit" class="btn btn-default">Pura</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
