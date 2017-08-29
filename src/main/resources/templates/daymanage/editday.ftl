<link rel="stylesheet" type="text/css" href="css/common/box.css" />
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
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
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">日程管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">日程管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default" style="padding: 5px;">
						<i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="box-body">
					<div class="row">

						<div class="col-md-6 form-group">
							<label class="control-label"> <span> 类型</span>
							</label> <select class="form-control">
								<option value="0">日程提醒</option>
								<option value="1">假日安排</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>状态</span>
							</label> <select class="form-control">
								<option value="0">一般</option>
								<option value="1">重要</option>
								<option value="2">紧急</option>
							</select>
						</div>

						<div class="col-md-6 form-group">
							<span> <label class="control-label">开始日期</label>
							</span> <input class="form-control" id="start" onclick="WdatePicker()"
								value="" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">结束日期</label> <input
								class="form-control" id="end" onclick="WdatePicker()" />
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label"><span>标题</span></label> <input
								class="form-control" />
						</div>

						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label"><span>接收</span></label> <input
								class="form-control" onfocus="this.blur()"> <input
								style="display: none;">
							<div style="position: absolute; top: 31px; right: 20px;">
								<a href="##" class="label label-success" style="padding: 5px;">
									<i class="glyphicon glyphicon-plus"></i> <span>新增</span>
								</a>
							</div>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label"><span>描述</span></label>
							<textarea rows="5" cols="20" class="form-control"
								style="margin: 0px -0.5px 0px 0px; height: 114px; width: 522px;"></textarea>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label"><span>提醒</span></label> <br> <span
								class="labels"><label><input type="checkbox"><i>✓</i></label></span>
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
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
