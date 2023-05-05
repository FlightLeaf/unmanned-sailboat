<%@ page import="com.javaweb.unmanned_sailboat.util.DBconn" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: 71885
  Date: 2022/11/12
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%
    DBconn.init();
    ResultSet result = DBconn.selectSql("select * from home_news  where title='"+request.getParameter("title")+"' and time='"+request.getParameter("date")+"'");
    for(int i=0;;i++) {
      if(!result.next()){
        break;
      }
      String title = result.getString(1);
      String date = result.getString(2);
      String author = result.getString(3);
      String text = result.getString(4);
      String pic = result.getString(5);
  %>
  <title><%=title%></title>
</head>
<body>
<%@include file="标题栏.jsp"%>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="row clearfix">
        <div class="col-md-12 column">
        </div>
      </div>
      <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column">
          <div class="page-header">
            <h1>
              <big><%=title%></big>&nbsp;&nbsp;<small>作者：<%=author%>&thinsp;&thinsp;&thinsp;&nbsp;发布时间：<%=date%></small>
            </h1>
          </div>
          <h4 style="line-height:180%;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=text%>
          </h4>
          <br>
          <hr>
          <br>
          <img width="100%" height="auto" src="upload_news/<%=pic%>">
          <br>
          <br>
          <hr>
          <br>
          <%
            }
            DBconn.closeConn();
          %>

        </div>
        <div class="col-md-3 column">
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
