<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>厨艺到家-更新订单</title>
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
<header class="am-topbar am-topbar-fixed-top">
  <div class="am-container">
    <h1 class="am-topbar-brand">
      <a href="#">厨艺到家</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">
      <ul class="am-nav am-nav-pills am-topbar-nav">
        <li><a href="${path}/page/toIndex">首页</a></li>
        <li class="am-active"><a href="#">立即预定</a></li>
        <li><a href="#">优惠活动</a></li>
        <li class="am-dropdown" data-am-dropdown>
          <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
            客户端下载 <span class="am-icon-caret-down"></span>
          </a>
          <ul class="am-dropdown-content">

            <li><a href="#">Android版</a></li>
            <li><a href="#">ios版</a></li>

          </ul>
        </li>
      </ul>

      <div class="am-topbar-right">
        <ul class="am-nav am-nav-pills am-topbar-nav">
          <li class="am-dropdown" data-am-dropdown>
            <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
              ${uname} <span class="am-icon-caret-down"></span>
            </a>
            <ul class="am-dropdown-content">

              <li><a href="${path}/page/toMy">我的主页</a></li>

            </ul>
          </li>
          <li><a href="${path}/user/exit">退出</a></li>


        </ul>
      </div>

    </div>
  </div>
</header>



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
      <h3 class="about-title about-color">修改订单</h3>



      <div class="am-center" style="width: 536px;">
        <form class="am-form" action="${path}/order/updateOrder">
          <center><label  class="about-color">订单ID：</label>${order.orderId}
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <label  class="about-color">用户ID：</label>${order.userId}
          </center>
          <hr>
          <br/>
          <label for="orderAddress" class="about-color">用餐地址：</label>
          <input id="orderAddress" name="orderAddress" type="text" value="${order.orderAddress}">
          <br/>
          <label for="orderTimeService" class="about-color">用餐时间：</label>


          <div class="am-input-group date" id="datetimepicker" data-date="${order.orderTimeService}" data-date-format="yyyy-mm-dd hh:ii">
            <span class="am-input-group-label add-on"><i class="icon-th am-icon-calendar"></i></span>
            <input size="16" type="text" value="${order.orderTimeService}" class="am-form-field" name="orderTimeService" id="orderTimeService" readonly>

          </div>
          <br/>
          <label for="orderCaixi" class="about-color">选择菜系：</label>
            <select id="orderCaixi" name="orderCaixi">
                <option>${order.orderCaixi}</option>
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
                <option>${order.orderTaocan}</option>
                <option>39元两菜一汤</option>
                <option>59元四菜一汤</option>
                <option>99元八菜两汤</option>
                <option>129元十二菜三汤</option>

            </select>
          <br/>
          <label for="orderNote" class="about-color">备注：</label>
          <textarea id="orderNote" name="orderNote">${order.orderNote}</textarea>

          <input type="hidden" value=${order.userId} name="userId">
          <input type="hidden" value=${order.orderId} name="orderId">
          <center>

            <br/>
           <button type="submit" class="am-btn am-btn-warning am-btn-xl am-round" style="width: 200px;"><i class="am-icon-warning"></i> 确认修改</button>
              <a href="${path}/order/allOrder8"><button type="button" class="am-btn am-btn-primary am-btn-xl am-round" style="width: 200px;"><i class="am-icon-check"></i> 退出修改</button></a>
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
        江西理工大学 能源与机械工程学院 熊宇轩
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
</script>
</body>
</html>
