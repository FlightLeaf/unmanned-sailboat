<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-15
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>数据管理系统</title>
    <script>
        var state=<%=session.getAttribute("state_admin")%>
        if(state==null){
            alert("请先登录管理员账号！");
            window.location.href = "主页.jsp"
        }
    </script>
</head>


<body background="img/海洋.jpg" style="background-repeat:no-repeat; /*设置图片不重复显示*/
              background-attachment:fixed;  /*设置图片的位置固定*/
               /*设置图片达到窗口100%的比例*/
              background-size:100% 100%; ">
<%@include file="标题栏login_admin.jsp"%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <br><br>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-1 column">
                </div>
                <div class="col-md-10 column" style="background: white;border-radius: 6px;height: 80%;width: 83.33%">
                    <div class="tabbable" id="tabs-619179">
                        <ul class="nav nav-tabs">
                            <li>
                                <a href="#panel-9746474" data-toggle="tab">人员管理</a>
                            </li>
                            <li>
                                <a href="#panel-9746475" data-toggle="tab">帆船数据登录</a>
                            </li>
                            <li>
                                <a href="#panel-9746476" data-toggle="tab">文件管理</a>
                            </li>
                            <li>
                                <a href="#panel-9746477" data-toggle="tab">信息修改</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="panel-974647"><!--新闻上传-->
                                <div>
                                    <h2 class="text-center">
                                        新&nbsp;闻&nbsp;上&nbsp;传
                                    </h2>
                                    <hr>
                                    <script>
                                        $(function(){
                                            $('.file').change(function(e){
                                                var fileMsg = e.currentTarget.files;
                                                fileSize = fileMsg[0].size;//不能超过2668484,大约为2.6MB
                                                // alert(fileSize)
                                                if (fileSize > 6164000) {
                                                    mui.alert("选择的图片不能超过6MB,请重新选择!");
                                                    return false
                                                }
                                                //获取图片路径
                                                $filePath=URL.createObjectURL(this.files[0]);
                                                $('img').attr('src',$filePath);
                                            })
                                        })
                                    </script>
                                    <form action="do_upload.jsp" method="post" enctype="multipart/form-data">
                                        <div style="left: 9%;position: relative">
                                            <h5>
                                                图片命名："2022-11-11-name-author"
                                                图片上传预览：
                                            </h5>
                                            <img src="" alt="" height="28%" width="auto"><br>
                                            上传的新闻图片：<br><br>
                                            <input type="file" class="file" name="pic"><br>
                                            <div class="form-group">
                                                <label for="startDate" class="col-sm-1 control-label">日期</label>
                                                <div class="col-sm-5">
                                                    <input type="text" class="form-control" onClick="laydate({elem:'#startDate'});" dateFormat="short" name="startDate" id="startDate">
                                                </div>
                                            </div><br><br>
                                            <div class="form-group">
                                                <label for="inputTitle3" class="col-sm-1 control-label">标题</label>
                                                <div class="col-sm-5">
                                                    <input type="text" class="form-control" id="inputTItle3" name="title" autocomplete="off" />
                                                </div>
                                            </div><br><br>
                                            <div class="form-group">
                                                <label for="inputText" class="col-sm-1 control-label">内容</label>
                                                <div class="col-sm-5">
                                                    <textarea  class="form-control" id="inputText" name="text" autocomplete="off" ></textarea>
                                                </div>
                                            </div><br><br>
                                            <div>
                                                <label for="inputText" class="col-sm-10 control-label"></label>
                                                <div class="col-sm-2">
                                                    <input  class="btn btn-default" type="submit" value="上  传">
                                                </div>
                                            </div>

                                        </div>
                                    </form>
                                    <script type="text/javascript">
                                        var now = new Date();
                                        var currentDate = now.getFullYear()+"-"+(now.getMonth() + 1) + "-" +now.getDate();
                                        $('#startDate').val(currentDate);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-8098192"><!-- 新闻上传-->
                                <div>
                                    <h2 class="text-center">
                                        新&nbsp;闻&nbsp;上&nbsp;传
                                    </h2>
                                    <hr>
                                    <script>
                                        $(function(){
                                            $('.file').change(function(e){
                                                var fileMsg = e.currentTarget.files;
                                                fileSize = fileMsg[0].size;//不能超过2668484,大约为2.6MB
                                                // alert(fileSize)
                                                if (fileSize > 6164000) {
                                                    mui.alert("选择的图片不能超过6MB,请重新选择!");
                                                    return false
                                                }
                                                //获取图片路径
                                                $filePath=URL.createObjectURL(this.files[0]);
                                                $('img').attr('src',$filePath);
                                            })
                                        })
                                    </script>
                                    <form action="news_upload.jsp" method="post" enctype="multipart/form-data">
                                        <div style="position: relative;left: 5%">
                                            <h5>
                                                图片命名："2022-11-11-name-author"
                                                图片上传预览：
                                            </h5>
                                            <img src="" alt="" height="23%" width="auto"><br>
                                            上传的新闻图片：<br><br>
                                            <input type="file" class="file" name="pic"><br>
                                            <div class="col-md-4 column">
                                                <div class="form-group">
                                                    <label for="startDate" class="col-sm-2 control-label">日期</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" onClick="laydate({elem:'#startDate1'});" dateFormat="short" name="startDate" id="startDate1">
                                                    </div>
                                                </div><br><br>
                                                <div class="form-group">
                                                    <label for="inputTitle4" class="col-sm-2 control-label">标题</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="inputTItle4" name="title" autocomplete="off" />
                                                    </div>
                                                </div><br><br>
                                                <div class="form-group">
                                                    <label for="inputTitle5" class="col-sm-2 control-label">作者</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="inputTItle5" name="author" autocomplete="off" />
                                                    </div>
                                                </div><br><br>
                                            </div>

                                            <div class="col-md-8 column">
                                                <div class="form-group">
                                                    <label for="inputText2" class="col-sm-1 control-label">内容</label>
                                                    <div class="col-sm-9">
                                                        <textarea  class="form-control" id="inputText2" style="size: auto" name="text" autocomplete="off" ></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <br><br><br><br>
                                            <div>
                                                <label for="inputText" class="col-sm-10 control-label"></label>
                                                <div class="col-sm-1">
                                                    <input  class="btn btn-default" type="submit" value="上  传">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <script type="text/javascript">
                                        var now = new Date();
                                        var currentDate = now.getFullYear()+"-"+(now.getMonth() + 1) + "-" +now.getDate();
                                        $('#startDate1').val(currentDate);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-809819"><!-- 新闻管理-->

                            </div>
                            <div class="tab-pane" id="panel-9746473"><!--公告管理-->

                            </div>
                            <div class="tab-pane" id="panel-9746474"><!--人员管理-->

                            </div>
                            <div class="tab-pane" id="panel-9746475"><!--帆船数据登录-->

                            </div>
                            <div class="tab-pane" id="panel-9746476"><!--文件管理-->

                            </div>
                            <div class="tab-pane" id="panel-9746477"><!--信息修改-->

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 column">
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
