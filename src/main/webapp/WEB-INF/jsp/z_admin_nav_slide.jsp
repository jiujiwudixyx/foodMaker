<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="am-u-lg-2 ">
    <ul class="am-list admin-sidebar-list" id="collapase-nav-1">

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#company-nav'}" href="${path}/page/toAdmin">
                <i class="am-icon-home am-margin-left-sm"></i> 总览
            </a>

        </li>


        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#user-nav'}">
                <i class="am-icon-table am-margin-left-sm"></i> 订单管理 <i class="am-icon-angle-right am-fr am-margin-right"></i>

            </a>
            <ul class="am-list am-collapse admin-sidebar-sub" id="user-nav">
                <li><a href="${path}/admin/order1"><i class="am-icon-user am-margin-left-sm"></i> 待接单 </a></li>
                <li><a href="${path}/admin/order2"><i class="am-icon-user am-margin-left-sm"></i> 未完成 </a></li>
                <li><a href="${path}/admin/order3"><i class="am-icon-user am-margin-left-sm"></i> 已完成 </a></li>
            </ul>
        </li>

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#company-nav'}" href="${path}/admin/listChef">
                <i class="am-icon-coffee am-margin-left-sm"></i> 厨师管理
            </a>

        </li>

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#role-nav'}" href="${path}/admin/listUser">
                <i class="am-icon-money am-margin-left-sm"></i> 用户管理
            </a>

        </li>
    </ul>
</div>
