<#include "/common/commoncss.ftl">
<style>
.thiscolor{
	display: inline-block;
	width: 20px;
    height: 20px;
    border-radius: 50%;
    margin-right:10px;
}
.thiscolor:HOVER {
	cursor: pointer;
}
</style>
<script type="text/javascript" src="js/common/tocolor.js"></script>
<link rel="stylesheet" href="css/controlpanel.css" />
<link rel="stylesheet" href="css/common/skintheme.css" />
<script type="text/javascript">
	function funblue(){
		console.log("点击变蓝了");
		parent.toblue();
		toblue();
	}
	function fungreen(){
		console.log("点击变蓝了");
		parent.togreen();
		togreen();
	}
	function funyellow(){
		console.log("点击变蓝了");
		parent.toyellow();
		toyellow();
	}
	function funred(){
		console.log("点击变蓝了");
		parent.tored();
		tored();
	}
</script>
<div class="head-show" style="position: relative; height: 76px;">
	<h3 style="display: inline-block; float: left;margin-left: 16px;">控制面板
		<div style="display: inline-block;margin-left: 20px;">
			<span class="thiscolor toblue" style="background-color:#00c0ef" onclick="funblue();"></span> 
			<span class="thiscolor togreen" style="background-color:#00a65a" onclick="fungreen();"></span> 
			<span class="thiscolor toyellow" style="background-color:#f39c12" onclick="funyellow();"></span> 
			<span class="thiscolor tored" style="background-color:#dd4b39" onclick="funred();"></span>
		</div>
	</h3>
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
					<h2>${filenum}</h2>
					<p>文件管理</p>
				</div>
				<div class="iconfont">
					<span class="glyphicon glyphicon-folder-open" style="margin-left: 130px;"></span>
				</div>
				<a href="filemanage" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>
		<!--通讯录-->
		<div class="col-md-3">
			<div class="jichu tongxun">
				<div class="wenzi">
					<h2>${directornum}</h2>
					<p>通讯录</p>
				</div>
				<div class="iconfont">
					<span class="glyphicon glyphicon-earphone"></span>
				</div>
				<a href="addrmanage" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>
		<!--讨论区-->
		<div class="col-md-3">
			<div class="jichu chat">
				<div class="wenzi">
					<h2>${discussnum}</h2>
					<p>讨论区</p>
				</div>
				<div class="iconfont">
					<span class="glyphicon glyphicon-comment"></span>
				</div>
				<a href="chatlist" class="moreduo"> 更多 <span
					class="glyphicon glyphicon-circle-arrow-right"></span>
				</a>
			</div>
		</div>
	</div>
</div>
<!--右侧刷新的内容块-->
<div class="container-fluid"
	style="margin-top: 20px; position: relative; margin-bottom: 50px;">
	<div class="row ">
		<div class="col-md-7 gridly">
			<!--第一个公告通知-->
			<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>公告通知</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" >
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
			<div class="panel panel-default box-show green-box">
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
			<div class="panel panel-default box-show green-box">
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
							<th>结束日期</th>
							<th>状态</th>
							<th>标题</th>
							<th></th>
						</tr>
						<#list planList as plan>
							<tr>
								<td>
								<#list ptypelist as ptype>
								<#if plan.typeId==ptype.typeId>
									${(ptype.typeName)!''}
								</#if>
								</#list>
								</td>
								<td>${(plan.endTime)!''}</td>
								<#list pstatuslist as pstatus>
								<#if pstatus.statusId==plan.statusId>
								<td>
								<span class="label ${(pstatus.statusColor)!''}">${(pstatus.statusName)!''}</span>
								</td>
								</#if>
								</#list>
								
								
								<td><span>${(plan.title)!''}</span></td>
								<td><a href="planedit?pid=${plan.planId}" class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
					</table>
				</div>
			</div>
		</div>

		<!--内容右侧5个格子；-->
		<div class="col-md-5">
			<!--第四个格子-->
			<!-- 行事历 -->
			<div class="panel panel-default box-show green-box" style="background-color: #00c86c;color: white;">
				<div class="panel-heading box-show-heading" style="border-bottom: 1px solid grey;">
					<div class="panel-title" style="display: inline-block;">
						<h4><span class="glyphicon glyphicon-calendar"></span>行事历</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" >
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
				<div id="panelfour" class="panel-collapse collapse in"  style="height: 240px;">
				   
				</div>
			</div>
			<!--第五个格子-->
			<div class="panel panel-default box-show green-box">
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
						<#list  notepaperList as np>
						<li class="list-group-item list-group-item-li" style=""><img
							src="images/touxiang/${user.imgPath}" alt="photo" title="wowoowo"
							class="item-li-img" />
							<p class="item-li-p">
								<a href="userpanel">${(np.title)!''} <small class="pull-right"
									style="color: #777;"><span
										class="glyphicon glyphicon-time"></span>${(np.createTime)!''}</small>
								</a><br> ${(np.concent)!''}
							</p></li>
							</#list>
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