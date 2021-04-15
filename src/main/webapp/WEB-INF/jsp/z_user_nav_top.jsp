<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <li><a href="<%=basePath %>order/toAddOrder">立即预定</a></li>
        <li><a href="#">优惠活动</a></li>
        <li class="am-dropdown" data-am-dropdown>
          <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
            客户端下载 <span class="am-icon-caret-down"></span>
          </a>
          <ul class="am-dropdown-content">

            <li><a href="${path}/page/toDownload">Android版</a></li>
            <li><a href="${path}/page/toDownload">ios版</a></li>

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
