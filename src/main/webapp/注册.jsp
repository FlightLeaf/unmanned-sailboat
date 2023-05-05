<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-14
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<html>
<head>
    <title>注册</title>
    <meta charset="UTF-8">

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
            background-color: #ffffff;
            background-image: url(img/海洋.jpg) ;
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;
        }
    </style>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>

    <script type="text/javascript">
        var S ;
        $(function(){
            $("#inputEmail").blur(function(){
                var uname = $(this).val();
                if(uname==""){
                    $("#remind").html("邮箱不能为空");
                }else{
                    // $.ajax方法实现
                    $.ajax({
                        url:"IdServlet",
                        type:"get",
                        data:"uname="+uname,
                        dataType:"text",
                        async:false,
                        success:function(result){
                            $("#remind").html(result);
                            S = result;
                        }
                    });
                }
            });
        });
    </script>

    <script type="text/javascript">
        var H;
        $(function(){
            $("#inputCode").blur(function(){
                var type = $(this).val();
                var email = document.getElementById("inputEmail").value;
                var code = document.getElementById("inputCode").value;

                if(type==""){
                    $("#remind2").html("不能为空");
                }else{
                    // $.ajax方法实现
                    $.ajax({
                        url:"TypeServlet",
                        type:"get",
                        data:{'code': code,'email': email },
                        dataType:"text",
                        async:false,
                        success:function(result){
                            $("#remind2").html(result);
                            H = result;
                        }
                    });
                }
            });
        });
    </script>

    <script type="text/javascript">
        $(function (){
            $("#inputType").blur(function (){
                var type = $(this).val();
                if (type==1){
                    document.getElementById('inputCode').setAttribute('disabled', 'disabled');
                }
                if (type==2){
                    alert("修改身份为管理员？");
                    document.getElementById('inputCode').removeAttribute('disabled', 'disabled');
                }
            });
        });
    </script>

    <script type="text/javascript">
        var code_judge = null;
        $(function (){
            $("#inputType").blur(function (){
                var type = $(this).val();
                var code = document.getElementById("inputCode").value;
                if (type == 1&&code != "DB-CA-user-100602"){
                    code_judge = "404";
                    alert("用户身份码错误！刷新后重新输入信息注册！！！");
                }
            });
        });
    </script>

    <script type="text/javascript">
        function s(){

            var pwd = document.getElementById("inputPassword1").value;
            var pwd_ = document.getElementById("inputPassword2").value;
            var ty = document.getElementById("inputType").value;
            if(pwd!=pwd_){
                alert("密码输入不相同，请重新输入！");
                return false;
            }
            if(S == "邮箱已存在"){
                alert("用户名已存在，请重新输入！");
                return false;
            }
            if(ty == 2){
                if(H == "邮箱或者身份码错误、或者身份码已被激活！"){
                    alert("邮箱或者身份码错误、或者身份码已被激活！");
                    return false;
                }
            }
            if(code_judge != null){
                alert("用户身份码错误！刷新后重新输入信息注册！！！");
                return false;
            }
            return true;
        }
    </script>

    <style>
        .back{
            position: fixed;
            width: 70%;
            height: 80%;
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
<div class="bjimg"></div>
<%@include file="标题栏.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <br><br><br>
            <h1 class="text-center" style="color: #FFFFFF;font-family: 仿宋;font-size: 50px">
                注册
            </h1>
            <dl class="text-center" style="font-size: medium;color: #FFFFFF;">
                <dt style="color: #FFFFFF;"><font style="font:20px bolder ">注 册 须 知</font></dt>
                <dd>1.请确认产品内置管理员身份码</dd>
                <dd>2.修改身份码需修改身份类型</dd>
                <dd>3.普通成员注册时切记不要修改注册码</dd>
            </dl><br><br>
            <div class="row clearfix" style="color: #FFFFFF;">
                <div class="col-md-2 column"></div>
                <form class="form-horizontal" role="form" action="RegisterServlet" method="post" onsubmit="return s()">
                    <div class="col-md-4 column">

                        <div class="form-group">
                            <label for="inputName" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control"  autocomplete="off" id="inputName" name="name" required="required"/>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" autocomplete="off"  id="inputEmail" name="email" required="required"/>
                                <span id="remind" style="color: #3cff00;"></span>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="inputTel" class="col-sm-3 control-label">电话</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" autocomplete="off"  id="inputTel" name="tel" required="required"/>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="inputPassword1" class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" autocomplete="off"  id="inputPassword1" name="password" required="required"/>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="inputPassword2" class="col-sm-3 control-label">确认密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" autocomplete="off"  id="inputPassword2" name="password_" required="required"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 column">
                        <div class="form-group">
                            <label for="inputCode" class="col-sm-3 control-label">身份码</label>
                            <div class="col-sm-9">
                                <input type="hidden" name="relation" value="100000000">
                                <input type="text" value="DB-CA-user-100602" class="form-control" autocomplete="off"  id="inputCode" name="code" required="required" disabled=""/>
                                <span id="remind2" style="color: #3cff00;"></span>

                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="inputType" class="col-sm-3 control-label">身份类型</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="inputType" name="type" style="color: black">
                                    <option value="1">成员</option>
                                    <option value="2">管理员</option>
                                </select>
                            </div>
                        </div><br>

                        <div class="form-group">
                            <label for="sel" class="col-sm-3 control-label">密保问题</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="sel" name="Q" style="color: black">
                                    <option value="您的姓名是？">您的姓名是？</option>
                                    <option value="您配偶的生日是？">您配偶的生日是？</option>
                                    <option value="您的学号（或工号）是？">您的学号（或工号）是？</option>
                                    <option value="您母亲的生日是？">您母亲的生日是？</option>
                                    <option value="您高中班主任的名字是？">您高中班主任的名字是？</option>
                                    <option value="您父亲的姓名是？">您父亲的姓名是？</option>
                                    <option value="您父亲的生日是？">您父亲的生日是？</option>
                                    <option value="您配偶的姓名是？">您配偶的姓名是？</option>
                                    <option value="您初中班主任的名字是？">您初中班主任的名字是？</option>
                                    <option value="您最熟悉的童年好友名字是？">您最熟悉的童年好友名字是？</option>
                                    <option value="您最熟悉的学校宿舍舍友名字是？">您最熟悉的学校宿舍舍友名字是？</option>
                                    <option value="对您影响最大的人名字是？">对您影响最大的人名字是？</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="exampleInput1" class="col-sm-3 control-label">密保答案</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="exampleInput1" name="A" autocomplete="off"  required="required" >
                            </div>
                        </div><br>
                        <div class="form-group">
                            <label for="bot" class="col-sm-3 control-label"></label>
                            <div class="col-sm-9">
                                <button type="submit" id="bot" class="btn btn-block btn-default btn-primary">注册</button>
                                <font color="red">请牢记以上信息！注册表示同意用户协议！</font>
                                <font color="black" style="float: right;color: #FFFFFF">已有账号？<a href="成员登录.jsp?name=成员登录"><font style="color: #FFFFFF">返回登录</font></a></font>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="col-md-2 column">

                </div>
            </div>
        </div>
    </div>
</div>
<!--div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <br><br>
            <div class="row clearfix">
                <div class="col-md-9 column">
                    <div class="carousel slide" id="carousel-797773">
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#carousel-797773">
                            </li>
                            <li data-slide-to="1" data-target="#carousel-797773">
                            </li>
                            <li data-slide-to="2" data-target="#carousel-797773">
                            </li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img alt="" src="img/二号海洋.jpg" />
                                <div class="carousel-caption">
                                    <h4>
                                        First Thumbnail label
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="img/二号海洋.jpg" />
                                <div class="carousel-caption">
                                    <h4>
                                        Second Thumbnail label
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <img alt="" src="img/海洋.jpg" />
                                <div class="carousel-caption">
                                    <h4>
                                        Third Thumbnail label
                                    </h4>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                </div>
                            </div>
                        </div> <a class="left carousel-control" href="#carousel-797773" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-797773" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
                <div class="col-md-3 column">
                    <h3 class="text-center" style="color: white">
                        注册
                    </h3>

                    <form role="form" name="ThisFrom" action="RegisterServlet" method="post" onsubmit="return s()" style="color: white">
                        <div class="form-group">
                            <label for="exampleInputName1">用户名</label>
                            <input type="text"  required="required" class="form-control" id="exampleInputName1" autocomplete="off" name="name" />
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">邮箱</label>
                            <input type="email"  required="required" class="form-control" id="exampleInputEmail1" autocomplete="off" name="email" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputTel1">电话</label>
                            <input type="tel"  required="required" class="form-control" id="exampleInputTel1" autocomplete="off" name="tel" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword_1">密码</label>
                            <input type="password"  required="required" class="form-control" id="exampleInputPassword_1" autocomplete="off" name="pwd" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword_2">确认密码</label>
                            <input type="password"  required="required" class="form-control" id="exampleInputPassword_2" autocomplete="off" name="pwd_" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputID1">身份类型</label>
                            <input type="text"  required="required"  class="form-control" id="exampleInputID1" autocomplete="off" name="id" />
                            <span id="remind" style="color: #ffffff;font-weight: bolder"></span>
                        </div>

                        <div class="form-floating">
                            <div class="col-sm-2">
                                <label for="sel2" class="form-label">身份类型:</label><br>
                                <select class="form-select" id="sel2" name="type" style="color: black">
                                    <option value="1">成员</option>
                                    <option value="2">管理员</option>
                                </select>
                            </div>
                            <div class="col-sm-10">
                                <label for="exampleInput">身份注册码</label>
                                <input type="text"  required="required"  class="form-control" id="exampleInput" autocomplete="off" name="" />
                            </div>
                        </div>

                        <div class="form-floating">
                            <label for="sel">请选择一个问题:</label><br>
                            <select class="form-select" id="sel" name="" style="color: black">
                                <option value="您的姓名是？">您的姓名是？</option>
                                <option value="您配偶的生日是？">您配偶的生日是？</option>
                                <option value="您的学号（或工号）是？">您的学号（或工号）是？</option>
                                <option value="您母亲的生日是？">您母亲的生日是？</option>
                                <option value="您高中班主任的名字是？">您高中班主任的名字是？</option>
                                <option value="您父亲的姓名是？">您父亲的姓名是？</option>
                                <option value="您父亲的生日是？">您父亲的生日是？</option>
                                <option value="您配偶的姓名是？">您配偶的姓名是？</option>
                                <option value="您初中班主任的名字是？">您初中班主任的名字是？</option>
                                <option value="您最熟悉的童年好友名字是？">您最熟悉的童年好友名字是？</option>
                                <option value="您最熟悉的学校宿舍舍友名字是？">您最熟悉的学校宿舍舍友名字是？</option>
                                <option value="对您影响最大的人名字是？">对您影响最大的人名字是？</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInput1">密保答案</label>
                            <input type="text" class="form-control" id="exampleInput1" name="A" autocomplete="off"  required="required" >
                        </div>
                        <font color="red">请牢记以上信息！注册表示同意用户协议！</font>
                        <font color="black" style="float: right">已有账号？<a href="成员登录.jsp">返回登录</a></font>
                        <input type="submit" class="btn btn-default btn-primary btn-block" value="提交注册">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div-->
</body>
</html>
