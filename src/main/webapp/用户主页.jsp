<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-15
  Time: 7:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据浏览系统</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/main_style.css">

    <script>
        var state=<%=session.getAttribute("state_user")%>
        if(state==null){
            alert("请先登录用户账号！");
            window.location.href = "主页.jsp"
        }
    </script>
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
        .table-font{
            color: #000000;

        }
        .write-font{
            color: #FFFFFF;
        }
        .black-font{
            color: black;
        }
        .link-under{
            text-decoration: none;
        }
        .table{
            border-radius: 6px;
            background-color: #FFFFFF;
            color: black;
        }
        #btn1{
            position: relative;
            height: 10%;
            width: 200px;
            background-color: rgb(247, 247, 247);
            font-size: 24px;
            line-height: 50px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            box-shadow: 4px 4px 5px 2px rgb(10, 138, 192),-4px -4px 5px 2px #fff;
            top: 5%;
        }

    </style>
</head>
<body>
<div class="bjimg"></div>
<%@include file="标题栏login_user.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <div id="he-plugin-standard" style="border-radius: 6px"></div>
                            <script>
                                WIDGET = {
                                    "CONFIG": {
                                        "layout": "1",
                                        "width": "538",
                                        "height": "200",
                                        "background": "1",
                                        "dataColor": "FFFFFF",
                                        "key": "626b957484c34ba0945b675ad794d1ea"
                                    }
                                }
                            </script>
                            <script src="https://widget.qweather.net/standard/static/js/he-standard-common.js?v=2.0"></script>
                        </div>
                        <div class="col-md-4 column">
                            <h2 style="color: #FFFFFF;font-family: 仿宋">数据浏览系统选项</h2><hr/>
                            <div class="btn-group btn-group-md">
                                <button class="btn btn-default" type="button">
                                    数据类别一
                                </button>
                                <button class="btn btn-default" type="button">
                                    数据类别二
                                </button>
                                <button class="btn btn-default" type="button">
                                    数据类别三
                                </button>
                                <button class="btn btn-default" type="button">
                                    数据类别四
                                </button>
                            </div><hr/>
                            <script>
                                function jump(){
                                    window.location.href="数据系统.jsp";
                                }
                            </script>
                            <button type="button" class="btn btn-default btn-info btn-block" onclick="jump()">进入数据系统</button>
                        </div>
                        <div class="col-md-4 column">
                            <address style="font-size: large;color: #FFFFFF">
                                <strong>Twitter, Inc.</strong><br />
                                795 Folsom Ave, Suite 600<br /> San Francisco, CA 94107<br />
                                <abbr title="Phone">P:</abbr> (123) 456-7890
                            </address>
                        </div>
                    </div><br>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <table class="table table-hover table-condensed table-striped">
                                <thead>
                                <tr class="table-font">
                                    <th>
                                        公告内容
                                    </th>
                                    <th>
                                        <a class="link-under"  href="#?=x"><font class="black-font">查看更多>></font></a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    for (int i=0;i<8;i++){
                                %>
                                <tr>
                                    <td>
                                        2022年9月<%=i+20%>日
                                    </td>
                                    <td>
                                        内容<%=i+1%>
                                    </td>
                                    <td>
                                        <a class="link-under" href="#?=<%=i+1%>">查看</a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-4 column">
                            <table class="table table-hover table-condensed table-striped">
                                <thead>
                                <tr  class="table-font">
                                    <th>
                                        常见问题
                                    </th>
                                    <th>
                                        <a class="link-under"  href="#?=x"><font class="black-font">查看更多>></font></a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    for (int i=0;i<8;i++){
                                %>
                                <tr>
                                    <td>
                                        内容<%=i+1%>
                                    </td>
                                    <td>
                                        <a  class="link-under" href="#?=<%=i+1%>">查看</a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-4 column">
                            <table class="table table-hover table-condensed table-striped">
                                <thead>
                                <tr class="table-font">
                                    <th>
                                        无人船使用记录
                                    </th>
                                    <th>
                                        <a class="link-under"  href="#?=y"><font class="black-font">查看更多>></font></a>
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    for (int i=0;i<8;i++){
                                %>
                                <tr>
                                    <td>
                                        2022年9月<%=i+20%>日
                                    </td>
                                    <td>
                                        <a class="link-under"  href="#?=<%=i+1%>">概述内容<%=i+1%></a>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <div class="carousel slide" style="width: 100%;height: 150px;border-radius: 6px" id="carousel-941034">

                                <ol class="carousel-indicators" style="border-radius: 6px">
                                    <li class="active" data-slide-to="0" data-target="#carousel-941034">
                                    </li>
                                    <li data-slide-to="1" data-target="#carousel-941034">
                                    </li>
                                    <li data-slide-to="2" data-target="#carousel-941034">
                                    </li>
                                </ol>
                                <div class="carousel-inner" style="border-radius: 6px">
                                    <div class="item active">
                                        <img alt="" src="img/向日葵.jpg" style="width: 100%;height: 150px" />
                                        <div class="carousel-caption">
                                            <h4>
                                                向日葵
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img alt="" src="img/高山.jpg" style="width: 100%;height: 150px" />
                                        <div class="carousel-caption">
                                            <h4>
                                                高山
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img alt="" src="img/牛群.jpg" style="width: 100%;height: 150px" />
                                        <div class="carousel-caption">
                                            <h4>
                                                牛群
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-941034" data-slide="prev" style="border-radius: 6px">
                                    <span class="glyphicon glyphicon-chevron-left">

                                    </span>
                                </a>
                                <a class="right carousel-control" href="#carousel-941034" data-slide="next" style="border-radius: 6px">
                                    <span class="glyphicon glyphicon-chevron-right">

                                    </span>
                                </a>
                            </div>
                            <br>
                        </div>
                        <div class="col-md-4 column">
                            <div class="alert alert-success alert-dismissable">
                                <strong>
                                    Warning!
                                </strong><br><br>
                                Best check yo self, you're not looking too good.
                                Best check yo self, you're not looking too good.
                                Best check yo self, you're not looking too good.
                                Best check yo self, you're not looking too good.
                                Best check yo self, you're not looking too good.
                                <a href="#" class="alert-link">alert link</a>
                            </div>
                            <br>
                        </div>
                        <div class="col-md-4 column">
                            <br>
                        </div>
                    </div>
                    <br>
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <blockquote>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
                                </p> <small>Someone famous <cite>Source Title</cite></small>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
            <!--div class="row clearfix">
                <div class="col-md-12 column">
                </div>
            </div-->
        </div>
    </div>
</div>
</body>
</html>
