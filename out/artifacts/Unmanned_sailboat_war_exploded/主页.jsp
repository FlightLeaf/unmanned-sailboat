<%@ page import="com.javaweb.unmanned_sailboat.util.DBconn" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>基于无人帆船的水质检测数据管理系统</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main_style.css">
    <link rel="stylesheet" href="css/bjimg.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="shortcut icon" href="img/favicon.ico"  type="image/x-icon"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        var register = <%=session.getAttribute("register")%>
        if(register=="1001"){
            alert("注册成功！");
        }
        <%session.removeAttribute("register");%>
    </script>
    <style>

    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column" style="color: black;">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="color: black;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">home</span>
                        <span class="icon-bar"></span><span class="icon-bar"></span>
                        <span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="主页.jsp">无人帆船水质检测数据系统</a>
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
        </div>
    </div><br><br><br>
    <div class="row clearfix">
        <div class="col-md-10 column">
            <div class="carousel slide" id="carousel-272506">
                <ol class="carousel-indicators">
                    <%
                        DBconn.init();
                        ResultSet resultSet = DBconn.selectSql("select * from news order by dataday desc");
                    %>
                    <li class="active" data-slide-to="0" data-target="#carousel-272506">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-272506">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-272506">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-272506">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="img/二号海洋.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                海洋
                            </h4>
                            <p>
                                海洋（sea），地理名词，是地球上最广阔的水体的总称。地球表面被各大陆地分隔为彼此相通的广大水域称为海洋，海洋的中心部分称作洋，边缘部分称作海，彼此沟通组成统一的水体。                            </p>
                        </div>
                    </div>
                    <%
                        for(int i=0;i<4;i++) {
                            if(!resultSet.next()){
                                break;
                            }
                            String day= resultSet.getString(1);
                            String title= resultSet.getString(2);
                            String novel= resultSet.getString(3);
                            String local= resultSet.getString(4);
                    %>
                    <div class="item">
                        <div class="content">
                            <img width="100%" height="auto" alt="" src="upload/<%=local%>" />
                        </div>
                        <div class="carousel-caption">
                            <h4>
                                <%=title%>
                            </h4>
                            <p>
                                <%=novel%>
                            </p>
                        </div>
                    </div>
                    <%
                        }
                        DBconn.closeConn();
                    %>
                </div>
                <a class="left carousel-control" href="#carousel-272506" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left">

                    </span>
                </a>
                <a class="right carousel-control" href="#carousel-272506" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right">

                    </span>
                </a>
            </div>
        </div>
        <div class="col-md-2">
            <br><br>
            <h3>
                公告新闻
            </h3>
            <hr>
            <table class="table table-hover table-striped">
                <tbody>
                <%
                    DBconn.init();
                    ResultSet result = DBconn.selectSql("select * from home_news order by time desc");
                    for(int i=0;i<16;i++) {
                        if(!result.next()){
                            break;
                        }
                        String title = result.getString(1);
                        String date = result.getString(2);
                %>
                <tr>
                    <td>
                        <%=title%>
                    </td>
                    <td style="width:20px">
                        <a href="news.jsp?title=<%=title%>&date=<%=date%>&name=<%=title%>">>></a>
                    </td>
                </tr>
                <%
                    }
                    DBconn.closeConn();
                %>
                </tbody>
            </table>
        </div>
    </div><br>
    <div class="row clearfix">
        <div class="col-md-12 column">
        </div>
    </div>
</div>
</body>
</html>
<%@ include file="gray.jsp"%>