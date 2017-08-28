<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
		<title>控制面板主页</title>
		<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="static/css/homelist.css" />
		<link rel="stylesheet" href="static/css/controlpanel.css" />
	</head>

	<body>
		<div class="main">
			<div class="container-fluid">
				<div class="row disappear">
					<!--把最顶上左侧的logo，栅格系统分2份-->
					<div class="col-lg-2 col-md-2" style="background: #008d4c;">
						<a href="#" class="navbar-brand" style="padding:8px 40px;"><img src="static/images/logo.png" /></a>
					</div>
					<!--顶层右侧的导航栏，栅格系统分10份-->
					<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 moredeep" style="background: #00a65a;">
						<!--导航栏左侧按钮，-->
						<ul class="nav navbar-nav navbar-left" style="margin-left: -15px;">
							<li>
								<a href="#" class="white"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
							</li>
						</ul>
						<!--右侧导航栏-->
						<ul class="nav navbar-nav navbar-right moredeep">

							<li>
								<a href="#" class="white"><span class="glyphicon glyphicon-bell"></span><span class="badge yellow">3</span></a>
							</li>
							<li>
								<a href="#" class="white"><span class="glyphicon glyphicon-envelope"></span><span class="badge blue">3</span></a>
							</li>
							<li>
								<a href="#" class="white"><span class="glyphicon glyphicon-flag"></span><span class="badge red">3</span></a>
							</li>
							<li class="dropdown">
								<!--设置导航栏头像面板-->
								<a href="#" class="white" data-toggle="dropdown">
									<img src="static/images/handsome.JPG" class="user-image" />
									<span>罗祥</span>
								</a>
								<!--设置点击按钮弹出用户面板层-->
								<ul class="dropdown-menu" style="padding: 1px 0;">
									<li class="user-header">
										<img src="static/images/handsome.JPG" class="img-circle" style="width: 90px;" />
										<p class="white" style="font-weight：100">
											<span>CEO </span> /
											<span> 董事长</span><br>
											<small>超级管理员</small>
										</p>
									</li>
									<li class="user-footer">
										<div class="pull-left">
											<a href="#" class="btn btn-default">用户面板</a>
										</div>
										<div class="pull-right">
											<a href="#" class="btn btn-danger">退出登录</a>
										</div>
									</li>
								</ul>
							</li>

							<li>
								<a href="#" class="white"><span class="glyphicon glyphicon-repeat"></span></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row disappear">
					<div class="col-md-2 list-left" style="background: #222d32;">
						<div class="user-panel">
							<div class="pull-left">
								<img src="static/images/handsome.JPG" class="img-circle user-image-left" />
							</div>
							<div class="pull-left info">
								<p style="color: #fff;line-height: 1.5;">
									<span>罗祥</span><br>
									<small><span class="glyphicon glyphicon-record" style="color: #00a65a;"> </span> 在线</small>
								</p>
							</div>
						</div>
						<div style="position: relative;margin-top: 20px;">
							<input type="text" placeholder="查找..." class="search-input" />
							<span style="display:inline-block;height: 35px;width: 38px;background: red;position: absolute;text-align: center;line-height: 35px;border-bottom-right-radius: 2px;border-top-right-radius: 2px;background: #374850;">
								<a href="#"><span class="glyphicon glyphicon-search" style="color: white;"></span></a>
							</span>
						</div>
						<div class="panel-group" id="accordion" style="margin-top: 10px;margin-left: -12px;">
							<div class="panel panel-default">

								<div class="panel-heading">
									<a class="open-menu" href="#collapseOne" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-asterisk"></span>
										<span>系统管理 </span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapseOne" class="panel-collapse collapse ">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>菜单管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>类型管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>状态管理</span>
											</a>
										</li>
									</ul>
								</div>
								<!--第一个完-->
								
								<div class="panel-heading">
									<a class="open-menu" href="#collapseTwo" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-education"></span>
										<span>用户管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>部门管理</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>职位管理</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>用户管理</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>在线用户</span>
											</a>
										</li>
									</ul>
								</div>
							<!--第二部分完-->

								<div class="panel-heading">
									<a class="open-menu" href="#collapseThree" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-user"></span>
										<span>角色管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapseThree" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>角色列表</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第三部分完-->
								<!--第四部分-->
								<div class="panel-heading">
									<a class="open-menu" href="#collapsefour" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-time"></span>
										<span>考勤管理 </span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapsefour" class="panel-collapse collapse ">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>考勤管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>考勤周报表</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>考勤月报表</span>
											</a>
										</li>
									</ul>
								</div>
								<!--第四个完-->
								
								<div class="panel-heading">
									<a class="open-menu" href="#collapsefive" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-hourglass"></span>
										<span>流程管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapsefive" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>流程管理</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>流程审核</span>
											</a>
										</li>
									</ul>
								</div>
							<!--第五部分完-->

								<div class="panel-heading">
									<a class="open-menu" href="#collapsesix" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-bell"></span>
										<span>公告通知</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapsesix" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>通知管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>通知列表</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第六部分完-->
								<div class="panel-heading">
									<a class="open-menu" href="#collapseseven" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-envelope"></span>
										<span>邮件管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapseseven" class="panel-collapse collapse ">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>账号管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>邮件管理</span>
											</a>
										</li>
									</ul>
								</div>
								<!--第七个完-->
								
								<div class="panel-heading">
									<a class="open-menu" href="#collapseeight" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-flag"></span>
										<span>任务管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapseeight" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>任务管理</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>我的任务</span>
											</a>
										</li>
									</ul>
								</div>
							<!--第八部分完-->

								<div class="panel-heading">
									<a class="open-menu" href="#collapsenine" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-calendar"></span>
										<span>日程管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapsenine" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>日程管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>我的日历</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第九部分完-->
								<!--第十部分-->
								<div class="panel-heading">
									<a class="open-menu" href="#collapseten" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-plane"></span>
										<span>工作计划 </span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>

									</a>
								</div>
								<div id="collapseten" class="panel-collapse collapse ">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>计划管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>计划报表</span>
											</a>
										</li>
									</ul>
								</div>
								<!--第十个完-->
								
								<div class="panel-heading">
									<a class="open-menu" href="#collapseeleven" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-folder-open"></span>
										<span>文件管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapseeleven" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="#">
												<span class="glyphicon glyphicon-record"></span>
												<span>文件管理</span>
											</a>
										</li>
									</ul>
								</div>
							<!--第十一部分完-->

								<div class="panel-heading">
									<a class="open-menu" href="#collapsetwelve" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-edit"></span>
										<span>笔记管理</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapsetwelve" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>笔记管理</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第十二部分完-->
								<div class="panel-heading">
									<a class="open-menu" href="#collapsethirteen" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-earphone"></span>
										<span>通讯录</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapsethirteen" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>通讯录</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第十三部分完-->
								<div class="panel-heading">
									<a class="open-menu" href="#collapsefourteen" data-toggle="collapse" data-parent="#accordion">
										<span class="glyphicon glyphicon-comment"></span>
										<span>讨论区</span>
										<span class="glyphicon glyphicon-menu-left pull-right"></span>
									</a>
								</div>
								<div id="collapsefourteen" class="panel-collapse collapse">
									<ul>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>讨论区管理</span>
											</a>
										</li>
										<li>
											<a href="">
												<span class="glyphicon glyphicon-record"></span>
												<span>讨论区列表</span>
											</a>
										</li>
									</ul>
									</ul>
								</div>
								<!--第十四部分完-->

								
							</div>
						</div>
					</div>
					<!--右侧内容-->
					<!--下面就是自己的内容块-->
					<div class="col-md-10 list-right" style="background: #ecf0f5;position: relative;">
						<div class="head-show" style="position: relative;height: 76px;">
							<h3 style="display: inline-block;float: left;">控制面板</h3>
							<ol class="breadcrumb pull-right" style="float: right;margin-top: 20px;background: transparent;">
								<li>
									<a href="#">
										<span class="glyphicon glyphicon-home"></span> 首页
									</a>
								</li>
								<li class="active">
									控制面板
								</li>
							</ol>
						</div>
						<!--四个面板-->
						<div class="container-fluid">
							<div class="row">
								<!--考勤签到-->
								<div class="col-md-3">
									<div class="jichu kaoqin">
										<div class="wenzi">
											<h2>未签到</h2>
											<p>请到考勤管理签到</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-time"></span>
										</div>
										<a href="#" class="moreduo">
											更多
											<span class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--文件管理-->
								<div class="col-md-3">
									<div class="jichu filecolor">
										<div class="wenzi">
											<h2>3</h2>
											<p>文件管理</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-folder-open"></span>
										</div>
										<a href="#" class="moreduo">
											更多
											<span class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--通讯录-->
								<div class="col-md-3">
									<div class="jichu tongxun">
										<div class="wenzi">
											<h2>4</h2>
											<p>通讯录</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-earphone"></span>
										</div>
										<a href="#" class="moreduo">
											更多
											<span class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
								<!--讨论区-->
								<div class="col-md-3">
									<div class="jichu chat">
										<div class="wenzi">
											<h2>5</h2>
											<p>讨论区</p>
										</div>
										<div class="iconfont">
											<span class="glyphicon glyphicon-comment"></span>
										</div>
										<a href="#" class="moreduo">
											更多
											<span class="glyphicon glyphicon-circle-arrow-right"></span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="container-fluid" style="margin-top: 20px;position: relative;margin-bottom: 50px;">
							<div class="row">
								<div class="col-md-7">
									<!--第一个公告通知-->
									<div class="panel panel-default box-show">
										<div class="panel-heading box-show-heading" style="background: white;">
											<div class="panel-title" style="display: inline-block;">
												<h4>公告通知</h4>
											</div>
											<div class="pull-right right-btn-group" style="display: inline-block;">
												<button><span class="glyphicon glyphicon-menu-hamburger"></span></button>
												<a href="#panelone" data-toggle="collapse"><button><span class="glyphicon glyphicon-minus"></span></button></a>
												<button><span class="glyphicon glyphicon-remove"></span></button>
											</div>
										</div>
										<div id="panelone" class="panel-collapse collapse in">
											<table class="table table-hover">
												<tr>
													<th>发布</th>
													<th>日期</th>
													<th>状态</th>
													<th>标题</th>
													<th></th>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin blueskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin yellowskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin redskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
											</table>
										</div>
									</div>
									<!--第二个box；流程管理-->
									<div class="panel panel-default box-show">
										<div class="panel-heading box-show-heading" style="background: white;">
											<div class="panel-title" style="display: inline-block;">
												<h4>流程管理</h4>
											</div>
											<div class="pull-right right-btn-group" style="display: inline-block;">
												<button><span class="glyphicon glyphicon-menu-hamburger"></span></button>
												<a href="#paneltwo" data-toggle="collapse"><button><span class="glyphicon glyphicon-minus"></span></button></a>
												<button><span class="glyphicon glyphicon-remove"></span></button>
											</div>
										</div>
										<div id="paneltwo" class="panel-collapse collapse in">
											<table class="table table-hover">
												<tr>
													<th>类型 </th>
													<th>日期</th>
													<th>状态</th>
													<th>标题</th>
													<th></th>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin blueskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin yellowskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin redskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
											</table>
										</div>
									</div>
									<!--第三个box；工作计划-->
									<div class="panel panel-default box-show">
										<div class="panel-heading box-show-heading" style="background: white;">
											<div class="panel-title" style="display: inline-block;">
												<h4>工作计划</h4>
											</div>
											<div class="pull-right right-btn-group" style="display: inline-block;">
												<button><span class="glyphicon glyphicon-menu-hamburger"></span></button>
												<a href="#panelthree" data-toggle="collapse"><button><span class="glyphicon glyphicon-minus"></span></button></a>
												<button><span class="glyphicon glyphicon-remove"></span></button>
											</div>
										</div>
										<div id="panelthree" class="panel-collapse collapse in">
											<table class="table table-hover">
												<tr>
													<th>类型</th>
													<th>日期</th>
													<th>状态</th>
													<th>标题</th>
													<th></th>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin blueskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin yellowskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
												<tr>
													<td>总公司</td>
													<td>2015-10-22</td>
													<td><span class="basicskin redskin">一般</span></td>
													<td>元旦放假3天</td>
													<td>
														<a href="#" class="look-xiangxi"><span class="glyphicon glyphicon-search"> </span> 查看 </a>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>

								<!--内容右侧5个格子；-->
								<div class="col-md-5">
									<!--第四个格子-->
									<div class="panel panel-default box-show" style="border-top: 3px solid green;">
										<div class="panel-heading box-show-heading" style="background: white;">
											<div class="panel-title" style="display: inline-block;">
												<h4>公告通知</h4>
											</div>
											<div class="pull-right right-btn-group btn-color" style="display: inline-block;">
												<button><span class="glyphicon glyphicon-menu-hamburger"></span></button>
												<a href="#panelfour" data-toggle="collapse"><button><span class="glyphicon glyphicon-minus"></span></button></a>
												<button><span class="glyphicon glyphicon-remove"></span></button>
											</div>
										</div>
										<div id="panelfour" class="panel-collapse collapse in">
											<div style="height: 240px;">

											</div>
										</div>
									</div>
									<!--第五个格子-->
									<div class="panel panel-default box-show" style="border-top: 3px solid green;">
										<div class="panel-heading box-show-heading" style="background: white;">
											<div class="panel-title" style="display: inline-block;">
												<h4><span class="glyphicon glyphicon-pushpin"> </span> 我的便签 </h4>
											</div>
											<div class="pull-right right-btn-group btn-color" style="display: inline-block;">
												<button><span class="glyphicon glyphicon-menu-hamburger"></span></button>
												<a href="#panelfive" data-toggle="collapse"><button><span class="glyphicon glyphicon-minus"></span></button></a>
												<button><span class="glyphicon glyphicon-remove"></span></button>
											</div>
										</div>
										<div id="panelfive" class="panel-collapse collapse in">
											<ul class="list-group">
												<li class="list-group-item list-group-item-li" style="">
													<img src="static/images/handsome.JPG" alt="photo" title="wowoowo" class="item-li-img" />
													<p class="item-li-p">
														<a href="#">标题
															<small class="pull-right" style="color: #777;"><span class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
														</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
													</p>
												</li>
												<li class="list-group-item list-group-item-li" style="">
													<img src="static/images/handsome.JPG" alt="photo" title="wowoowo" class="item-li-img" />
													<p class="item-li-p">
														<a href="#">标题
															<small class="pull-right" style="color: #777;"><span class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
														</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
													</p>
												</li>
												<li class="list-group-item list-group-item-li" style="">
													<img src="static/images/handsome.JPG" alt="photo" title="wowoowo" class="item-li-img" />
													<p class="item-li-p">
														<a href="#">标题
															<small class="pull-right" style="color: #777;"><span class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
														</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
													</p>
												</li>

											</ul>
											<div class="input-group input-div">
												<input type="text" placeholder="便签内容" style="outline: none;" />
												<a href="#"><span class="glyphicon glyphicon-plus" style="margin-top: 6px;"></span></a>
											</div>
										</div>

									</div>
									<!--5个格子栅格系统end-->
								</div>
							</div>
						</div>
						<!--右侧内容块完-->
					
					</div>
					
				</div>
				<div class="container-fluid" style="padding: 0;">
					<div class="row">
						<div class="col-md-10 col-md-offset-2" style="background:white ;padding: 15px;margin-top: -50px;">
							<strong>	Copyright © 2017 <a href="http://www.zxyoo.cn">zxyoo</a>.</strong> All rights reserved.
							<div class="pull-right" style="display: inline-block;">
								2017年08月27日，星期日
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
		<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				
				$('.open-menu').on('click', function() {
					$('.glyphicon-menu-down').each(function() {
						$(this).removeClass('glyphicon-menu-down').addClass("glyphicon-menu-left");
					});
					$(this).children('.pull-right').removeClass('glyphicon-menu-left').addClass("glyphicon-menu-down");
					$('.open-menu').each(function(){
						$(this).css("border-left","3px solid transparent");
					});
					$(this).css("border-left","3px solid #00a65a");
				});
				
				//基础图标放大缩小
				$('.jichu').on('mouseover', function() {
					$(this).children('.iconfont').css('font-size', '88px');
				});

				$('.jichu').on('mouseout', function() {
					$(this).children('.iconfont').css('font-size', '76px');
				});

				$('.right-btn-group').on('click', 'a', function() {

					var gly = $(this).children('button').children().hasClass('glyphicon-minus');
					var child = $(this).children('button').children('.glyphicon');
					if(gly) {
						child.removeClass('glyphicon-minus').addClass('glyphicon-plus');
					} else {
						child.removeClass('glyphicon-plus').addClass('glyphicon-minus');
					}

				});

				$('.right-btn-group a').on('click', function() {
					//获取右侧内容板的高度；设置面板的高度
					console.log($('.list-right').height());
					$('.list-left').height($('.list-right').height());
					$('.list-right').height($('.list-right').height());
				})
				//获取右侧内容板的高度；设置面板的高度
				console.log($('.list-right').height());
				$('.list-left').height($('.list-right').height());
				$('.list-right').height($('.list-right').height());
				
				//点击按钮，左侧菜单栏收缩，右侧拉伸过去
				$('.navbar-left li').on('click',function(){
					$('.col-md-2').removeClass('col-md-2').addClass('col-md-1');
					$('.col-md-10').removeClass('col-md-10').addClass('col-md-11');
				});
			});
		</script>
	</body>

</html>