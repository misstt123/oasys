<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="easyui/jquery-1.12.4.js"></script>
<title>Insert title here</title>
<#include "/common/commoncss.ftl">
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script><title>Insert title here</title>
		<meta charset="UTF-8">
		<script>
			$(function () {
				//从开始日期到结束日期的间隔时间 默认为一个星期
			var days=7;
				var date = new Date();
				$("#start").val(date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate());
				
				var millSeconds=Math.abs(date)+(days*24*60*60*1000);
				var rDate=new Date(millSeconds);
				 var rDate = new Date(millSeconds);  
   				 var year = rDate.getFullYear();  
    			var month = rDate.getMonth() + 1;
    			if(month<10)
    			month="0"+month;
    			var day=rDate.getDate();
    			 if (day < 10) day = "0" + day;
    			 $("#end").val(year+"-"+month+"-"+day);
			})
			
		</script>
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
			<form action="" method="post">
			<div class="box-header">
				<a class="btn label-back"> 
					<span class="glyphicon glyphicon-chevron-left" onclick="window.history.back();"></span>返回</a>
			</div>
			<div class="box-body">
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>类型</span>
						</label>
						<select class="form-control">
							<option value="0">日计划</option>
							<option value="1">周计划</option>
							<option value="2">月计划</option>
						</select>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">状态</label>
						<select class="form-control">
							<option value="0">未完成</option>
							<option value="1">已完成</option>
							<option value="2">已取消</option>
						</select>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<span>
						<label class="control-label" >开始时间</label>
						</span>
						<input class="form-control" id="start" onclick="WdatePicker()" />
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">结束时间</label>
						<input class="form-control" id="end" onclick="WdatePicker()" />
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">标题</label>
						<input class="form-control"  />
					</div>
					<div class="col-md-6 form-group" style="position: relative;">
						<label class="control-label">标签</label>
						<input class="form-control" / >
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">计划</label>
						<textarea class="form-control text" ></textarea>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">总结</label>
						<textarea class="form-control text"></textarea>
					</div>
				</div>
				
				<div class="row">
					
					<div class="col-md-6 form-group">
						<label class="control-label">评价</label>
						<textarea class="form-control text"></textarea>
					</div>
				</div>
				
			</div>
			
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存"/>
				<input class="btn btn-default active" id="cancel" type="submit" value="取消" onclick="window.history.back();"/>
			</div>
			</form>
		</div>
		
	</body>
</html>
