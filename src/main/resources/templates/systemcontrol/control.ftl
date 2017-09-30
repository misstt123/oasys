<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/controlpanel.css" />
<div class="head-show" style="position: relative; height: 76px;">
	<h3 style="display: inline-block; float: left;margin-left: 16px;">控制面板</h3>
	<ol class="breadcrumb pull-right"
		style="float: right; margin-top: 20px; background: transparent;">
		<li><a href="#"> <span class="glyphicon glyphicon-home"></span>
				首页
		</a></li>
		<li class="active">控制面板</li>
	</ol>
</div>
<!--四个面板-->
<div class="container-fluid">
	<div class="row">
		<!--考勤签到-->
		<div class="col-md-3" >
		    <div id="refresh">
				<#include "signin.ftl">
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
					<span class="glyphicon glyphicon-folder-open" style="margin-left: 130px;"></span>
				</div>
				<a href="#" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
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
				<a href="#" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
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
				<a href="#" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>
	</div>
</div>
<!--右侧刷新的内容块-->
<div class="container-fluid"
	style="margin-top: 20px; position: relative; margin-bottom: 50px;">
	<div class="row">
		<div class="col-md-7 gridly">
			<!--第一个公告通知-->
			<div class="panel panel-default box-show">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>公告通知</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">下拉菜单项</a></li>
								<li><a href="#">下拉菜单项</a></li>
							</ul>
						</div>
						<a href="#panelone" data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
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
						<#list noticeList as notice>
							<tr>
								<td>${notice.deptName}</td>
								<td>${notice.notice_time}</td>
								<td><span class="label ${(notice.statusColor)!''}">${notice.status}</span></td>
								<td><span>${(notice.title)!''}</span></td>
								<td><a href="informshow?id=${notice.notice_id}&read=${notice.is_read}&relationid=${notice.relatin_id}" class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
						
					</table>
				</div>
			</div>
			<!--第二个box；流程管理-->
			<div class="panel panel-default box-show">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>流程管理</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">下拉菜单项</a></li>
								<li><a href="#">下拉菜单项</a></li>
							</ul>
						</div>
						<a href="#paneltwo" data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="paneltwo" class="panel-collapse collapse in">
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
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
						<tr>
							<td>总公司</td>
							<td>2015-10-22</td>
							<td><span class="basicskin yellowskin">一般</span></td>
							<td>元旦放假3天</td>
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
						<tr>
							<td>总公司</td>
							<td>2015-10-22</td>
							<td><span class="basicskin redskin">一般</span></td>
							<td>元旦放假3天</td>
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
					</table>
				</div>
			</div>
			<!--第三个box；工作计划-->
			<div class="panel panel-default box-show">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>工作计划</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">下拉菜单项</a></li>
								<li><a href="#">下拉菜单项</a></li>
							</ul>
						</div>
						<a href="#panelthree" data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
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
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
						<tr>
							<td>总公司</td>
							<td>2015-10-22</td>
							<td><span class="basicskin yellowskin">一般</span></td>
							<td>元旦放假3天</td>
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
						<tr>
							<td>总公司</td>
							<td>2015-10-22</td>
							<td><span class="basicskin redskin">一般</span></td>
							<td>元旦放假3天</td>
							<td><a href="#" class="look-xiangxi"><span
									class="glyphicon glyphicon-search"> </span> 查看 </a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<!--内容右侧5个格子；-->
		<div class="col-md-5">
			<!--第四个格子-->
			<div class="panel panel-default box-show"
				style="border-top: 3px solid green;">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>公告通知</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">下拉菜单项</a></li>
								<li><a href="#">下拉菜单项</a></li>
							</ul>
						</div>
						<a href="#panelfour" data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="panelfour" class="panel-collapse collapse in">
					<div style="height: 240px;"></div>
				</div>
			</div>
			<!--第五个格子-->
			<div class="panel panel-default box-show"
				style="border-top: 3px solid green;">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>
							<span class="glyphicon glyphicon-pushpin"> </span> 我的便签
						</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">下拉菜单项</a></li>
								<li><a href="#">下拉菜单项</a></li>
							</ul>
						</div>
						<a href="#panelfive" data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="panelfive" class="panel-collapse collapse in">
					<ul class="list-group">
						<li class="list-group-item list-group-item-li" style=""><img
							src="images/handsome.JPG" alt="photo" title="wowoowo"
							class="item-li-img" />
							<p class="item-li-p">
								<a href="#">标题 <small class="pull-right"
									style="color: #777;"><span
										class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
								</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
							</p></li>
						<li class="list-group-item list-group-item-li" style=""><img
							src="images/handsome.JPG" alt="photo" title="wowoowo"
							class="item-li-img" />
							<p class="item-li-p">
								<a href="#">标题 <small class="pull-right"
									style="color: #777;"><span
										class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
								</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
							</p></li>
						<li class="list-group-item list-group-item-li" style=""><img
							src="images/handsome.JPG" alt="photo" title="wowoowo"
							class="item-li-img" />
							<p class="item-li-p">
								<a href="#">标题 <small class="pull-right"
									style="color: #777;"><span
										class="glyphicon glyphicon-time"></span>2017-8-27 19:40</small>
								</a><br> 附件可莱丝解放路时代峻峰拉进来设计费拉进来房间发顺丰大师傅阿发顺丰沙发沙发粉色啊打发范德萨发范德萨手动阀打算
							</p></li>

					</ul>
					<div class="input-group input-div">
						<input type="text" placeholder="便签内容" style="outline: none;" /> <a
							href="#"><span class="glyphicon glyphicon-plus"
							style="margin-top: 6px;"></span></a>
					</div>
				</div>

			</div>
			<!--5个格子栅格系统end-->
		</div>
	</div>
</div>
<script>
//基础图标放大缩小
	$('.jichu').on('mouseover', function() {
		$(this).children('.iconfont').children('.glyphicon').css('font-size', '88px');
	});
	
	$('.jichu').on('mouseout', function() {
		$(this).children('.iconfont').children('.glyphicon').css('font-size', '76px');
	});
	/* 关闭面板按钮 */
	$('.glyphicon-remove').parent().on('click',function(){
		if(confirm("确定关闭此面板吗？")==false){
			return false;
		}
		console.log($(this).parents('.box-show'));
		$(this).parents('.box-show').css('display','none');
	});
</script>