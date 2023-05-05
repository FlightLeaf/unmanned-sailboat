<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-14
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
        .bjimg{
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
            zoom: 1;
            background-color: #fff;
            background-image: url(img/海洋.jpg) ;
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;
        }
        .back{
            position: fixed;
            width: 45%;
            height: 60%;
            background-color: rgba(255, 255, 255, 0.78);
            border-radius: 6px;
            z-index: 0;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="标题栏.jsp"%>
<div class="bjimg"></div>
<div class="container" style="width: 80%;">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
            </div><br><br><br><br><br><br>
            <h1 class="text-center text-info" style="color:#ffffff;font-family: '方正粗黑宋简体'">
                基于无人帆船的水质检测数据管理系统
            </h1>
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                    <div class="rowx clearfix">
                        <div class="main">
                            <br><br>
                            <div class="col-md-12 column"  style="color:#ffffff;">
                                <h2 class="text-center text-info" style="color:#ffffff;font-family: '方正粗黑宋简体'">
                                    管理员登录
                                </h2><br>
                                <form class="form-horizontal" name="ThisFrom" role="form" action="LoginServlet" method="post">
                                    <input type="hidden" value="2" name="type">
                                    <div class="form-group">
                                        <label for="inputID3" class="col-sm-3 control-label">账&emsp;号：</label>
                                        <div class="col-sm-9">
                                            <input type="email" required="required"  class="form-control" id="inputID3" name="email"/>
                                        </div>
                                    </div><br>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-3 control-label">密&emsp;码：</label>
                                        <div class="col-sm-9">
                                            <input type="password" required="required"  class="form-control" id="inputPassword3" name="password"/>
                                        </div>
                                    </div><br>
                                    <div class="form-group">
                                        <div class="col-sm-offset-0 col-sm-12">
                                            <div>
                                                <a style="float: left;color: #ffffff" href="忘记密码验证账号页面.jsp?name=忘记密码验证账号">忘记密码</a>
                                                <a style="float: right;color: #ffffff" href="注册.jsp?name=注册">注册</a>
                                                <font style="float: right;color: #ffffff">没有账号？</font>
                                            </div>
                                        </div>
                                    </div><br>
                                    <div class="form-group">
                                        &emsp;<button type="submit" class="btn btn-success btn-block btn-lg">登录</button>&emsp;
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
