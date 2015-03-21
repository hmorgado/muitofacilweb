<%--
  Created by IntelliJ IDEA.
  User: heitor
  Date: 3/15/15
  Time: 5:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Form</title>
    </head>
    <body>
        <g:form controller="login" action="login">
            <label>Usuario: </label>
            <g:textField name="login"/><br/>

            <label>Senha: </label>
            <g:passwordField name="password"/><br/>

            ${flash.message} <br>
            <g:actionSubmit value="Log in"/>
        </g:form>
    </body>
</html>

