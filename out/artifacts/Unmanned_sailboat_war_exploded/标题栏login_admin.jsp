<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-15
  Time: 6:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>标题栏</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main_style.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="img/favicon.ico"  type="image/x-icon"/>
</head>
<body>
<div class="col-md-12 column" style="color: black">
    <nav class="navbar navbar-default  navbar-fixed-top" role="navigation" style="width: auto">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            </button>
            <a class="navbar-brand">基于无人帆船的水质检测数据管理系统</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-right" onclick="s()">
                <button class="btn btn-default" id="btn" type="button">退出</button>&nbsp;&nbsp;
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" id="name" data-toggle="dropdown"><%=session.getAttribute("admin")%><strong class="caret"></strong></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">个人信息</a>
                        </li>
                        <li>
                            <a href="#">我的组织</a>
                        </li>
                    </ul>
                </li>
                <script>
                    function s(){
                        <%
                            session.removeAttribute("state_admin");
                            session.removeAttribute("admin");
                        %>
                        alert("已安全退出！");
                        window.location.href = "主页.jsp"
                    }
                </script>
            </ul>
        </div>
    </nav>
</div><br><br><br>
</body>
</html>
