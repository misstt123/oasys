<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<#include "/common/commoncss.ftl">
<link href="css/common/checkbox.css" rel="stylesheet"/>
<link href="css/common/iconfont.css"  rel="stylesheet"/>
<link href="css/plan/plantable.css" rel="stylesheet"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/iconfont.js"></script>
<script type="text/javascript" src="js/plan/plantable.js"></script>

</head>
	<body>
	
				<div class="row" style="padding-top:10px">
					<div class="col-md-10">
						<h1 >计划报表(日计划)</h1>
					</div>
					<div class="col-md-2 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">计划报表</a>
					</div>
				</div>
		<div class="col-md-12">
		<div class="box">
			<div class="box-header ">
				<a class="  label  label-back last">
					<span class="glyphicon glyphicon-chevron-left"></span>
					上一个
				</a>
				
				<a class=" label  label-back next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					下一个
				</a>
				<span id="start"></span>
				 至 
				<span id="end"></span> 
				
				<div class="time">
					<a><div class="btn vary day">
					日
				</div></a>
				<a><span class="btn vary week">
					周
				</span></a>
				<a><span class="btn vary month">
					月
				</span></a>
				</div>
				
			<div class="input-group" style="width:150px;float:right;top:-5px">
											<input type="text" class="form-control input-sm pull-right baseKey" value="${(baseKey)!''}" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change baseKetsubmit"></a>
											</div>
		    </div>
			<div class="box-body">
				<div id="refresh" class="thistable">
				<#include "/plan/realplantable.ftl"> 
				</div>
			</div>
			
		</div>
</div>

