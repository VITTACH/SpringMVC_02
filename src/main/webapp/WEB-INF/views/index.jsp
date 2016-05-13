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
<link href="<c:url value="/resources/CSS/index.css"/>" rel="stylesheet">
	<meta http-equiv= "Content-Type" content="text/html; charset=UTF-8">
<title>opencode</title>
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
        <textcentr class="midl">
        <div class="mainback"></div>
            <div class="text-inner">
        Приветствую вас пользователь. Я- VITTACH занимаюсь программированием
        под платформы Windows/Android/WinP8.x/PSP уже не один год, и являюсь
        довольно хорошим программистом в этой области. Область у меня такая:
        разработка Homebrew приложений[от игр до софта] под эти платформы на
        языке программирования Java.Этот сайт и будет посвящён данному языку
        Я бы хотел собрать на этом сайте людей, которым инересен этот язык и
        эта тема. Буду стараться выкладывать сюда свои разработки и делиться
        своими материалами по Java и c++.Я рад всех вас видеть на "OPENCODE"
            <form method="post">
            <link_but class="linkvk">
                <input type="submit" name="linkvk" value=""/>
            </link_but>
            <link_but class="linkfb">
                <input type="submit" name="linkfb" value=""/>
            </link_but>
            <link_but class="linkyo">
                <input type="submit" name="linkyo" value=""/>
            </link_but>
            </form>
            </div>
        </textcentr>
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