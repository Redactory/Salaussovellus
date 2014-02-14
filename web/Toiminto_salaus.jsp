<%-- 
    Document   : Toiminto_salaus
    Created on : 14-Feb-2014, 13:21:32
    Author     : teematve@cs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viestin salaus</title>
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
                <li class="active"><a href="Toiminto_purku">Kryptauksen purku</a></li>
            </ul>                
        </div>
    </div>
    <body>
        <h1>Viestin salaus</h1>

        <!--Segmentti, joka huolehtii kryptauksesta.-->
        <div class="col-md-8 panel panel-default">
            <h2>Tekstin salaaminen</h2>

            <form class="col-md-5 form-horizontal" role="form" action="Toiminto_salaus" method="POST">
                <div class="form-group">
                    <label for="inputIngredients1" class="col-md-4 control-label">Salattava teksti</label>
                    <div class="col-md-5">
                        <textarea NAME="salattava" rows="4" cols="50"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputRecipe1" class="col-md-4 control-label">Tulos</label>
                    <div class="col-md-5">
                        <textarea NAME="tulos" rows="4" cols="50">${salattava}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <button type="submit" class="btn btn-default">Salaa</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
