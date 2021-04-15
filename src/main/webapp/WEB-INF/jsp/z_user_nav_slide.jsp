<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="am-u-lg-3 ">
    <ul class="am-list admin-sidebar-list" id="collapase-nav-1">

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#company-nav'}" href="${path}/page/toMy">
                <i class="am-icon-home am-margin-left-sm"></i> 总览
            </a>

        </li>

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#user-nav'}">
                <i class="am-icon-table am-margin-left-sm"></i> 我的订单 <i class="am-icon-angle-right am-fr am-margin-right"></i>

            </a>
            <ul class="am-list am-collapse admin-sidebar-sub" id="user-nav">
                <li><a href="${path}/order/allOrder8"><span class="am-icon-table am-margin-left-sm"></span> 未完成 </a></li>
                <li><a href="${path}/order/allOrder9"><span class="am-icon-table am-margin-left-sm"></span> 已完成 </a></li>
            </ul>
        </li>

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#company-nav'}">
                <i class="am-icon-table am-margin-left-sm"></i> 我的钱包 <i class="am-icon-angle-right am-fr am-margin-right"></i>
            </a>
            <ul class="am-list am-collapse admin-sidebar-sub" id="company-nav">
                <li><a href="${path}/page/toMyWalletQuery"><span class="am-icon-table am-margin-left-sm"></span> 查询余额 </a></li>
                <li><a href="${path}/page/toMyWalletRecharge"><span class="am-icon-table am-margin-left-sm"></span> 充值 </a></li>
            </ul>
        </li>

        <li class="am-panel">
            <a data-am-collapse="{parent: '#collapase-nav-1', target: '#role-nav'}" href="${path}/user/myInfomationQuery">
                <i class="am-icon-table am-margin-left-sm"></i> 我的信息</a>
        </li>

    </ul>
</div>
