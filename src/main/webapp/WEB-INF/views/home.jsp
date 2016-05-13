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
<link href="<c:url value="/resources/CSS/home.css"/>" rel= "stylesheet">
	<meta http-equiv= "Content-Type" content="text/html; charset=UTF-8">
<title>opencode</title>
</head>

<body>
	<div class="block">
		<h1>
        <a href="dex">OPEN<b>CODE</b></a>
            <form:form method="POST" commandName="user" action="ext">
            <buttons class="unlogin_but">
                <input type= "submit" name= "unlogin_" value=""/>
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
            
            </div>
        </border_in>
        </paragraph>
        <div class="ulog"><a href=""><?echo "HI '".$_SESSION['logn']."'"?></a></div>
        <form method="post">
        <ui_but class="mypag_but">
                <input type= "submit" name= "mypages_" value=""/>
        </ui_but>
        </form>
        <form:form method="POST" commandName="user" action="ext">
        <ui_but class="unlog_but">
                <input type= "submit" name= "unlogin_" value=""/>
        </ui_but>
        </form:form>
	</div>
</body>
</html>