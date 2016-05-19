﻿<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
            content="width=device-width,initial-scale=1">
    <title>opencode</title>

    <!-- Bootstrap -->
    <link href="/resources/CSS/bootstrap.css" rel="stylesheet">
    <link href="/resources/CSS/home-page.css" rel="stylesheet">
    <link href="/resources/CSS/navbar-style.css" rel="stylesheet">
</head>

<body>
    <!--
    для растягивания 12 столбцов под ширину экрана fluid
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 col-md-offset-1"></div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-6 hidden-md"></div>
                </div>
            </div>
        </div>
    </div>
    -->

    <!-- "navbar-default" override in navbar-style.css-->
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
                data-toggle="collapse" data-target="#responsive-menu">
                    <span class="sr-only">Развернуть навигацию!</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Новости</a>
                <a class="navbar-brand" href="#">BitКраны</a>
                <a class="navbar-brand" href="#">Рефералы</a>
                <a class="navbar-brand" href="#">BitВывод</a>

                <!--May be it is really need me later, but not now
                <div class="btn-group">
                <a href="#" class="btn btn-danger navbar-btn">
                    <span class="glyphicon glyphicon-piggy-bank"></span>
                    Кран денег</a>
                <a href="#" class="btn btn-warning navbar-btn">
                    <span class="glyphicon glyphicon-send"></span>
                    Вывод денег</a>
                <a href="#" class="btn btn-success navbar-btn">
                    <span class="glyphicon glyphicon-briefcase"></span>
                    Рефералы</a>
                <a href="#" class="btn btn-info navbar-btn">
                    <span class="glyphicon glyphicon-info-sign"></span>
                    Справка</a>
                </div>
                -->

            </div>

            <div class="collapse navbar-collapse" id="responsive-menu">
                <ui class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle"
                            data-toggle="dropdown">
                            <span class="glyphicon glyphicon-cog"></span>
                            Настройки<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Пункт 1</a></li>
                            <li><a href="#">Пункт 2</a></li>
                            <li><a href="#">Пункт 3</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Справка</a></li>
                        </ul>
                    </li>
                    <li><a href="#">
                        <span class="glyphicon glyphicon-user"></span>
                        Контакты</a></li>
                    <li><a href="#">
                        <span class="glyphicon glyphicon-off"></span>
                        Выход</a></li>
                </ui>
            </div>
        </div>
    </div>

    <div id="carousel" class="carousel slide"  data-ride="carousel">
        <!--Индикаторы слайдов-->
        <ol class="carousel-indicators">
            <li class="active" data-target="#carousel" data-slide-to="0"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
            <li data-target="#carousel" data-slide-to="2"></li>
        </ol>

        <!--Содержимое самих собсн-о слайдов-->
        <div class="carousel-inner">
            <div class="item active">
            <img src="/resources/img/open-code-business.jpg" style="margin: 0 auto;"﻿ alt="">
                <div class="carousel-caption">
                    <h3>Добро пожаловать домой</h3>
                    <p>Нам вас очень не хватало. Проверьте ваш счет уже сегодня</p>
                </div>
            </div>
            <div class="item">
            <img src="/resources/img/biznes-denegi-valuti.jpg" style="margin: 0 auto;"﻿ alt="">
                <div class="carousel-caption">
                    <h3>Инвестируй в opencode</h3>
                    <p>Бизнес в сети - наше будущее, и лучше понять это сегодня</p>
                </div>
            </div>
            <div class="item">
            <img src="/resources/img/biznes-rukopozhatie.jpg" style="margin: 0 auto;"﻿ alt="">
                <div class="carousel-caption">
                    <h3>Стабильный заработок!</h3>
                    <p>Стабильные выплаты каждую неделю без задержек только тут</p>
                </div>
            </div>
        </div>

        <!--Стрелки для переключения слайдов-->
        <a href="#carousel" class="left carousel-control"  data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#carousel" class="right carousel-control" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>

    </div>

    <div class="down-marquee">
        <marquee behavior="scroll" bgcolor="white" direction="left" scrolldelay="10"
        scrollamount= "3" onMouseOver="this.scrollAmount=0" onMouseOut="this.scrollAmount=3">
            <b>${user.marquee}</b>
        </marquee>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as you needed: -->
    <script src="/resources/js/bootstrap.js"></script>
</body>

</html>