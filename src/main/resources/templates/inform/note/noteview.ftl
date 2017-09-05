<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
	<link href="css/common/box.css" rel="stylesheet" />
	<link href="css/common/iconfont.css"  rel="stylesheet"/>
	<link href="css/common/checkbox.css"  rel="stylesheet"/>
	<script type="text/javascript" src="easyui/jquery.min.js" ></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/iconfont.js"></script>
	
	
		<style type="text/css">
			.icon {
				width: 1em;
				height: 1em;
				vertical-align: -0.15em;
				fill: currentColor;
				overflow: hidden;
			}
			
			a {
				color: black;
			}
			
			a:hover {
				text-decoration: none;
			}
			/*.col-md-2,
			.col-md-3 {
				border: 1px solid red;
			}*/
			
			.bgc-w {
				background-color: #fff;
			}
			
			.bgc-w ul{
				list-style-type:circle !important;
			}
			.nav-stacked>li {
				border-bottom: 1px solid #f4f4f4;
				margin: 0;
			}
			
			.nav-stacked>li>a {
				border-radius: 0;
				border-top: 0;
				border-left: 3px solid transparent;
				color: #444;
			}
			.row{
				cursor: pointer;
			}
			.row .container .row .col-md-3 .box .box-header b{
				float: right;
			    cursor: pointer;
			}
			.box-header i{
				text-align: center;
				height: 25px;
				border: none;
			}
			.box-header i:hover{
				background-color: #E7E7E7;
			}
			.glyphicon-star-empty{
				color:#f39c12 !important ;
			}
			.glyphicon-star{
				color:#f39c12 !important ;
			}
			.borderleft{
				border-left: 3px solid #3c8dbc ;
			}
			.active{
			display:none;
			}
		</style>
		<script>
		
			$(function () {
					$('.pjax').bind('click', function() {
			$('.select').removeClass('select');
			$(this).addClass('select');
			$.ajax({
				type : 'GET',
				url : this.href,
				success : function(data) {
					$('#container').html(data);
				}
			});
			window.history.pushState({
				url : this.href
			}, null, this.href);
			return false;
		});
		window.addEventListener("popstate", function() {
			$.ajax({
				type : 'GET',
				url : location.href,
				success : function(data) {
					$('#container').html(data);
				}
			});
		});
				//收缩
				$('.change').click(function() {
					var ul=$(this).parent().parent().children("ul");
					if($(this).hasClass("glyphicon-minus")){
							$(this).removeClass("glyphicon-minus").addClass("glyphicon-plus");
							ul.slideToggle(500);
						}
						else if($(this).hasClass("glyphicon-plus")){
							$(this).removeClass("glyphicon-plus").addClass("glyphicon-minus");
							ul.slideToggle(500);
						}
							
				})
				//收藏
				$(".collect").on("click",function  () {
					if($(this).hasClass("glyphicon-star-empty"))
					{
						$(this).removeClass("glyphicon-star-empty").addClass("glyphicon-star")
						alert("已经收藏了")
					}
					else if($(this).hasClass("glyphicon-star"))
					{
						$(this).removeClass("glyphicon-star").addClass("glyphicon-star-empty")
						alert("已经取消收藏了")
					}
				})
				//左边的边框样式
				$(".bgc-w ul li").on("click",function  () {
					$(this).addClass("borderleft").siblings().removeClass("borderleft");
				})
				//全选
				$(".allcheck").click(function  (e) {
					e.preventDefault();
					if($(this).hasClass("glyphicon-unchecked")){
						$(this).removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
						$(".singlecheck").prop("checked","checked");
					}
					else if($(this).hasClass("glyphicon-stop")){
						$(this).removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
						$(".singlecheck").removeAttr("checked");
					}
				})
				/*//选中单选框 全选自动选上
				var i=0;
				$(".singlecheck").click(function  () {
					
				
					if(i==$(".singlecheck").length)
					alert("--");
				})*/
				$(".show").click(function  () {
					if($(".edit").hasClass("active"))
					$(".edit").removeClass("active");
					$(".view").addClass("active");
				})
				
			  	
			  	$(".back").click(function  () {
					if($(".view").hasClass("active"))
					$(".view").removeClass("active");
					$(".edit").addClass("active");
				})
				
				$(".info").click(function(){
					var url="noteinfo";
					var data={type:1};
					$.ajax({
						type:"get",
						async:false,
						url:url,
						
					})
				})
				
			})
		</script>
	</head>

	<body style="background-color: #ecf0f5;">

		<div >
			<div >
				<div class="row" style="padding-top:10px">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">笔记管理</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">笔记管理</a>
					</div>
				</div>
				
				
				<div class="row" style="padding-top: 15px;">
					<div class="col-md-3">
						<a class="btn btn-primary show" href="javascript:void(0);" style="width: 100%;margin-bottom: 20px;"><span class="glyphicon glyphicon-pencil"></span> 新建</a>
						<div class="bgc-w box box-solid">
							<div class="box-header">
								<h3 class="box-title">笔记</h3>
								<i class=" btn btn-xs btn-default  pull-right glyphicon glyphicon-minus change"></i>
							</div>
							<ul class="nav nav-pills nav-stacked">
								<li class="borderleft">
									<a href="">
									<span class="glyphicon glyphicon-time"></span>	最近</a>
								</li>
								<li>
									<a class="pjax" href="box.html"><span class="glyphicon glyphicon-file"></span> 文档</a>
								</li>
								<li>
									<a class="pjax" href="##"><span class="glyphicon glyphicon-picture"></span> 图片</a>
								</li>
								<li>
									<a href=""><span class="glyphicon glyphicon-music"></span> 音乐</a>
								</li>
								<li>
									<a href=""><span class="glyphicon glyphicon-facetime-video"></span> 视频</a>
								</li>
								<li>
									<a href="##"><span class="glyphicon glyphicon-briefcase"></span> 压缩包</a>
								</li>
							</ul>
						</div>
						
						
						
						<div class="box box-solid">
							<div class="box-header with-border">
								<h3 class="box-title">
									分类
								</h3>
							</div>
							<div class="box-body">
								<div class="input-group">
									<input placeholder="笔记分类" class="form-control" type="text"/>
									<div class="input-group-btn">
										<input type="submit" class="btn btn-primary " value="新增"/>
									</div>
									
								</div>
							</div>
						</div>

						<div class="bgc-w box box-solid">
							<div class="box-header">
								<h3 class="box-title">类型</h3>
								<i class="btn btn-xs btn-default  pull-right glyphicon glyphicon-minus change"></i>
							</div>
							<ul class="nav nav-pills nav-stacked">
								<li>
									<a href="##">
										<svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg>
										 我的笔记</a>
										 
								</li>
								<li>
									<a href="##">
										<svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg>  公司笔记</a>
								</li>
								<li>
									<a href="##">
										<svg class="icon" aria-hidden="true">
											<use xlink:href="#icon-kongxinquan"></use>
										</svg> 共享笔记</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-9">
						<div class="bgc-w box box-primary view" id="container">
							<!--盒子头-->
							<div class="box-header">
								<h3 class="box-title">最近</h3>
								<div class="box-tools">
									<div class="input-group" style="width: 150px;">
										<input type="text" class="form-control input-sm" placeholder="查找..." />
										<div class="input-group-btn">
											<a class="btn btn-sm btn-default"><span class="glyphicon glyphicon-search"></span></a>
										</div>
									</div>
								</div>
							</div>
							<!--盒子身体-->
							<div class="box-body no-padding">
								<div style="padding: 5px;">
									<span class="btn btn-sm btn-default glyphicon glyphicon-unchecked allcheck"></span>
									<div class="btn-group">
										<a class="btn btn-sm btn-default" href="" title="删除"><span class="glyphicon glyphicon-trash"></span></a>
										<a class="btn btn-sm btn-default" href="" title="新建文件夹"><span class="glyphicon glyphicon-star"></a>
									</div>
									<a class="btn btn-sm btn-default" href="" title="刷新"><span class="glyphicon glyphicon-refresh"></span></a>
									</div>
									<div class="table-responsive">
										<table class="table table-hover table-striped">
											<tr>
												<th scope="col">选择</th>
												<th scope="col">&nbsp;</th>
												<th scope="col">类型</th>
												<th scope="col">标题</th>
												<th scope="col">更新</th>
												<th scope="col">附件</th>
												<th scope="col">状态</th>
												<th scope="col">操作</th>
											</tr>
											<tr>
												<td >
													<span class="labels"><label><input type="checkbox"><i>✓</i></label></span>

												</td>
												<td>
													<span class="glyphicon glyphicon-star-empty collect"></span>
												</td>
												<td>
													<span>我的文件</span>
												</td>
												<td class="mailbox-subject">
													<span>新建文件夹sfsf</span>
												</td>
												<td>
													<span>2017/8/16 19:24:04</span>
												</td>
												<td>
													<span class="glyphicon glyphicon-paperclip"></span>
												</td>
												<td>
													<div class="label label-info">一般</div>
												</td>
												<td>
													<a title="修改" href="noteedit?nid=1" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
													<a title="查看"  class="label label-primary info"><span class="glyphicon glyphicon-search"></span> 查看</a>
													<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除" href="" class="label label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
												</td>
											</tr>
											<tr>
												<td >
													<span class="labels"><label><input type="checkbox"><i>✓</i></label></span>

												</td>
												<td>
													<span class="glyphicon glyphicon-star-empty collect"></span>
												</td>
												<td>
													<span>我的文件</span>
												</td>
												<td class="mailbox-subject">
													<span>新建文件夹sfsf</span>
												</td>
												<td>
													<span>2017/8/16 19:24:04</span>
												</td>
												<td>
													<span class="glyphicon glyphicon-paperclip"></span>
												</td>
												<td>
													<div class="label label-info">一般</div>
												</td>
												<td>
													<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
													<a title="查看" href="##" class="label label-primary"><span class="glyphicon glyphicon-search"></span> 查看</a>
													<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除" href="" class="label label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
												</td>
											</tr>
										</table>
									</div>
								</div>
								<!--盒子尾-->
								<div class="box-footer no-padding" style="margin-top: -20px;">
									<div style="padding: 5px;">
										<div id="page" style="background:#fff;border:0px;margin-top:0px;padding:2px;height: 25px;">
											<div style="width: 40%; float: left;">
												<div class="pageInfo" style="margin-left: 5px;">
													共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
												</div>
											</div>
											<div style="width: 60%; float: left;">
												<div class="pageOperation">
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-backward"></span>
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-triangle-left"></span>
													</a>
													<a disabled="disabled" class="btn btn-default no-padding" style="width:30px;height: 20px;">
														1
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-triangle-right"></span>
													</a>
													<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
														<span class="glyphicon glyphicon-forward"></span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						<div class="edit active">
						<#include "/note/noteedit.ftl">
						</div>
						</div>
					
					</div>
				</div>
			</div>
	</body>
	
	
	

</html>