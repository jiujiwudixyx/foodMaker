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
  <title>厨艺到家-厨师端</title>
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
      <a href="#">厨艺到家-厨师端</a>
    </h1>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
            data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="collapse-head">


      <div class="am-topbar-right">
        <a href="${path }/page/toRegisterChef">

        <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm"><span class="am-icon-pencil"></span> 注册</button>
        </a>
      </div>

      <div class="am-topbar-right">
        <a href="${path }/page/toLoginChef">
        <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm"><span class="am-icon-user"></span> 登录</button>
        </a>
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
      <h3 class="about-title about-color">厨师注册</h3>



      <div class="am-center" style="width: 536px;">
        <form class="am-form">

          <label for="chefName" class="about-color">姓名：</label>
          <input id="chefName" name="chefName" type="text">
          <br/>
          <label for="chefPassWord" class="about-color">密码：</label>
          <input id="chefPassWord" name="chefPassWord" type="password">
          <br/>
          <label for="chefPassWord2" class="about-color">确认密码：</label>
          <input id="chefPassWord2"  name="chefPassWord2" type="password">
          <br/>
          <label for="chefPhone" class="about-color">手机号码：</label>
          <input id="chefPhone"  name="chefPhone" type="tel">
          <br/>
          <label for="chefCaixi" class="about-color">擅长菜系：</label>
          <input id="chefCaixi"  name="chefCaixi" type="tel">
          <br/>

          <center>

            <br/>
            <button type="button" class="am-btn am-btn-primary am-btn-xl am-round" style="width: 428px;" onclick="register()"><i class="am-icon-check"></i> 注 册</button>
            <br/>

          </center>
        </form>
        <script type="text/javascript">
            function register() {
                repassword();
                var form = document.forms[0];
                form.action = "${path}/chef/register";
                form.method = "post";
                form.submit();
            }
            function repassword() {
                var chefPassWord = document.getElementById("chefPassWord").value;
                var chefPassWord2 = document.getElementById("chefPassWord2").value;
                if(chefPassWord!=chefPassWord2){
                    window.alert("您输入的密码与确认密码不一致，请重新输入。");
                    form.chefPassWord2.focus();
                    return false;

                }
                return true;
            }
        </script>
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
</body>
</html>
