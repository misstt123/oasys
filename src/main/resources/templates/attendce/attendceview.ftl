<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link href="css/common/checkbox.css" rel="stylesheet" />
<style type="text/css">
/* .{
			width:1100px;
			
			} */
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.box-body {
	cursor: pointer;
}

.table {
	padding: 0 0 0 0 !important;
}

.table tr {
	background-color: white !important;
	border-bottom: 1px solid dashed !important;
}

.table .table-header {
	border-bottom: 1px solid dashed !important;
}

.box-header b:hover {
	background-color: #E7E7E7;
}

.box-header a {
	padding: 5px;
}

.box-body {
	padding: 0 0 0 0 !important;
}

.active {
	color: #000000;
}

.box-body .table-header .status {
	color: #72afd2;
}

.box-body  .table-header  .type {
	color: #72afd2;
}

.box-body .table-header span {
	width: 2px !important;
	height: 2px !important;
}

.commen {
	cursor: pointer;
}

.co {
	color: blue;
}

.bl {
	color: black;
}

.box {
	margin-top: 10px !important;
}
</style>
<script>
	$(
			function() {
				$(".commen")
						.on(
								"click",
								function() {
									var $e1 = $(this).addClass("mm").siblings(
											".commen").removeClass("mm");
									var $e2 = $(this).addClass("bl")
											.removeClass("co").siblings(
													".commen").addClass("co")
											.removeClass("bl");
									$(".mm span")
											.addClass(
													"glyphicon glyphicon-triangle-bottom")
											.siblings(".co span")
											.removeClass(
													"glyphicon glyphicon-triangle-bottom");
								})
			})
</script>
</head>

<body style="background-color: #ecf0f5;">
	<div class="row" style="padding-top:10px">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">考勤管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">考勤管理</a>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box box-primary">
				<div class="box-header" style="padding-bottom: 20px">
					<a class="label label-success" href="attendceedit"><span
						class="glyphicon glyphicon-plus"></span> 新增 </a>

					<div class="input-group"
						style="width: 150px; float: right; top: -5px">
						<input type="text" class="form-control input-sm pull-right"
							placeholder="查找..." />
						<div class="input-group-btn" style="top: -1px;">
							<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change"
								href=""></a>
						</div>
					</div>

				</div>
				<div class="box-body">
					<div class="table" style="padding-top: 15px;">
						<div class="">
							<table class="table table-hover table-striped">
								<tr class="table-header">
									<th scope="col" class="commen mm">类型<span
										class="glyphicon glyphicon-triangle-bottom"></span>
									</th>
									<th scope="col">时间</th>
									<th scope="col">ip</th>
									<th scope="col">备注</th>
									<th scope="col" class="commen co">状态<span></span></th>
									<th scope="col">操作</th>
								</tr>
								    <#if alist??>
									<#list alist as att>
									<tr>
									<td><span>
									<#if att.typeId??>
									<#if att.typeId==8>
									上班
									</#if>
									<#if att.typeId==9>
									下班
									</#if>
									<#if att.typeId==10>
									旷工
									</#if>
									</#if>
									</span></td>
									
									<td ><span>
									<#if att.attendsTime??>
									${att.attendsTime}</#if>
									</span></td>
									<td><span><#if att.attendsIp??>
									${att.attendsIp}</#if>
									</span></td>
									<td><#if att.attendsRemark??>
									${att.attendsRemark}</#if>
									</td>
									<td>
									<#if att.statusId??>
									<#if att.statusId==10>
									<div class="label label-success">正常</div>
									</#if>
									<#if att.statusId==11>
									<div class="label label-danger">迟到</div>
									</#if>
									<#if att.statusId==12>
									<div class="label label-danger">早退</div>
									</#if>
									</#if>
									</td>
									<td><a  href="attendceedit?aid=${att.attendsId}" class="label xiugai"><span
											class="glyphicon glyphicon-edit"></span> 修改</a> <a
										onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
										href="attdelete?aid=${att.attendsId}" class="label shanchu"><span
											class="glyphicon glyphicon-remove"></span> 删除</a></td>
										</tr>
									</#list>
									</#if>
							

							</table>
						</div>
					</div>
				</div>


				<!--盒子尾-->
				<div class="box-footer no-padding" style="margin-top: -20px;">
					<div style="padding: 5px;">
						<div id="page"
							style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
							<div style="width: 40%; float: left;">
								<div class="pageInfo" style="margin-left: 5px;">
									共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
								</div>
							</div>
							<div style="width: 60%; float: left;">
								<div class="pageOperation pull-right">
									<a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-backward"></span>
									</a> <a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-triangle-left"></span>
									</a> <a disabled="disabled" class="btn btn-default no-padding"
										style="width: 30px; height: 20px;"> 1 </a> <a
										class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-triangle-right"></span>
									</a> <a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-forward"></span>
									</a>
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