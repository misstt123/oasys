<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<#include "/common/commoncss.ftl">
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
			.box{
      margin-top: 10px !important;
  }
		</style>
		
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
			<div class="col-md-12 thistable">
				<#include "planviewtable.ftl">
			</div>
								</div>
							</div>
					
	</body>
	
	
	

</html>