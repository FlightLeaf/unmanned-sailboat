<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-05
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="com.jspsmart.upload.SmartUpload" %>
<%@page import="com.javaweb.unmanned_sailboat.util.DBconn" %>
<html>
<head>
    <title>ͼƬ�ϴ�</title>
</head>
<body>
<%
    DBconn.init();
    SmartUpload smart = new SmartUpload();
    smart.initialize(pageContext);//��ʼ���ϴ�
    smart.upload();//�ϴ�׼��
    int i=DBconn.addUpdDel("insert into news(dataday,title,novel,local) " +
            "values ('"+smart.getRequest().getParameter("startDate")+"','"+smart.getRequest().getParameter("title")+"','"+smart.getRequest().getParameter("text")+"','"+smart.getFiles().getFile(0).getFilePathName()+"')");
    String filename = smart.getFiles().getFile(0).getFilePathName();//��ȡ�ļ���
    filename = new String(filename.getBytes("GBK"),"utf-8");
    smart.save("D:\\Desktop\\IDEA\\Unmanned sailboat\\target\\Unmanned_sailboat-1.0-SNAPSHOT\\upload");
    smart.save("D:\\Desktop\\IDEA\\Unmanned sailboat\\src\\main\\webapp\\upload");
    String url = application.getRealPath("//");
    if(url!=null&&i>0){
        out.println("<script>alert('�ϴ��ɹ���');history.go(-1)</script>"+filename);
    }
    else {
        out.println("<script>alert('�ϴ�ʧ�ܣ�');history.go(-1)</script>");
    }
    DBconn.closeConn();
%>
<a href="#" style="color: black">���ع���ҳ��</a>
</body>
</html>
