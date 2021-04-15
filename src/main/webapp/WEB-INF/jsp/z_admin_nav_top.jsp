<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="am-topbar am-topbar-fixed-top">
    <div class="am-container">
        <h1 class="am-topbar-brand">
            <a href="#">厨艺到家-后台系统</a>
        </h1>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
                data-am-collapse="{target: '#collapse-head'}"><span class="am-sr-only">导航切换</span> <span
                class="am-icon-bars"></span></button>


        <div class="am-topbar-right">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li class="am-dropdown" data-am-dropdown>
                    <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                        ${aname} <span class="am-icon-caret-down"></span>
                    </a>
                    <ul class="am-dropdown-content">

                        <li><a href="${path}/admin/exit">退出</a></li>

                    </ul>
                </li>


            </ul>
        </div>

    </div>
    </div>
</header>
