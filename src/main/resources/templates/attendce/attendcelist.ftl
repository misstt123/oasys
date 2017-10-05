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

th .paixu:HOVER{
color:blue;
}

.box {
	margin-top: 10px !important;
}
</style>
<!-- <script>
$(function(){
	if($(".paixu").children().length==0){
		//如果该元素下面没有span就是那个上下箭头
		$(".paixu").css("color","blue");
	}
})
</script> -->
</head>

<body style="background-color: #ecf0f5;">
	<div class="row" style="padding-top:10px">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">考勤列表</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">考勤列表</a>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12 thistable">
		 	<#include "attendcelisttable.ftl">
		</div>
	</div>
</body>




</html>