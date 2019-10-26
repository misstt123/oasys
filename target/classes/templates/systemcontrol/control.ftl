<#include "/common/commoncss.ftl" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<!-- <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"> -->
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<script type="text/javascript">
		$(function(){
			var themeSkin='${user.themeSkin}';
			if(themeSkin=="blue"){
				toblue();
			}else if(themeSkin=="green"){
				togreen();
			}else if(themeSkin=="yellow"){
				toyellow();
			}else if(themeSkin=="red"){
				tored();
			}
		});
	</script>
<script type="text/javascript">
	function funblue(){
		console.log("点击变蓝了");
		parent.toblue();
		toblue();
	}
	function fungreen(){
		console.log("点击变绿了");
		parent.togreen();
		togreen();
	}
	function funyellow(){
		console.log("点击变黄了");
		parent.toyellow();
		toyellow();
	}
	function funred(){
		console.log("点击变红了");
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
	style="margin-top: 20px;  margin-bottom: 50px;">
	<div class="row ">
		<div class="col-md-7 gridly">
		<!-- 统计 -->
		<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>本周系统使用统计</h4>
					</div>
					<div class="pull-right right-btn-group dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" >
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="morelog">历史记录</a></li>
							</ul>
						</div>
						<a  data-toggle="collapse"><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div id="line" class="shrink" style="min-width: 100px; height: 280px; border-top:solid 1px #eee; margin: 0 auto">
				</div>
			</div>
		
		
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
								<li><a href="infrommanage">公告通知</a></li>
							</ul>
						</div>
						<a  ><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div id="" class="shrink">
					<table class="table table-hover" >
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
								<li><a href="xinxeng">新建流程</a></li>
								<li><a href="flowmanage">流程管理</a></li>
							</ul>
						</div>
						<a  ><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="" class="shrink">
					<table class="table table-hover" >
						<tr>
							<th>类型</th>
							<th>日期</th>
							<th>状态</th>
							<th>标题</th>
							<th></th>
						</tr>
						
							<#list processlist as pro>
							<tr>
								<td>${(pro.typeNmae)!''}
								</td>
								<td>${(pro.applyTime)!''}</td>
								<td><#list prostatuslist as pros>
								<#if pros.statusId==pro.statusId>
								<span class="label ${(pros.statusColor)!''}">${(pros.statusName)!''}</span>
								</#if>
								</#list>
								</td>
								<td><span>${(pro.processName)!''}</span></td>
								<td><a  class="look-xiangxi"><span
										class="glyphicon glyphicon-search"> </span> 查看 </a></td>
							</tr>
						</#list>
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
								<li><a href="planview">计划管理</a></li>
								<li><a href="planedit?pid=-1">新增计划</a></li>
							</ul>
						</div>
						<a  ><button>
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button>
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div id="" class="shrink">
					<table class="table table-hover" >
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
		<div class="rightcolmd">
		<!-- 任务完成排行 -->
		<div class="panel panel-default box-show green-box">
				<div class="panel-heading box-show-heading"
					style="background: white;">
					<div class="panel-title" style="display: inline-block;">
						<h4>
							任务完成排行
						</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" >
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="mytask">我的任务</a></li>
							</ul>
						</div>
						<a href="#column" data-toggle="collapse"><button >
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button >
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div id="column" class="shrink" style="min-width: 100px; height: 280px; margin: 0 auto;border-top:solid 1px #eee; ">
				 
				</div>
				
			</div>
		
			<!--第四个格子-->
			<!-- 行事历 -->
			<div class="panel" style="background-color: #00c86c;color: white;">
				<div class="" style="border-bottom: 1px solid #94d294;;">
					<div class="panel-title" style="display: inline-block;">
						<h4><span class="glyphicon glyphicon-calendar"></span> 行事历</h4>
					</div>
					<div class="pull-right right-btn-group btn-color dropdown"
						style="display: inline-block;">
						<div style="display: inline-block;">
							<button data-toggle="dropdown" style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="daymanage">日程管理</a></li>
								<li><a href="daycalendar">我的日历</a></li>
							</ul>
						</div>
						<a   ><button style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button style="background: #18e89d !important;">
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				<div  class="shrink"  style="height: 280px;padding: 10px;">
				  
				   <table cellpadding="2" style="border-collapse: collapse;width:100%;" class="calendar" id="calendar">
			
						<div >
						<span class="glyphicon glyphicon-chevron-left month left" style="cursor:pointer;"></span>
						<span class="glyphicon glyphicon-chevron-right month right" style="float:right;cursor:pointer;"></span>
						<div class="yearmonth" style="text-align:center;width:70%;display:inline;margin-left: 154px;"><div>
						</div>
			<tbody>
			
			<tr style="color:white;  text-align: center !important;">
				<th style="text-align: center !important;">一</th>
				<th style="text-align: center !important;">二</th>
				<th style="text-align: center !important;">三</th>
				<th style="text-align: center !important;">四</th>
				<th style="text-align: center !important;">五</th>
				<th style="text-align: center !important;">六</th>
				<th style="text-align: center !important;">日</th>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			<tr>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
				<td><span id="span"></span><span class="icon"></span></td>
			</tr>
			</tbody>
		</table>	
				<div id="blockdiv" style="
				background-color: white; display: none; z-index: 999; border: 1px solid rgb(105, 103, 103); 
				position: absolute; color: rgb(105, 103, 103);text-align: center; ">dfdfdf</div>
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
							<button data-toggle="dropdown" style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-menu-hamburger"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="userpanel">我的便签</a></li>
							</ul>
						</div>
						<a  ><button style="background: #18e89d !important;">
								<span class="glyphicon glyphicon-minus shousuo"></span>
							</button></a>
						<button style="background: #18e89d !important;">
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</div>
				</div>
				
				<div  class="shrink">
					<ul class="list-group">
						<#list  notepaperList as np>
						<li class="list-group-item list-group-item-li" style=""><img
							src="/image/${(user.imgPath)!'/timg.jpg'}" alt="photo" title="wowoowo"
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
						<input type="text" placeholder="便签内容" style="outline: none;" class="concent"/> <a
							id="writep" style="cursor: pointer;"><span class="glyphicon glyphicon-plus"
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
	
	$(".shousuo").on('click',function(){
		if($(this).hasClass("glyphicon-plus")){
			console.log("0000")
			$(this).removeClass("glyphicon-plus").addClass("glyphicon-minus")
			$(this).parents(".panel").children(".shrink").slideToggle(100);
		}
		else{
			console.log("1111")
				$(this).removeClass("glyphicon-minus").addClass("glyphicon-plus")
				$(this).parents(".panel").children(".shrink").slideToggle(100);
			}
	})
	
		$("#writep").click(function(){ 
			var $concent=$(".concent").val();
			if($concent==null||$concent=="")
				return confirm("您输入为空 请重新输入");
			$.ajax({
				url:'writep',
				data:{concent:$concent},
				type:"get",
				success:function(){
					window.location.reload();
				}
			})
		})
		$(".icon").css({
			"right":"0px",
			"top":"-10px",
			"height":"5px"
		})
		
		/*  $(".col-md-7 ").children("div").addClass("drag-item");
		$(".rightcolmd ").children("div").addClass("drag-item"); */
		/* $("#calendar td").css({
			"text-align":"center"
		}) */
			/* $(".drag-item").draggable({
				revert:true,
			}).droppable({
				onDragOver:function(e,source){
				},
				onDrop:function(e,source){
					$(source).insertAfter(this);
					$(source).insertBefore(this);
				}
			});   */
</script>
<script src="js/littlecalendar.js"></script>
<script src="js/highcharts/jquery.js"></script>
<script src="js/highcharts/highcharts.js"></script>
<script src="js/tongji.js"></script>
