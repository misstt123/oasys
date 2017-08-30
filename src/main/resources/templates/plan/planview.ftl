<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
<link href="css/common/checkbox.css" rel="stylesheet"/>
	<link href="css/common/box.css" rel="stylesheet" />
	<link href="css/common/iconfont.css"  rel="stylesheet"/>
	<script type="text/javascript" src="easyui/jquery.min.js" ></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/iconfont.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
	
	<style type="text/css">
			a {
				color: black;
			}
			
			a:hover {
				text-decoration: none;
			}
			.box-body{
				cursor: pointer;
			}
			.table{
			padding: 0 0 0 0 !important;
			}
			.table tr{
				background-color: white !important;
				border-bottom: 1px solid dashed !important;
			}
			.table .table-header{
				border-bottom: 1px solid dashed !important;
			}
			.box-header b:hover{
				background-color: #E7E7E7;
			}
			.box-header{
				border-bottom: 1px solid dashed !important;
			}
			 .box-header a{
			 	padding: 5px;
			 }
			 .box-body{
				padding: 0 0 0 0 !important;
				cursor: pointer;
			}
			.active{
				color: #000000;
				
			}
			.commen{
				cursor: pointer;
			}
			.co{
				color: blue;
			}
			.bl{
				color: black;
			}
			.box{
      margin-top: 10px !important;
  }
		</style>
		<script>
		$(function () {
			$(".commen").on("click",function  () {
				var $e1=$(this).addClass("mm").siblings(".commen").removeClass("mm");
				var $e2=$(this).addClass("bl").removeClass("co").siblings(".commen").addClass("co").removeClass("bl");
				$("img").appendTo(".mm span");
				var $img=$("<img src='../img/bottom.png'/>");
			})
		})
		</script>
	</head>

<body style="background-color: #ecf0f5;">
			<div class="">
				<div class="row" style="padding-top:10px">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">计划管理</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">计划管理</a>
					</div>
				</div>
				
				<div class="row">
			<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box box-primary">
					<div class="box-header">
						<a class="label label-success" href="planedit?pid=1"><span class="glyphicon glyphicon-plus"></span>
							新增
						</a>
						
						<div class="input-group" style="width:150px;float:right;top:-5px">
											<input type="text" class="form-control input-sm pull-right" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search" href=""></a>
											</div>
										</div>

					</div>
					<div class="box-body">
				<div class="table" style="padding-top: 15px;">
						<div class="table-responsive">
										<table class="table table-hover table-striped">
											<tr class="table-header">
												<th scope="col" class="commen mm">
												ID<span >
												<img src="../img/bottom.png" /></span>
												</th>
												<th scope="col" class="commen co">类型<span ></span></th>
												<th scope="col">标题</th>
												<th scope="col">发布时间</th>
												<th scope="col">发布人</th>
												<th scope="col">部门</th>
												<th scope="col" class="commen co">状态<span ></span></th>
												<th scope="col">操作</th>
											</tr>
											<tr>
												<td >
													1
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
													sadfaf
												</td>
												<td>
													xx部
												</td>
												<td>
													<div class="label label-info">一般</div>
												</td>
												<td>
													<a title="修改" href="##" class="label label-primary"><span class="glyphicon glyphicon-edit"></span> 修改</a>
													<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除" href="" class="label label-danger"><span class="glyphicon glyphicon-remove"></span> 删除</a>
												</td>
											</tr>
											
										</table>
									</div>
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
												<div class="pageOperation  pull-right">
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
						</div>
								</div>
							</div>
					
	</body>
	
	
	

</html>