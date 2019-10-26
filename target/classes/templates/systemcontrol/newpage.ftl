<!DOCTYPE html>
<html>
<head>
<style>
.box {
	position: relative;
	border-radius: 3px;
	background: #ffffff;
	border-top: 3px solid #d2d6de;
	margin-bottom: 20px;
	width: 100%;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	padding: 10px 0px 10px 10px;
}

.box-body .form-group {
	margin-bottom: 15px;
}

.box .box-body .text {
	min-height: 114px;
}

.box .box-body .row .ischeck {
	width: 28px;
	height: 28px;
}

.label-back {
	background-color: #6C7B8B;
	color: white;
}

.label-back:hover {
	color: white !important;
}

.accpet {
	position: absolute;
	top: 30px;
	right: 20px;
	background-color: #00a65a;
	color: white;
	width: 74px;
	height: 25px;
	font-size: 10px;
	padding: 0 0 2px;
	text-align: center;
	line-height: 25px;
}

.accpet:hover {
	color: white !important;
}

label {
	font-size: 16px;
	cursor: pointer;
}

label i {
	font-size: 16px;
	font-style: normal;
	display: inline-block;
	width: 25px;
	height: 25px;
	text-align: center;
	line-height: 25px;
	color: transparent;
	vertical-align: middle;
	margin: -2px 2px 1px 0px;
	border: #2489c5 0px solid;
	border-radius: 3px;
	background: #eee;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]:checked+i {
	background: #2489c5;
	color: #fff;
}
</style>
<title></title>

</head>

<body>
	<div class="head-show">
		<h3>菜单管理</h3>
		<ol class="breadcrumb pull-right">
			<li><a href="#"> <span class="glyphicon glyphicon-home"></span>
					首页
			</a></li>
			<li class="active">菜单管理</li>
		</ol>
	</div>
	<div class="box increase">

		<form action="" method="post">
			<div class="box-header" style="botder-bottem:1px solid #ddd">
				<a class="btn label-back"> <span
					class="glyphicon glyphicon-chevron-left"
					onclick="window.history.back();"></span>返回
				</a>
			</div>
			<div class="box-body">
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label"> <span>类型</span>
						</label> <select class="form-control">
							<option value="1">公事</option>
							<option value="1">私事</option>
						</select>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">状态</label> <select
							class="form-control">
							<option value="1">公事</option>
							<option value="1">私事</option>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 form-group">
						<span> <label class="control-label">开始日期</label>
						</span> <input class="form-control" id="start" onclick="WdatePicker()"
							value="" />
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">结束日期</label> <input
							class="form-control" id="end" onclick="WdatePicker()" />
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">标题</label> <input
							class="form-control" />
					</div>
					<div class="col-md-6 form-group" style="position: relative;">
						<label class="control-label">接收</label> <input
							class="form-control"> <a> <span
							class="btn glyphicon glyphicon-plus accpet"> 新增 </span>
						</a> </input>

					</div>
				</div>

				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">描述</label>
						<textarea class="form-control text"></textarea>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">评价</label>
						<textarea class="form-control text"></textarea>
					</div>
				</div>

				<div class="row">

					<div class="col-md-6 form-group ">

						<label class="control-label">置顶</label> <br /> <label><input
							type="checkbox"><i>✓</i></label>

					</div>

					<div class="col-md-6  form-group">
						<label class="control-label">取消</label> <br /> <label><input
							type="checkbox"><i>✓</i></label>

					</div>
				</div>

			</div>

			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
				<input class="btn btn-default active" id="cancel" type="submit"
					value="取消" onclick="window.history.back();" />
			</div>
		</form>
	</div>

</body>

</html>