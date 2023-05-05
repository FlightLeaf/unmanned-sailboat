<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-17
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>忘记密码</title>
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
                            <br><br><br><br>
                            <h2 style="text-align: center;font-family: 方正粗黑宋简体">
                                修改密码
                            </h2>
                            <script>
                                var Q = <%=session.getAttribute("Q")%>
                                if(Q == null){
                                    alert("该账号不存在请重新输入！")
                                    window.location.href = "忘记密码验证账号页面.jsp"
                                }
                            </script>
                            <script>
                               function p(){
                                   var pwd1 = document.getElementById("exampleInputpwd1").value;
                                   var pwd2 = document.getElementById("exampleInputnew1").value;
                                   if(pwd2!=pwd1){
                                       alert("两次密码不相同，请重新输入！")
                                       return false;
                                   }
                                   return true;
                               }
                            </script>
                            <br>
                            <h3>
                                密保问题：
                                <%=session.getAttribute("Q")%>
                            </h3>
                            <form role="form" action="NextForgetServlet" method="post" onsubmit="return p()"><br><br>
                                <div class="form-group">
                                    <label for="exampleInputId">请再次确认您的邮箱：</label><input type="email" required="required" class="form-control" id="exampleInputId" name="id" required/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputA">请输入密保答案</label><input type="text" class="form-control"  required="required" id="exampleInputA" name="A" required/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputpwd1">新密码</label><input type="password" class="form-control"  required="required" id="exampleInputpwd1" name="pwd" required/>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputnew1">确认新密码</label><input type="password" class="form-control" required="required"  id="exampleInputnew1" name="pwd_" required/>
                                </div><br><br>
                                <input type="submit" class="btn btn-block btn-primary btn-lg" value="更新密码">
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
