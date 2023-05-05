<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022-07-28
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.javaweb.unmanned_sailboat.util.DBconn,java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <script>
        var state=<%=session.getAttribute("state_user")%>
        if(state==null){
            alert("请先登录用户账号！");
            window.location.href = "主页.jsp"
        }
    </script>
    <title>基于无人帆船的水质检测数据</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <script src="https://unpkg.com/echarts@3.5.3/dist/echarts.js"  charset="utf-8"></script>
    <script src="js/jquery-1.8.0.min.js"  charset="utf-8"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" ></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>


    <style>
        .bjimg {/*背景*/
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            min-width: 1000px;
            z-index: -10;
            zoom: 1;
            background-repeat: no-repeat;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-position: center 0;
            background-image: url("img/二号海洋.jpg");
            /*background: #5433FF;  /* fallback for old browsers */
            /*background: -webkit-linear-gradient(to right, #A5FECB, #20BDFF, #5433FF);  /* Chrome 10-25, Safari 5.1-6 */
            /*background: linear-gradient(to right, #A5FECB, #20BDFF, #5433FF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
        .page-header{/*主标题*/
            color: black;
        }
        .container{/*页面宽度*/
            width: auto;
        }
        .showTime{
            position: relative;
            left: 16px;
        }
        .map{
            margin-left:500px;
            margin-top:50px;
            width:800px;
            height:500px;
        }

    </style>
    <%
        DBconn.init();
        ResultSet rs= DBconn.selectSql("select * from datas");
    %>
    <!-- 连接数据库-->
