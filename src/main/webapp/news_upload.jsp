<%@ page import="com.javaweb.unmanned_sailboat.util.DBconn" %>
<%@ page import="com.jspsmart.upload.SmartUpload" %><%--
  Created by IntelliJ IDEA.
  User: 71885
  Date: 2022/11/12
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻上传</title>
</head>
<body>
<%
    DBconn.init();
    SmartUpload smart = new SmartUpload();
    smart.initialize(pageContext);//初始化上传
    smart.upload();//上传准备
    int i=DBconn.addUpdDel("insert into home_news(title,time,author,text,pic) " +
            "values ('"+smart.getRequest().getParameter("title")+"','"+smart.getRequest().getParameter("startDate")+"','"+smart.getRequest().getParameter("author")+"','"+smart.getRequest().getParameter("text")+"','"+smart.getFiles().getFile(0).getFilePathName()+"')");
    String filename = smart.getFiles().getFile(0).getFilePathName();//获取文件名
    filename = new String(filename.getBytes("GBK"),"utf-8");
    smart.save("D:\\Desktop\\IDEA\\Unmanned sailboat\\target\\Unmanned_sailboat-1.0-SNAPSHOT\\upload_news");
    smart.save("D:\\Desktop\\IDEA\\Unmanned sailboat\\src\\main\\webapp\\upload_news");
    String url = application.getRealPath("//");
    if(url!=null&&i>0){
        out.println("<script>alert('上传成功！');history.go(-1)</script>"+filename);
    }
    else {
        out.println("<script>alert('上传失败！');history.go(-1)</script>");
    }
    DBconn.closeConn();
%>
</body>
</html>
