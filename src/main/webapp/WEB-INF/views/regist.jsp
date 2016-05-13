<!--подгрузим библиотеку тегов для работы с *.css - таблицами стилей -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--импортим спринговскую библиотеку форм, ибо спринговская форма умеет
работать с models,которые мы передаем из контроллеров LoginConteoller-->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/CSS/check.css"/>" rel="stylesheet">
	<meta http-equiv= "Content-Type" content="text/html; charset=UTF-8">
<title>opencode</title>
<script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body>
	<div class="block">
		<h1>
        	<a href="dex">OPEN<b>CODE</b></a>
            <form:form method="POST" commandName="user" action="reg">
            <buttons class="checkin_but">
                	<input type= "submit" name= "regi_but" value=""/>
            </buttons>
            </form:form>
            <form:form method="POST" commandName="user" action="inf">
            <buttons class="contact_but">
                	<input type= "submit" name= "contact_" value=""/>
            </buttons>
            </form:form>
        </h1>
        <paragraph class="text">
        <border_in class="border">
            <div class="text-inner">
            Регистрация на сайте
            </div>
            <form:form method="POST" commandName="user" action="new">
            <table class="tabl">
            <tr><td>
            <rinput class="input_log">
                <form:input path="input_log" maxlength="12" size="15" placeholder="Логин"/>
            </rinput>
            </td><td>
            <rinput class="input_qiw">
                <form:input path="input_qiw" maxlength="12" size="15" placeholder="number"/>
            </rinput>
            </td></tr>
            <tr><td>
            <rinput class="input_pas">
            <form:password path="input_pas" maxlength="10" size="15" placeholder="Пароль"/>
            </rinput>
            </td><td>
            <rinput class="input_rep">
            <form:password path="input_rep" maxlength="10" size="15" placeholder="Повтор"/>
            </rinput>
            </td></tr>
            <tr><td colspan="2">
            <rinput class="input_mal">
                <form:input path="input_mal" maxlength="35" size="15" placeholder="e-mail"/>
            </rinput>
            </td></tr>
            </table>
            <div class="g-recaptcha" data-sitekey="6LePdwITAAAAADA4CozPCf44mEiwf31UN4Zmcu3Y"></div>
            <ui_but class="correct">
                <input type="submit" name="correct" value=""/>
            </ui_but>
            </form:form>
        </border_in>
        </paragraph>
        <form:form method="POST" commandName="user" action="chk">
        <uinput class="input_log">
        <form:input path="name" maxlength="12" size="11" placeholder="nickname"/>
        </uinput>
        <uinput class="input_pas">
        	<form:password path = "password" size= "11" placeholder= "password"/>
        </uinput>
        <ui_but class="vhod_but">
            	<input type= "submit" name= "vhod_but" value=""/>
        </ui_but>
        </form:form>
        <form:form method="POST" commandName="user" action="reg">
        <ui_but class="regi_but">
            	<input type= "submit" name= "regi_but" value=""/>
        </ui_but>
        </form:form>
	</div>
</body>
</html>