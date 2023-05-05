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
      <a class="navbar-brand" href="主页.jsp">主页/<font style="font-size: 15px"><%=request.getParameter("name")%></font></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li>
          <a href="项目简介.jsp?name=项目简介">项目简介</a>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">更多信息<strong class="caret"></strong></a>
          <ul class="dropdown-menu">
            <li>
              <a href="了解无人船.jsp?name=了解无人船">了解无人船</a>
            </li>
            <li>
              <a href="使用方法.jsp?name=使用方法">使用方法</a>
            </li>
            <li>
              <a href="公开数据.jsp?name=公开数据下载">公开数据下载</a>
            </li>
            <li>
              <div id="he-plugin-simple"></div>
              <script>
                WIDGET = {
                  "CONFIG": {
                    "modules": "01234",
                    "background": "1",
                    "tmpColor": "FFFFFF",
                    "tmpSize": "16",
                    "cityColor": "FFFFFF",
                    "citySize": "16",
                    "aqiColor": "FFFFFF",
                    "aqiSize": "16",
                    "weatherIconSize": "24",
                    "alertIconSize": "18",
                    "padding": "10px 10px 10px 10px",
                    "shadow": "0",
                    "language": "auto",
                    "fixed": "false",
                    "vertical": "top",
                    "horizontal": "left",
                    "key": "05363d6212174ded92f4e65d2814b49c"
                  }
                }
              </script>
              <script src="https://widget.qweather.net/simple/static/js/he-simple-common.js?v=2.0"></script>
            </li>
          </ul>
        </li>
      </ul>
      <!--form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" />
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form-->
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">进入系统<strong class="caret"></strong></a>
        <ul class="dropdown-menu">
          <li>
            <a href="成员登录.jsp?name=成员登录">成员登录</a>
          </li>
          <li>
            <a href="管理员登录.jsp?name=管理员登录">管理员登录</a>
          </li>
          <li class="divider">
          </li>
          <li>
            <a href="注册.jsp?name=注册">注册</a>
          </li>
        </ul>
        </li>
        &nbsp;&nbsp;&nbsp;
      </ul>
    </div>
  </nav>
</div><br><br><br>
</body>
</html>
