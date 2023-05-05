<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-20
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>验证邮箱</title>
    <style>
        .col-md-10{
            position: relative;
            left: 8%;
            color: white;
        }
    </style>
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
    </style>
    <script>
        var For = <%=session.getAttribute("For")%>
        if(For == "404"){
            alert("账号错误请重新输入！");
            <%session.removeAttribute("For");%>
        }
    </script>
</head>
<body>
<div class="bjimg"></div>
<%@include file="标题栏.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">
                    <div class="row clearfix">
                        <div class="col-md-10 column">
                            <br><br><br><br><br><br><br><br>
                            <h2 style="text-align: center;font-family: 方正粗黑宋简体">
                                确认您的邮箱
                            </h2>
                            <br>
                            <form role="form" action="ForgetServlet" method="post"><br><br><br><br>
                                <div class="form-group">
                                    <label for="exampleInputId">请输入您的邮箱：</label><input type="email" required="required" class="form-control" autocomplete="off" id="exampleInputId" name="email"/>
                                </div><br><br>
                                <input type="submit" class="btn btn-block btn-primary btn-lg" value="确认">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 column">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