</head>
<body>
<div class="bjimg"></div>
<div class="container" style="top:0px">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="page-header">
                        <p style="font-size: 40px;font-family: 华光标题宋_CNKI;">
                            基于无人帆船的水质检测数据管理平台
                        </p>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-2 column">
                    <div class="panel-group" id="panel-196921">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a class="panel-title" data-toggle="collapse" data-parent="#panel-196921" href="#panel-element-197407">页面选项</a>
                            </div>
                            <div id="panel-element-197407" class="panel-collapse collapse in">
                                <a href=" 主页.jsp">
                                    <div class="panel-body">
                                        数据分析一
                                    </div>
                                </a>
                                <a href=" 项目简介.jsp">
                                    <div class="panel-body">
                                        数据分析二
                                    </div>
                                </a>
                                <a href="无人帆船使用说明.jsp">
                                    <div class="panel-body">
                                        数据分析三
                                    </div>
                                </a>
                                <a href="资金流动.jsp" >
                                    <div class="panel-body">
                                        数据分析四
                                    </div>
                                </a>
                                <a href="友情链接.jsp">
                                    <div class="panel-body">
                                        数据分析五
                                    </div>
                                </a>
                                <a href="管理.jsp">
                                    <div class="panel-body">
                                        数据分析六
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a class="panel-title" data-toggle="collapse" data-parent="#panel-196921" href="#panel-element-457207">了解测量数据</a>
                            </div>
                            <div id="panel-element-457207" class="panel-collapse collapse in">
                                <a href="https://baike.baidu.com/item/%E9%A3%8E%E9%80%9F/75302?fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        风速（单位：级）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E6%B0%A2%E7%A6%BB%E5%AD%90%E6%B5%93%E5%BA%A6%E6%8C%87%E6%95%B0/6837208?fromtitle=PH&fromid=5582177&fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        PH值（单位：1）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E6%BA%B6%E8%A7%A3%E6%80%A7%E6%80%BB%E5%9B%BA%E4%BD%93/6469941?fromtitle=TDS&fromid=4444389&fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        TDS（单位：mg/L）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E6%BA%B6%E8%A7%A3%E6%B0%A7/789137?fromtitle=do&fromid=14078907" target="_blank">
                                    <div class="panel-body">
                                        溶解氧（单位：mg/L）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E6%B5%8A%E5%BA%A6/9809604?fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        浊度（单位：mg/L）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E5%8C%96%E5%AD%A6%E9%9C%80%E6%B0%A7%E9%87%8F/317541?fromtitle=COD&fromid=1016732&fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        COD（单位：mg/L）
                                    </div>
                                </a>
                                <a href="https://baike.baidu.com/item/%E6%B0%A8%E6%B0%AE/3633104?fr=aladdin" target="_blank">
                                    <div class="panel-body">
                                        氨氮（单位：mg/L）
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-10 column">
                    <div class="tabbable" id="tabs-80161" style="background: white;border-radius: 6px">
                        <ul class="nav nav-tabs" style="">
                            <li class="active">
                                <a href="#panel-29355100" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">连接无人帆船</font> </a>
                            </li>
                            <li>
                                <a href="#panel-293551" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">实时数据</font> </a>
                            </li>
                            <li>
                                <a href="#panel-37334" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">往期数据（表格）</font> </a>
                            </li>
                            <li class="">
                                <a href="#panel-293551001" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">PH值</font> </a><!--PH值-->
                            </li>
                            <li class="">
                                <a href="#panel-293551002" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">TDS</font> </a><!--TDS-->
                            </li>
                            <li class="">
                                <a href="#panel-293551003" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">溶解氧</font> </a><!--溶解氧-->
                            </li>
                            <li class="">
                                <a href="#panel-293551004" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">浊度</font> </a><!--浊度-->
                            </li>
                            <li class=>
                                <a href="#panel-293551005" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">COD</font> </a><!--COD-->
                            </li>
                            <li class="">
                                <a href="#panel-293551006" data-toggle="tab"><font color="black" style="font-weight: bolder;font-size: 17px">氨氮</font> </a><!--氨氮-->
                            </li>
                        </ul>
                        <div class="tab-content" style=" border-width: 2px">
                            <div class="tab-pane active" id="panel-29355100"><!--连接无人船-->
                                <div style="background: white;border-radius: 6px;height: 699px;width: 1000px;">

                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551"><!--实时数据-->
                                <div>
                                    <div class="showTime" style="font-size: large;left: 6px;font-family: 微软雅黑">当&nbsp;前&nbsp;时&nbsp;间：2021年2月19-20时35分16秒</div>
                                    <script>
                                        var t = null;
                                        t = setTimeout(time, 1000); //開始运行
                                        function time() {
                                            clearTimeout(t); //清除定时器
                                            dt = new Date();
                                            var y = dt.getFullYear();
                                            var mt = dt.getMonth() + 1;
                                            var day = dt.getDate();
                                            var h = dt.getHours(); //获取时
                                            var m = dt.getMinutes(); //获取分
                                            var s = dt.getSeconds(); //获取秒
                                            document.querySelector(".showTime").innerHTML =
                                                "当前时间：" +
                                                y +
                                                "年" +
                                                mt +
                                                "月" +
                                                day +
                                                "-" +
                                                h +
                                                "时" +
                                                m +
                                                "分" +
                                                s +
                                                "秒";
                                            t = setTimeout(time, 1000); //设定定时器，循环运行
                                        }
                                    </script><!-- 实时时间-->
                                    <div id="container" style="width: auto; height: 650px; margin: 0 auto;background: white;border-radius: 6px;"></div>
                                    <form >
                                        <div>

                                            &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="data_a" value="PH">PH&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="data_a" value="TDS">TDS&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="data_a" value="O2">溶解氧&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="data_a" value="zhuodu">浊度&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="data_a" value="COD">COD&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="data_a" value="NH">氨氮&nbsp;&nbsp;&nbsp;&nbsp;
                                        </div>
                                    </form>

                                    <%
                                        String d = request.getParameter("data_a");
                                        int max = 0;
                                        int min = 0;

                                        if(d=="PH"){
                                            max=8;
                                            min=7;
                                        }
                                        else if(d=="TDS"){
                                            max=30100;
                                            min=29900;
                                        }
                                        else if(d=="O2"){
                                            max=10;
                                            min=5;
                                        }
                                        else if(d=="zhuodu"){
                                            max=2;
                                            min=1;
                                        }
                                        else if(d=="COD"){
                                            max=10;
                                            min=5;
                                        }
                                        else if(d=="NH"){
                                            max=8;
                                            min=5;
                                        }
                                        int max_=max;
                                        int min_=min;
                                    %>
                                    <script language="JavaScript">
                                        $(document).ready(function() {
                                            var chart = {
                                                type: 'spline',
                                                animation: Highcharts.svg, // don't animate in IE < IE 10.
                                                marginRight: 10,
                                                events: {
                                                    load: function () {
                                                        // set up the updating of the chart each second
                                                        var series = this.series[0];
                                                        setInterval(function () {
                                                            var x = (new Date()).getTime(), // current time

                                                                y = Math.random();//设定y的值

                                                            series.addPoint([x, y], true, true);
                                                        }, 1000);
                                                    }
                                                }
                                            };
                                            var title = {
                                                text: '无人帆船监测数据'
                                            };
                                            var xAxis = {
                                                type: 'datetime',
                                                tickPixelInterval: 150
                                            };
                                            var yAxis = {
                                                title: {
                                                    text: '数据值'
                                                },
                                                plotLines: [{
                                                    value: 0,
                                                    width: 1,
                                                    color: '#808080'
                                                }]
                                            };
                                            var tooltip = {
                                                formatter: function () {
                                                    return '<b>' + this.series.name + '</b><br/>' +
                                                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                                                        Highcharts.numberFormat(this.y, 2);
                                                }
                                            };
                                            var plotOptions = {
                                                area: {
                                                    pointStart: 1940,
                                                    marker: {
                                                        enabled: false,
                                                        symbol: 'circle',
                                                        radius: 2,
                                                        states: {
                                                            hover: {
                                                                enabled: true
                                                            }
                                                        }
                                                    }
                                                }
                                            };
                                            var legend = {
                                                enabled: false
                                            };
                                            var exporting = {
                                                enabled: false
                                            };
                                            var series= [{
                                                name: 'value',
                                                data: (function () {
                                                    // generate an array of random data

                                                    var data = [],time = (new Date()).getTime(),i;
                                                    for (i = -19; i <= 0; i += 1) {
                                                        data.push({
                                                            x: time + i * 1000,
                                                            y: Math.random()
                                                        });
                                                    }
                                                    return data;
                                                }())
                                            }];

                                            var json = {};
                                            json.chart = chart;
                                            json.title = title;
                                            json.tooltip = tooltip;
                                            json.xAxis = xAxis;
                                            json.yAxis = yAxis;
                                            json.legend = legend;
                                            json.exporting = exporting;
                                            json.series = series;
                                            json.plotOptions = plotOptions;


                                            Highcharts.setOptions({
                                                global: {
                                                    useUTC: false
                                                }
                                            });
                                            $('#container').highcharts(json);

                                        });
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-37334">
                                <div style="background: white;border-radius: 6px;height: 699px;width: 100%;">
                                    <div class="table_user" style="background: white;border-radius: 6px; ">
                                        <table class="table table-striped" id="table">
                                            <font color="black" style="font-family: 微软雅黑;font-size: 17px;top: 2px;position: relative"> &nbsp;水 质 检 测 最 新 数 据</font>
                                            <thead>
                                            <tr>
                                                <th>时间</th>
                                                <th>地点</th>
                                                <th>天气</th>
                                                <th>风向</th>
                                                <th>风速</th>
                                                <th>水温（℃）</th>
                                                <th>PH</th>
                                                <th>TDS</th>
                                                <th>溶解氧</th>
                                                <th>浊度</th>
                                                <th>COD</th>
                                                <th>氨氮</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                for(int i=0;i<180;i++) {
                                                    if(!rs.next()){
                                                        break;
                                                    }
                                                    String day= rs.getString(1);
                                                    String place= rs.getString(2);
                                                    String weather= rs.getString(3);
                                                    String wind_direction= rs.getString(4);
                                                    int wind_speed= rs.getInt(5);
                                                    int water_temperature= rs.getInt(6);
                                                    int PH= rs.getInt(7);
                                                    int TDS= rs.getInt(8);
                                                    int O2= rs.getInt(9);
                                                    int zhuodu= rs.getInt(10);
                                                    int COD= rs.getInt(11);
                                                    int NH_N=rs.getInt(12);
                                            %>
                                            <tr>
                                                <td><%=day%></td>
                                                <td><%=place%></td>
                                                <td><%=weather%></td>
                                                <td><%=wind_direction%></td>
                                                <td><%=wind_speed%></td>
                                                <td><%=water_temperature%></td>
                                                <td><%=PH%></td>
                                                <td><%=TDS%></td>
                                                <td><%=O2%></td>
                                                <td><%=zhuodu%></td>
                                                <td><%=COD%></td>
                                                <td><%=NH_N%></td>
                                            </tr>
                                            <%
                                                }
                                                rs.close();
                                            %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551001"><!--PH值-->
                                <div class="x" style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph1" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript" src="js/echarts.min.js"></script>
                                    <script src="js/echarts.js" charset="UTF-8"></script>
                                    <script type="text/javascript" charset='UTF-8'>
                                        var dom = document.getElementById('ph1');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};
                                        var option;
                                        option = {
                                            title: {
                                                text: '水域PH值随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['PH值']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                    DBconn.init();
                                                    ResultSet rs_ph_x= DBconn.selectSql("select * from datas order by day desc");
                                                    String[] PH_x=new String[100];
                                                    for(int i=0;i<100;i++){
                                                        if(!rs_ph_x.next()){
                                                            break;
                                                        }
                                                        String day= rs_ph_x.getString(1);
                                                        PH_x[i]=day;
                                                    }

                                                %>
                                                data: [
                                                    '<%=PH_x[9]%>',
                                                    '<%=PH_x[8]%>',
                                                    '<%=PH_x[7]%>',
                                                    '<%=PH_x[6]%>',
                                                    '<%=PH_x[5]%>',
                                                    '<%=PH_x[4]%>',
                                                    '<%=PH_x[3]%>',
                                                    '<%=PH_x[2]%>',
                                                    '<%=PH_x[1]%>',
                                                    '<%=PH_x[0]%>'
                                                ]
                                                <%rs_ph_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: 'PH',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_ph_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] PH_y=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_ph_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_ph_y.getString(7);
                                                            PH_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=PH_y[9]%>',
                                                        '<%=PH_y[8]%>',
                                                        '<%=PH_y[7]%>',
                                                        '<%=PH_y[6]%>',
                                                        '<%=PH_y[5]%>',
                                                        '<%=PH_y[4]%>',
                                                        '<%=PH_y[3]%>',
                                                        '<%=PH_y[2]%>',
                                                        '<%=PH_y[1]%>',
                                                        '<%=PH_y[0]%>'
                                                    ]
                                                    <%rs_ph_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                    <!--div class="" style="float: left">

                                    </div>
                                    <table id="datatabl">
                                        <thead>
                                        <tr><th></th><th>  &nbsp;&nbsp; PH值 &nbsp;&nbsp; </th></tr>
                                        </thead>
                                        <tbody>
                                        <%/*
                                            DBconn.init();
                                            ResultSet rs_ph= DBconn.selectSql("select * from datas");
                                            rs_ph.next();*/
                                        %>
                                        <%
                                            /*for(int i=0;i<70;i++){
                                                if(!rs_ph.next()){
                                                    break;
                                                }
                                                String day_ph= rs_ph.getString(1);
                                                int PH_ph= rs_ph.getInt(7);*/
                                        %>

                                        <tr><th></th><td> &nbsp;&nbsp;  &nbsp;&nbsp; </td></tr>
                                        </tbody>
                                    </table>
                                    <table id="datatable">
                                        <thead>
                                        <tr><th></th><th>Jane</th></tr>
                                        </thead>
                                        <tbody>
                                        <tr><th>Apples</th><td>3</td></tr>
                                        <tr><th>Pears</th><td>2</td></tr>
                                        <tr><th>Plums</th><td>5</td></tr>
                                        <tr><th>Bananas</th><td>1</td></tr>
                                        <tr><th>Oranges</th><td>2</td></tr>
                                        </tbody>
                                    </table>

                                    <script src="https://code.highcharts.com/modules/data.js"></script>
                                    <script language="JavaScript">
                                        $(document).ready(function() {

                                            var data = {
                                                table: 'datatable'
                                            };
                                            var chart = {
                                                type: 'line'
                                            };
                                            var title = {
                                                text: '水域PH值随时间变化'
                                            };
                                            var yAxis = {
                                                allowDecimals: false,
                                                title: {
                                                    text: 'PH值'
                                                }
                                            };
                                            var tooltip = {
                                                formatter: function () {
                                                    return '<b>' + this.series.name + '</b><br/>' +
                                                        this.point.y + ' ' + this.point.name.toLowerCase();
                                                }
                                            };
                                            var credits = {
                                                enabled: false
                                            };

                                            var json = {};
                                            json.chart = chart;
                                            json.title = title;
                                            json.data = data;
                                            json.yAxis = yAxis;
                                            json.credits = credits;
                                            json.tooltip = tooltip;
                                            $('#ph1').highcharts(json);
                                        });
                                    </script-->
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551002"><!--TDS-->
                                <div class="tab-table"></div>
                                <div style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph2" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript">
                                        var dom = document.getElementById('ph2');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};

                                        var option;
                                        option = {
                                            title: {
                                                text: '水域TDS随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['TDS值']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                        DBconn.init();
                                                        ResultSet rs_tds_x= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] tds_x=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_tds_x.next()){
                                                                break;
                                                            }
                                                            String day= rs_tds_x.getString(1);
                                                            tds_x[i]=day;
                                                        }

                                                    %>
                                                data: [
                                                    '<%=tds_x[9]%>',
                                                    '<%=tds_x[8]%>',
                                                    '<%=tds_x[7]%>',
                                                    '<%=tds_x[6]%>',
                                                    '<%=tds_x[5]%>',
                                                    '<%=tds_x[4]%>',
                                                    '<%=tds_x[3]%>',
                                                    '<%=tds_x[2]%>',
                                                    '<%=tds_x[1]%>',
                                                    '<%=tds_x[0]%>'
                                                ]
                                                <%rs_tds_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: 'TDS',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_tds_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] tds_y=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_tds_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_tds_y.getString(8);
                                                            tds_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=tds_y[9]%>',
                                                        '<%=tds_y[8]%>',
                                                        '<%=tds_y[7]%>',
                                                        '<%=tds_y[6]%>',
                                                        '<%=tds_y[5]%>',
                                                        '<%=tds_y[4]%>',
                                                        '<%=tds_y[3]%>',
                                                        '<%=tds_y[2]%>',
                                                        '<%=tds_y[1]%>',
                                                        '<%=tds_y[0]%>'
                                                    ]
                                                    <%rs_tds_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551003"><!--溶解氧-->
                                <div class="tab-table"></div>
                                <div style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph3" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript">
                                        var dom = document.getElementById('ph3');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};

                                        var option;
                                        option = {
                                            title: {
                                                text: '水域溶解氧随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['溶解氧']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                        DBconn.init();
                                                        ResultSet rs_o_x = DBconn.selectSql("select * from datas order by day desc");
                                                        String[] o_x = new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_o_x.next()){
                                                                break;
                                                            }
                                                            String day= rs_o_x.getString(1);
                                                            o_x[i] = day;
                                                        }

                                                    %>
                                                data: [
                                                    '<%=o_x[9]%>',
                                                    '<%=o_x[8]%>',
                                                    '<%=o_x[7]%>',
                                                    '<%=o_x[6]%>',
                                                    '<%=o_x[5]%>',
                                                    '<%=o_x[4]%>',
                                                    '<%=o_x[3]%>',
                                                    '<%=o_x[2]%>',
                                                    '<%=o_x[1]%>',
                                                    '<%=o_x[0]%>'
                                                ]
                                                <%rs_o_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: '溶解氧',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_o_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] o_y=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_o_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_o_y.getString(9);
                                                            o_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=o_y[9]%>',
                                                        '<%=o_y[8]%>',
                                                        '<%=o_y[7]%>',
                                                        '<%=o_y[6]%>',
                                                        '<%=o_y[5]%>',
                                                        '<%=o_y[4]%>',
                                                        '<%=o_y[3]%>',
                                                        '<%=o_y[2]%>',
                                                        '<%=o_y[1]%>',
                                                        '<%=o_y[0]%>'
                                                    ]
                                                    <%rs_o_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551004"><!--浊度-->
                                <div class="tab-table"></div>
                                <div style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph4" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript">
                                        var dom = document.getElementById('ph4');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};

                                        var option;
                                        option = {
                                            title: {
                                                text: '水域浊度随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['浊度']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                        DBconn.init();
                                                        ResultSet rs_z_x= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] z_x=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_z_x.next()){
                                                                break;
                                                            }
                                                            String day= rs_z_x.getString(1);
                                                            z_x[i]=day;
                                                        }

                                                    %>
                                                data: [
                                                    '<%=z_x[9]%>',
                                                    '<%=z_x[8]%>',
                                                    '<%=z_x[7]%>',
                                                    '<%=z_x[6]%>',
                                                    '<%=z_x[5]%>',
                                                    '<%=z_x[4]%>',
                                                    '<%=z_x[3]%>',
                                                    '<%=z_x[2]%>',
                                                    '<%=z_x[1]%>',
                                                    '<%=z_x[0]%>'
                                                ]
                                                <%rs_z_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: '浊度',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_z_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] z_y=new String[100];
                                                        for(int i=0;i<100;i++){
                                                            if(!rs_z_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_z_y.getString(10);
                                                            z_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=z_y[9]%>',
                                                        '<%=z_y[8]%>',
                                                        '<%=z_y[7]%>',
                                                        '<%=z_y[6]%>',
                                                        '<%=z_y[5]%>',
                                                        '<%=z_y[4]%>',
                                                        '<%=z_y[3]%>',
                                                        '<%=z_y[2]%>',
                                                        '<%=z_y[1]%>',
                                                        '<%=z_y[0]%>'
                                                    ]
                                                    <%rs_z_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551005"><!--COD-->
                                <div class="tab-table"></div>
                                <div style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph5" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript">
                                        var dom = document.getElementById('ph5');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};

                                        var option;
                                        option = {
                                            title: {
                                                text: '水域COD值随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['COD值']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                        DBconn.init();
                                                        ResultSet rs_c_x= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] c_x=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_c_x.next()){
                                                                break;
                                                            }
                                                            String day= rs_c_x.getString(1);
                                                            c_x[i]=day;
                                                        }

                                                    %>
                                                data: [
                                                    '<%=c_x[9]%>',
                                                    '<%=c_x[8]%>',
                                                    '<%=c_x[7]%>',
                                                    '<%=c_x[6]%>',
                                                    '<%=c_x[5]%>',
                                                    '<%=c_x[4]%>',
                                                    '<%=c_x[3]%>',
                                                    '<%=c_x[2]%>',
                                                    '<%=c_x[1]%>',
                                                    '<%=c_x[0]%>'
                                                ]
                                                <%rs_c_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: 'COD',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_c_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] c_y=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_c_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_c_y.getString(11);
                                                            c_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=c_y[9]%>',
                                                        '<%=c_y[8]%>',
                                                        '<%=c_y[7]%>',
                                                        '<%=c_y[6]%>',
                                                        '<%=c_y[5]%>',
                                                        '<%=c_y[4]%>',
                                                        '<%=c_y[3]%>',
                                                        '<%=c_y[2]%>',
                                                        '<%=c_y[1]%>',
                                                        '<%=c_y[0]%>'
                                                    ]
                                                    <%rs_c_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-293551006"><!--氨氮-->
                                <div class="tab-table"></div>
                                <div style="background: white;border-radius: 6px;height: 699px;width: auto;">
                                    <div id="ph6" style="width: 1380px ; height:700px"></div>
                                    <script type="text/javascript">
                                        var dom = document.getElementById('ph6');
                                        var myChart = echarts.init(dom, null, {
                                            renderer: 'canvas',
                                            useDirtyRect: false
                                        });
                                        var app = {};

                                        var option;
                                        option = {
                                            title: {
                                                text: '水域氨氮值随时间变化'
                                            },
                                            tooltip: {
                                                trigger: 'axis'
                                            },
                                            legend: {
                                                data: ['氨氮值']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            toolbox: {
                                                feature: {
                                                    saveAsImage: {}
                                                }
                                            },
                                            xAxis: {
                                                type: 'category',
                                                boundaryGap: false,
                                                <%
                                                        DBconn.init();
                                                        ResultSet rs_a_x= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] a_x=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_a_x.next()){
                                                                break;
                                                            }
                                                            String day= rs_a_x.getString(1);
                                                            a_x[i]=day;
                                                        }

                                                    %>
                                                data: [
                                                    '<%=a_x[9]%>',
                                                    '<%=a_x[8]%>',
                                                    '<%=a_x[7]%>',
                                                    '<%=a_x[6]%>',
                                                    '<%=a_x[5]%>',
                                                    '<%=a_x[4]%>',
                                                    '<%=a_x[3]%>',
                                                    '<%=a_x[2]%>',
                                                    '<%=a_x[1]%>',
                                                    '<%=a_x[0]%>'
                                                ]
                                                <%rs_a_x.close();%>
                                            },
                                            yAxis: {
                                                type: 'value'
                                            },
                                            series: [
                                                {
                                                    name: '氨氮',
                                                    type: 'line',
                                                    stack: 'Total',
                                                    <%
                                                        DBconn.init();
                                                        ResultSet rs_a_y= DBconn.selectSql("select * from datas order by day desc");
                                                        String[] a_y=new String[10];
                                                        for(int i=0;i<10;i++){
                                                            if(!rs_a_y.next()){
                                                                break;
                                                            }
                                                            String day= rs_a_y.getString(12);
                                                            a_y[i]=day;
                                                        }

                                                    %>
                                                    data: [
                                                        '<%=a_y[9]%>',
                                                        '<%=a_y[8]%>',
                                                        '<%=a_y[7]%>',
                                                        '<%=a_y[6]%>',
                                                        '<%=a_y[5]%>',
                                                        '<%=a_y[4]%>',
                                                        '<%=a_y[3]%>',
                                                        '<%=a_y[2]%>',
                                                        '<%=a_y[1]%>',
                                                        '<%=a_y[0]%>'
                                                    ]
                                                    <%rs_a_y.close();%>
                                                }
                                            ]
                                        };
                                        if (option && typeof option === 'object') {
                                            myChart.setOption(option);
                                        }

                                        window.addEventListener('resize', myChart.resize);
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    request. setCharacterEncoding("UTF-8");//设置字符编码集
    String name = (String) application.getAttribute("user"); //获取登录页面提交的用户名
%>
</body>
</html>