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
var startday,endday;
    //变化一周时间
	function changeSomeday(str,days){
		var date=new Date(Date.parse(str));
		var millSeconds=Math.abs(date)+(days*24*60*60*1000);
				var rDate=new Date(millSeconds);
				 var rDate = new Date(millSeconds);  
   				 var year = rDate.getFullYear();  
    			var month = rDate.getMonth() + 1;
    			if(month<10)
    			month="0"+month;
    			var day=rDate.getDate();
    			 if (day < 10) day = "0" + day;
    			 return year+"-"+month+"-"+day;
	}
	function change (days) {
					$("#start").html(changeSomeday(startday,days));
					$("#end").html(changeSomeday(endday,days));
					 startday=changeSomeday(startday,days);
					endday=changeSomeday(endday,days);
					return startday+"-"+endday;
	}
	$(function () {
				var date = new Date();
				//距离该周的星期一有多少天
				var dayDistance=date.getDay()-1;
				//距离该周的星期日有多少天
				var dayDistance2=7-date.getDay();
				//先获得该日期的年 月
				var year = date.getFullYear();  
    			var month = date.getMonth()+ 1;
    			var day=date.getDate();
    			//今天的日期
    			var today=year+"-"+month+"-"+day;
    			
    			//该周的星期一
				var day1=changeSomeday(today,-dayDistance);
				//该周的星期日
				var day2=changeSomeday(today,dayDistance2);
				//该周的周一日期
				 startday=day1;
				//该周的周日日期
				 endday=day2;
				$("#start").html(startday);
				$("#end").html(endday);
				$(".lastweek").on('click',function() {
					var date=change(-7)
					alert(date);
				})
				
				$(".nextweek").on('click',function() {
					change(7)
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
						<h1 style="font-size:24px;margin: 0;" class="">考勤周报表</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">考勤周报表</a>
					</div>
				</div>
		<div class="box">
			<div class="box-header ">
				<a class="label  label-back lastweek">
					<span class="glyphicon glyphicon-chevron-left"></span>
					上一周
				</a>
				
				<a class="label  label-back nextweek" >
					<span class="glyphicon glyphicon-chevron-right"></span>
					下一周
				</a>
				<span id="start"></span>
				至
				<span id="end"></span>
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
						<th>星期一</th>
						<th>星期二</th>
						<th>星期三</th>
						<th>星期四</th>
						<th>星期五</th>
						<th>星期六</th>
						<th>星期日</th>
					</tr>
					<tr>
						<td>111</td>
						<td>111</td>
						<td><a href="attendceedit?nid=1">111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
						<td><a>111</a></td>
					</tr>
				</table>
			</div>
			
		</div>
