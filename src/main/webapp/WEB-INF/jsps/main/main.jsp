<%--
  Created by IntelliJ IDEA.
  User: whist_computer
  Date: 2018/10/7
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/daohang.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}static/css/bootsnav.css">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <script src="${pageContext.request.contextPath}static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}static/js/bootsnav.js"></script>
</head>
<body>
<div class="container" style="height: 80px;width: 100%;background-color: #0a3e85">

    <div class="row">

        <div class="col-md-12">

            <nav class="navbar navbar-default navbar-mobile bootsnav on">

                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">

                        <i class="fa fa-bars"></i>

                    </button>

                </div>

                <div class="collapse navbar-collapse" id="navbar-menu" style="background-color: #0a3e85">

                    <ul class="nav navbar-nav" data-in="fadeInDown" data-out="fadeOutUp">

                        <li><a href="#">首页</a></li>

                        <li><a href="#">寄件</a></li>

                        <li class="dropdown">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">追踪与管理</a>

                            <ul class="dropdown-menu animated">

                                <li><a href="#">货物追踪</a></li>

                                <li><a href="#">我的订单</a></li>

                                <li><a href="#">我的账单</a></li>

                                <li><a href="#">账号管理</a></li>

                                <li><a href="#">在线理赔</a></li>

                            </ul>

                        </li>

                        <li class="dropdown">

                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">产品介绍</a>

                            <ul class="dropdown-menu animated">

                                <li><a href="#">快递</a></li>

                                <li><a href="#">整车</a></li>

                                <li class="dropdown">

                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">跨境</a>

                                    <ul class="dropdown-menu animated">

                                        <li><a href="#">国际快件</a></li>

                                        <li><a href="#">FBA进仓</a></li>

                                        <li><a href="#">电商小包</a></li>

                                        <li><a href="#">国际联运</a></li>

                                    </ul>

                                </li>

                                <li><a href="#">增值</a></li>

                                <li><a href="#">零单</a></li>

                                <li><a href="#">仓储</a></li>


                            </ul>

                        </li>

                        <li><a href="#">帮助中心</a></li>

                        <li><a href="#">关于我们</a></li>

                    </ul>
                   <span style="float: right"><br/><br/><a href="javascript;;" style="font-weight: bolder;font-size: 15px;color: #f7b400;margin-left: 650px">注册</a>
                    &emsp;<span style="font-weight: bold;color: #f7b400">|</span>&emsp;<a href="javascript;;" style="font-weight: bold;font-size: 15px;color: #f7b400">登陆</a></span>
                </div>

            </nav>

        </div>
    </div>
</div>
<div id="myCarousel" class="carousel slide" style="height: 80%">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath}static/image/2.jpg" style="width: 100%;height: 100%;" alt="First slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}static/image/l.jpg" style="width: 100%;height: 100%;" alt="Second slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}static/image/i.jpg" style="width: 100%;height: 100%;" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</body>
</html>