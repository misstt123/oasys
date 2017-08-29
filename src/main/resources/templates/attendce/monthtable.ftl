<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/common/checkbox.css" rel="stylesheet"/>
	<link href="css/common/box.css" rel="stylesheet" />
	<link href="css/common/iconfont.css"  rel="stylesheet"/>
	<script type="text/javascript" src="easyui/jquery.min.js" ></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/iconfont.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
<script>
var yearmonth;
//变化一个月
function changeOnemonth (number) {
	var date=new Date(Date.parse(yearmonth));
		var month=date.getMonth() + 1+number;
		var year = date.getFullYear();
		if(month>12)
		{month=1;
		year=year+1;
		}
		if(month<1){
			month=12;
		year=year-1;
		}
		if(month<10)
		month="0"+month;
		 $("#month").html(year+"-"+month);
		 yearmonth=year+"-"+month;
		 return yearmonth;
}
	$(function () {
		var date = new Date();
		var month=date.getMonth() + 1;
		var year = date.getFullYear();
		if(month<10)
		month="0"+month;
		yearmonth=year+"-"+month;
		$("#month").html(yearmonth);
		$(".lastmonth").on("click",function  () {
			var date=changeOnemonth(-1)
			alert(date+"这里和后台交互")
		})
		$(".nextmonth").on("click",function  () {
			changeOnemonth(1)
		})
	})
</script>
<style>
.box {
    position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
    cursor: pointer;
     margin-top: 10px !important;
 
}
	.label-back {
    background-color: #6C7B8B;
    color: white;
   }

  .label {
    display: inline;
    padding: .2em .6em .3em;
    font-size: 75%;
    line-height: 1;
    white-space: nowrap;
    border-radius: .25em;
    margin-left: 10px;
    
}

    .label-back:hover{
    	color: white !important;
    }
   .box-header {
    color: #444;
    display: block;
    padding: 10px;
    position: relative;
        font-size: 18px;
}
    
</style>
		<title></title>
	</head>
	<body>
	<div class="row">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">考勤月报表</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">考勤月报表</a>
					</div>
				</div>
		<div class="box">
		<div class="box-header ">
				<a class="label  label-back lastmonth">
					<span class="glyphicon glyphicon-chevron-left"></span>
					上一月
				</a>
				
				<a class=" label  label-back nextmonth">
					<span class="glyphicon glyphicon-chevron-right"></span>
					下一月
				</a>
				<span id="month"></span>
				
				
				<div class="input-group" style="width:150px;float:right;">
											<input type="text" class="form-control input-sm pull-right" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search" href=""></a>
											</div>
										</div>
										
										
		    </div>
			<div class="box-body">
				<table class="table table-striped table-hover table-bordered table-responsive">
					<tr>
						<th>部门</th>
						<th>成员</th>
						<th>正常</th>
						<th>迟到</th>
						<th>早退</th>
						<th>旷工</th>
						
					</tr>
					<tr>
						<td>111</td>
						<td>111</td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						
					</tr>
				</table>
			</div>
			
		</div>
