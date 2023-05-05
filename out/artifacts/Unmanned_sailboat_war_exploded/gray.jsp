<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-08-06
  Time: 7:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" %>
<html>
<head>
    <title>¹«¼ÀÈÕ</title>
    <style>
        <%
            LocalDate data = LocalDate.now();
            int month = data.getMonthValue();
            int day = data.getDayOfMonth();
            int flag=0;
            if(month==12&&day==13){
                flag=100;
            }
        %>

        html {
            -webkit-filter: grayscale(<%=flag%>%);
            -moz-filter: grayscale(<%=flag%>%);
            -ms-filter: grayscale(<%=flag%>%);
            -o-filter: grayscale(<%=flag%>%);
            filter: grayscale(<%=flag%>%);
            filter: progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);
        }
    </style>
</head>
<body>

</body>
</html>
