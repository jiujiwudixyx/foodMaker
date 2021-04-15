<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + appPath + "/";%>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>厨艺到家-管理员</title>
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




<%@ include file="z_admin_nav_top.jsp" %>



<div class="hope ">
  <div class="am-g am-container ">
    <div class="am-u-lg-4 am-u-md-6 am-u-sm-12 hope-img">
    </div>
    <div class="am-u-lg-8 am-u-md-6 am-u-sm-12">
      <img src="../../i/landing.png" alt="" data-am-scrollspy="{animation:'slide-left', repeat: false}">
      <hr class="am-article-divider am-show-sm-only hope-hr">
    </div>
  </div>
</div>


<div class="mainmessage">
  <div class="am-g ">
    <%@ include file="z_admin_nav_slide.jsp" %>

    <div class="am-u-lg-10" style="margin-bottom: 250px;">
        <h3 class="about-title about-color">管理员-总览</h3>
        <hr>
        <center>
        <p>系统已正常运行<span style="font-size: 30px;color: #f52727;"> 165 </span>天</p>
          <p>注册厨师<span style="font-size: 30px;color: #2ab1f5;"> 85 </span>&ensp;&ensp;&ensp;&ensp;&ensp;注册用户<span style="font-size: 30px;color: #2ab1f5;"> 399 </span>人</p>

          <p>订单共<span style="font-size: 30px;color: #24f528;"> 256 </span>笔&ensp;&ensp;&ensp;&ensp;&ensp;待接单<span style="font-size: 30px;color: #24f528;"> 16 </span>笔&ensp;&ensp;&ensp;&ensp;&ensp;未完成<span style="font-size: 30px;color: #24f528;"> 30 </span>笔</p>

        </center>
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


</script>
</body>
</html>
