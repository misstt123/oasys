<div class="col-md-12 green" >
	<!--导航栏左侧按钮，-->
	<ul class="nav navbar-nav navbar-left" style="margin-left: -15px;">
		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-menu-hamburger"></span></a></li>
	</ul>
	<!--右侧导航栏-->
	<ul class="nav navbar-nav navbar-right moredeep">

		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-bell"></span><span class="badge blue-badge">3</span></a>
		</li>
		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-envelope"></span><span class="badge yellow-badge">3</span></a>
		</li>
		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-flag"></span><span class="badge red-badge">3</span></a>
		</li>
		<li class="dropdown">
		<!--设置导航栏头像面板--> 
		<a href="#" class="green-none white" data-toggle="dropdown">
				<img src="images/handsome.JPG" class="user-image" /> <span>罗祥</span>
		</a> <!--设置点击按钮弹出用户面板层-->
			<ul class="dropdown-menu" style="padding:0;">
				<li class="user-header green"><img src="images/handsome.JPG"
					class="img-circle" style="width: 100px;height:100px;" />
					<p class="white" style="">
						<span>CEO </span> / <span> 董事长</span><br> <small>超级管理员</small>
					</p></li>
				<li class="user-footer">
					<div class="pull-left">
						<a href="javascript:changepath('userpanel');" class="btn btn-default">用户面板</a>
					</div>
					<div class="pull-right">
						<a href="#" class="btn btn-danger">退出登录</a>
					</div>
				</li>
			</ul>
		</li>

		<li style="position: relative;"><a  id="history" class="green-none white" data-toggle="dropdown"><span
				class="glyphicon glyphicon-time"></span></a>
				
		<ul id="historypanel" class="dropdown-menu"
				style="position: absolute; background-color: #222d32;">
				<#include "/user/userlog.ftl"/>
		</ul>
	</li>
</ul>
</div>
<script>
	//从右往左滑动效果
	$(function() {
		var num = 1;
		$("#history").click(function() {
			num++;
			if (num % 2 == 0) {
				$("#historypanel").css({ //从右边飞入，使用绝对定位来操作 
					"width" : "230px",
					"right" : "-230px"
				}).show().animate({
					"right" : "0"
				}, "fast");
			} else
				$("#historypanel").animate({
					"width" : "toggle"
				}, "slow");
			$('#historypanel').load('/userlogs');

		})
	})
</script>