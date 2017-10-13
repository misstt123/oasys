<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common/box.css" />
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
</style>
</head>

<body style="background-color: #ecf0f5;">
	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">部门管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">部门管理</a>
		</div>
	</div>
	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title">
						<a href="##" class="label label-default" style="padding: 5px;">
							<i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
						</a>
					</h3>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="box-body">
						<div class="row">
							<div class="col-md-6 form-group">
								<label class="control-label"><span>名称</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>电话</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>传真</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>邮箱</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>地址</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>上班时间</span></label> <input
									class="form-control" />
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"><span>下班时间</span></label> <input
									class="form-control" />
							</div>
						</div>
					</div>
				</div>
				<!--盒子尾-->
				<div class="box-footer">
					<input class="btn btn-primary" id="save" type="submit" value="保存" />
					<input class="btn btn-default" id="cancel" type="submit" value="取消"
						onclick="window.history.back();" />
				</div>
			</div>
		</div>
	</div>
</body>
<!-- <script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script> -->
</html>