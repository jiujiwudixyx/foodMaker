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
  <title>厨艺到家</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="alternate icon" type="image/png" href="../../i/favicon.png">
  <link rel="stylesheet" href="../../css/amazeui.min.css"/>
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

    .get-btn {
      background: #fff;
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
      background: #0bb59b;
      padding: 50px 0;
    }

    .hope-img {
      text-align: center;
    }

    .hope-hr {
      border-color: #149C88;
    }

    .hope-title {
      font-size: 140%;
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
      padding: 30px 0 50px 0;
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
<%--<header class="am-topbar am-topbar-fixed-top">
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
        <li><a href="<%=basePath %>order/toAddOrder">立即预定</a></li>
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
</header>--%>
<%@ include file="z_user_nav_top.jsp" %>

<div class="am-slider am-slider-default"  data-am-flexslider="{playAfterPaused: 4000}">
  <ul class="am-slides">
    <li><img src="../../i/index_banner1.jpg" /></li>
    <li><img src="../../i/index_banner2.jpg" /></li>

  </ul>
</div>






<div class="detail">
  <div class="am-g am-container">
    <div class="am-u-lg-12">
      <h2 class="detail-h2">基于JavaEE的在线预约厨师上门服务平台</h2>

      <div class="am-g">
        <div class="am-u-lg-4 am-u-md-6 am-u-sm-12 detail-mb ">
          <center>
          <img class="" src="../../i/quickly.png" alt="Generic placeholder image" width="140" height="140">
          <h3 class="detail-h3">
            <i class="am-icon-mobile am-icon-sm"></i>
            快捷方便
          </h3>

          <p class="detail-p">
            多平台、多渠道预定方式；在线支付；快速响应方便快捷，坐等厨师上门
          </p>
          </center>
        </div>
        <div class="am-u-lg-4 am-u-md-6 am-u-sm-12 detail-mb">
          <center>
          <img class="" src="../../i/service.png" alt="Generic placeholder image" width="140" height="140">
          <h3 class="detail-h3">
            <i class="am-icon-cogs am-icon-sm"></i>
            贴心服务
          </h3>

          <p class="detail-p">
            厨师服务过程中让用户享受放心、透明、安全、满意的服务
          </p>
          </center>
        </div>
        <div class="am-u-lg-4 am-u-md-6 am-u-sm-12 detail-mb">
          <center>
          <img class="" src="../../i/vegetable.png" alt="Generic placeholder image" width="140" height="140">
          <h3 class="detail-h3">
            <i class="am-icon-check-square-o am-icon-sm"></i>
            六大菜系
          </h3>

          <p class="detail-p">
            川、湘、鲁、粤、本、东北菜六大菜系专业认证厨师 供您选择，在家享受全国各大美食
          </p>
          </center>
        </div>

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
  <p>© 2018  <a href="http://www.reallct.cn" target="_blank">www.reallct.cn</a> by 熊宇轩</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="../../js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="../../js/jquery.min.js"></script>
<!--<![endif]-->
<script src="../../js/amazeui.min.js"></script>
</body>
</html>
