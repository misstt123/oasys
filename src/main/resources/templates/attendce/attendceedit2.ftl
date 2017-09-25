<!DOCTYPE html>
<html>
	<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<#include "/common/commoncss.ftl">

<link href="css/common/checkbox.css" rel="stylesheet"/>
<link href="css/common/iconfont.css"  rel="stylesheet"/>
<script type="text/javascript" src="easyui/jquery.min.js" ></script>
<script type="text/javascript" src="js/iconfont.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
<meta charset="UTF-8">
<style>

   
.box{
	position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
	padding: 10px 0px 10px 10px;
}

.box-body .form-group{
	margin-bottom: 15px;
}
.box .box-body .text{
	min-height: 114px;
}
.box .box-body .row .ischeck{
	width: 28px;
	height: 28px;
}
	.label-back {
    background-color: #6C7B8B;
    color: white;
    }
    .label-back:hover{
    	color: white !important;
    }
    
   
    .accpet{
    	position:absolute;
    	top:30px;
    	right:20px;
    	background-color: #00a65a;
    	color:white;
    	width: 74px;
    	height:25px;
    	font-size:10px;
    	padding: 0 0 2px;
    	text-align:center;
    	line-height: 25px;
    }
    .accpet:hover{
    	color: white !important;
    }
    
</style>
		<title></title>
		
	</head>
	<body>
		<div class="box increase">
			<form action="attendcesave" method="post">
			<div class="box-header">
				<a class="btn label-back" href="javascript:void(0);"  onclick="window.history.back();"> 
					<span class="glyphicon glyphicon-chevron-left" ></span>返回</a>
			</div>
			<div class="box-body">
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>类型</span>
						</label>
						<select class="form-control atttype" >
							<#list type as t>
								<option ${(attends??&&attends.typeId==t.typeId)?string('selected','')}>${t.typeName}</option>
							</#list>
						</select>
					</div>
					
					<div class="col-md-6 form-group">
						<label class="control-label">备注</label>
						<input name="remark"  class="form-control remark" value="<#if attends??>${attends.attendsRemark}</#if>"/>
					</div>
					<input type="hidden" name="id"  value=${attends.attendsId} > 
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>状态</span>
						</label>
						<select class="form-control " >
							  <#list status as s>
								<option ${(attends??&&attends.statusId==s.statusId)?string('selected','')} >${s.statusName}</option>
							</#list>
						</select>
					</div>
				</div>
				
			</div>
			
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存"  />
				<input class="btn btn-default active" id="cancel" type="submit" value="取消" onclick="window.history.back();"/>
			</div>
			</form>
		</div>
		
		

		
	</body>
</html>
