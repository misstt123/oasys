<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/common/checkbox.css" rel="stylesheet"/>
	<link href="css/common/iconfont.css"  rel="stylesheet"/>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/iconfont.js"></script>

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
   .box-header .vary {
    background: #E7E7E7;
    color: #333;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 10pt;
    margin-left: 5px;
}

   .box-header .time{
   	    position: absolute;
    top: 10px;
    right: 170px;
   }
  .box{
      margin-top: 10px !important;
  }
</style>
		<title></title>
	</head>
	<body>
	
				<div class="row">
					<div class="col-md-2">
						<h1 style="font-size:24px;margin: 0;" class="">计划报表</h1>
					</div>
					<div class="col-md-10 text-right">
						<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a>
						>
						<a disabled="disabled">计划报表</a>
					</div>
				</div>
		<div class="">
		<div class="box">
			<div class="box-header ">
				<a class="  label  label-back">
					<span class="glyphicon glyphicon-chevron-left"></span>
					上一个
				</a>
				
				<a class=" label  label-back">
					<span class="glyphicon glyphicon-chevron-right"></span>
					下一个
				</a>
				2017-08-23 00:00 至 2017-08-23 23:59
				
				<div class="time">
					<a><span class="vary">
					日
				</span></a>
				<a><span class="vary">
					周
				</span></a>
				<a><span class="vary">
					月
				</span></a>
				</div>
				
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
						<th>计划</th>
						<th>状态</th>
						<th>总结</th>
						<th>评价</th>
						
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
</div>