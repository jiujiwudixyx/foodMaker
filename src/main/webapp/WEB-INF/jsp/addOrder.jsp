<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";%>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>厨艺到家-新建订单</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="alternate icon" type="image/png" href="../../i/favicon.png">
  <link rel="stylesheet" href="../../css/amazeui.min.css"/>
  <link rel="stylesheet" href="../../css/amazeui.datetimepicker.css"/>
  <style>
    .get {
      background: #1E5B94;
      color: #fff;
      text-align: center;
      padding: 100px 0;
    }

    .get-title {
      font-size: 200%;
      border: 2px solid #fff;
      padding: 20px;
      display: inline-block;
    }



    .detail {
      background: #fff;
    }

    .detail-h2 {
      text-align: center;
      font-size: 150%;
      margin: 40px 0;
    }

    .detail-h3 {
      color: #1f8dd6;
    }

    .detail-p {
      color: #7f8c8d;
    }

    .detail-mb {
      margin-bottom: 30px;
    }

    .hope {
      background: #3bb4f2;
      padding: 20px 0;
    }




    .hope-img {
      text-align: center;
    }

    .hope-hr {
      border-color: #149C88;
    }

    .hope-title {

      color: #ffffff;
    }

    .about {
      background: #fff;
      padding: 40px 0;
      color: #7f8c8d;
    }

    .about-color {
      color: #34495e;
    }

    .about-title {
      font-size: 180%;

      text-align: center;
    }

    .footer p {
      color: #7f8c8d;
      margin: 0;
      padding: 15px 0;
      text-align: center;
      background: #2d3e50;
    }
  </style>
</head>
<body>
<%@ include file="z_user_nav_top.jsp" %>




<div class="hope">
  <div class="am-g am-container">
    <div class="am-u-lg-4 am-u-md-6 am-u-sm-12 hope-img">
    </div>
    <div class="am-u-lg-8 am-u-md-6 am-u-sm-12">
      <img src="../../i/landing.png" alt="" data-am-scrollspy="{animation:'slide-left', repeat: false}">
      <hr class="am-article-divider am-show-sm-only hope-hr">
    </div>
  </div>
</div>





<div class="about">
  <div class="am-g am-container">
    <div class="am-u-lg-12">
      <h3 class="about-title about-color">新建订单</h3>



      <div class="am-center" style="width: 536px;">
        <form class="am-form" action="<%=basePath %>/order/addOrder">

          <label for="orderAddress" class="about-color">用餐地址：</label>
          <input id="orderAddress" name="orderAddress" type="text" placeholder="精确到门牌号，例如：“山西省太原市万柏林区迎泽西大街1号”">
          <br/>




            <label for="orderTimeService" class="about-color">用餐时间：</label>


          <div class="am-input-group date" id="datetimepicker"  data-date-format="yyyy-mm-dd hh:ii">
            <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
            <input size="16" type="text" placeholder="请选择用餐日期" class="am-form-field" id="orderTimeService" name="orderTimeService" readonly>

          </div>






          <br/>
          <label for="orderCaixi" class="about-color">选择菜系：</label>
            <select id="orderCaixi" name="orderCaixi">
                <option>--下拉选择--</option>
                <option>川菜</option>
                <option>湘菜</option>
                <option>鲁菜</option>
                <option>粤菜</option>
                <option>本帮菜</option>
                <option>东北菜</option>
            </select>

          <br/>
          <label for="orderTaocan" class="about-color">选择套餐：</label>
            <select id="orderTaocan" name="orderTaocan">
                <option>--下拉选择--</option>
                <option>39元两菜一汤</option>
                <option>59元四菜一汤</option>
                <option>99元八菜两汤</option>
                <option>129元十二菜三汤</option>

            </select>
          <br/>
          <label for="orderNote" class="about-color">备注：</label>
          <textarea id="orderNote" name="orderNote" placeholder="填写口味偏好，忌口等信息..."></textarea>


          <center>

            <br/>
            <button type="submit" class="am-btn am-btn-primary am-btn-xl am-round" style="width: 428px;"><i class="am-icon-check"></i> 提 交</button>
            <br/>

          </center>
        </form>
        <hr class="am-article-divider am-show-sm-only">
      </div>




    </div>
  </div>
</div>

<div class="get">
    <div class="am-g">
        <div class="am-u-lg-12">
            <h1 class="get-title">厨艺到家-基于JavaEE的在线预约厨师上门服务平台</h1>

            <p>
                江西理工大学 能源与机械工程 熊宇轩
            </p>

            <a href="${path}/page/toLoginChef"> <button type="button" class="am-btn am-btn-success am-btn-xl am-round"><i class="am-icon-check"></i> 厨师登录</button></a>

            <a href="${path}/page/toLoginAdmin"> <button type="button" class="am-btn am-btn-primary am-btn-xl am-round" ><i class="am-icon-check"></i> 管理员登录</button></a>
        </div>
    </div>
</div>

<footer class="footer">
    <p>© 2021  <a href="https://www.baidu.com" target="_blank">www.baidu.com</a> by 熊宇轩</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="webapp/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="../../js/jquery.min.js"></script>
<!--<![endif]-->
<script src="../../js/amazeui.min.js"></script>
<script src="../../js/amazeui.datetimepicker.min.js"></script>
<script type="text/javascript" src="../../js/amazeui.datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script>

     $('#datetimepicker').datetimepicker({
        language:  'zh-CN'

     });
     $('#datetimepicker').initData();


</script>
<%--<script>--%>
    <%--$(function() {--%>
        <%--var nowTemp = new Date();--%>
        <%--var nowDay = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0).valueOf();--%>
        <%--var nowMoth = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), 1, 0, 0, 0, 0).valueOf();--%>
        <%--var nowYear = new Date(nowTemp.getFullYear(), 0, 1, 0, 0, 0, 0).valueOf();--%>
        <%--var $orderTimeService = $('#orderTimeService');--%>
        <%--console.log(nowTemp)--%>
        <%--console.log(nowDay)--%>
        <%--console.log(nowMoth)--%>
        <%--console.log(nowYear)--%>


        <%--var checkin = $orderTimeService.datepicker({--%>
            <%--onRender: function(date, viewMode) {--%>
                <%--// 默认 days 视图，与当前日期比较--%>
                <%--var viewDate = nowDay;--%>

                <%--switch (viewMode) {--%>
                    <%--// moths 视图，与当前月份比较--%>
                    <%--case 1:--%>
                        <%--viewDate = nowMoth;--%>
                        <%--break;--%>
                    <%--// years 视图，与当前年份比较--%>
                    <%--case 2:--%>
                        <%--viewDate = nowYear;--%>
                        <%--break;--%>
                <%--}--%>

                <%--return date.valueOf() < viewDate ? 'am-disabled' : '';--%>
            <%--}--%>
        <%--}).on('changeDate.datepicker.amui', function(ev) {--%>
            <%--if (ev.date.valueOf() > nowDay.date.valueOf()) {--%>
                <%--var newDate = new Date(ev.date)--%>
                <%--newDate.setDate(newDate.getDate() + 1);--%>
            <%--}--%>
            <%--checkin.close();--%>
        <%--}).data('amui.datepicker');--%>



    <%--});--%>
<%--</script>--%>
</body>
</html>
