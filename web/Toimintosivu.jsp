<%-- 
    Document   : Toimintosivu
    Created on : 13-Feb-2014
    Author     : Teemu Matvejeff
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">

        <title>Toimintosivu</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <div class="col-md-10">
            <t:pohja pageTitle="Toimintosivu">
                <h1>Toimintosivu</h1>
            </t:pohja>
        </div>

        <!--Laatikko, joka sulkee muut sisäänsä.-->
        <div class="panel panel-default">
            <div class="panel-body">

                <!--Segmentti, joka huolehtii kryptauksesta.-->
                <div class="col-md-8 panel panel-default">
                    <h2>Tekstin salaaminen</h2>

                    <form class="col-md-5 form-horizontal" role="form" action="Toimintosivu" method="POST">
                        <div class="form-group">
                            <label for="inputIngredients1" class="col-md-4 control-label">Salattava teksti</label>
                            <div class="col-md-5">
                                <textarea NAME="salattava" rows="4" cols="50"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputRecipe1" class="col-md-4 control-label">Tulos</label>
                            <div class="col-md-5">
                                <textarea NAME="description" rows="4" cols="50"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="submit" class="btn btn-default">Salaa</button>
                            </div>
                        </div>
                    </form>
                </div>

                <!--Segmentti, joka huolehtii kryptauksen purkamisesta.-->
                <div class="col-md-8 panel panel-default">
                    <h2>Salauksen purku</h2>
                    
                    <form class="col-md-5 form-horizontal" role="form" action="Toimintosivu" method="POST">
                        <div class="form-group">
                            <label for="inputIngredients1" class="col-md-4 control-label">Purettava merkkijono</label>
                            <div class="col-md-5">
                                <textarea NAME="purettava" rows="4" cols="50"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputRecipe1" class="col-md-4 control-label">Tulos</label>
                            <div class="col-md-5">
                                <textarea NAME="description" rows="4" cols="50"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <button type="submit" class="btn btn-default">Pura</button>
                            </div>
                        </div>
                    </form>
                </div>


                <!--Paluu etusivulle.-->
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <button type="submit" class="btn btn-default">Poistu</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
