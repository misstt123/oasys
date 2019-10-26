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

.paixu :hover{
color:blue;
}

.box {
	margin-top: 10px !important;
}
</style>
<script>
	/* $(
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
			}) */
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
		<div class="col-md-12 thistable">
			<!--id="container"-->
			<#include "attendcetable.ftl">
		</div>
	</div>
</body>


</html>