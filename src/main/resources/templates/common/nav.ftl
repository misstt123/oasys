<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/homelist.css" />
<link rel="stylesheet" type="text/css" href="css/common/box.css" />
<div class="row disappear">
	<!--把最顶上左侧的logo，栅格系统分2份-->
	<div class="col-lg-2 col-md-2" style="background: #008d4c;">
		<a href="index" class="navbar-brand" style="padding: 8px 40px;"><img
			src="images/logo.png" /></a>
	</div>
	<!--顶层右侧的导航栏，栅格系统分10份-->
	<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 moredeep"
		style="background: #00a65a;">
		<!--导航栏左侧按钮，-->
		<ul class="nav navbar-nav navbar-left" style="margin-left: -15px;">
			<li><a href="#" class="white"><span
					class="glyphicon glyphicon-menu-hamburger"></span></a></li>
		</ul>
		<!--右侧导航栏-->
		<ul class="nav navbar-nav navbar-right moredeep">

			<li><a href="#" class="white"><span
					class="glyphicon glyphicon-bell"></span><span class="badge yellow">3</span></a>
			</li>
			<li><a href="#" class="white"><span
					class="glyphicon glyphicon-envelope"></span><span
					class="badge blue">3</span></a></li>
			<li><a href="#" class="white"><span
					class="glyphicon glyphicon-flag"></span><span class="badge red">3</span></a>
			</li>
			<li class="dropdown">
				<!--设置导航栏头像面板--> <a  class="white" data-toggle="dropdown">
					<img src="images/handsome.JPG" class="user-image" /> <span>罗祥</span>
			</a> <!--设置点击按钮弹出用户面板层-->
				<ul  class="dropdown-menu" style="padding: 1px 0;">
					<li class="user-header"><img src="images/handsome.JPG"
						class="img-circle" style="width: 90px;" />
						<p class="white">
							<span>CEO </span> / <span> 董事长</span><br> <small>超级管理员</small>
						</p></li>
					<li class="user-footer">
						<div class="pull-left">
							<a href="userpanel" class="btn btn-default">用户面板</a>
						</div>
						<div class="pull-right">
							<a href="#" class="btn btn-danger">退出登录</a>
						</div>
					</li>
				</ul>
			</li>

			<li><a href="#" class="white"><span
					class="glyphicon glyphicon-repeat"></span></a></li>
		</ul>
	</div>
</div>
