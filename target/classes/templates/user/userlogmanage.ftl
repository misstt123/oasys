<#include "/common/commoncss.ftl">
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-4">
		<h1 style="font-size: 24px; margin: 0;" class="">用户操作历史记录</h1>
	</div>
	<div class="col-md-8 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户操作历史记录</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<#include  "/user/userlogmanagetable.ftl">
	</div>
</div>
