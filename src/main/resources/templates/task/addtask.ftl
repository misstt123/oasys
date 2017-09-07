<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/common/tanchuang.css" />
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}



.text {
	min-height: 114px;
}
.reciver{
	position: relative;
    top: -27px;
    float: right;
    right: 4px;
    cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">任务管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">任务管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default"
						style="padding: 5px;"> <i
						class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="box-body">
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>类型</span>
							</label> <select class="form-control">
								<option value="0">公事</option>
								<option value="1">私事</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label> <select
								class="form-control">
								<option value="0">新任务</option>
								<option value="1">已接收</option>
								<option value="2">进行中</option>
								<option value="3">已提交</option>
								<option value="3">已完成</option>
							</select>
						</div>
						<div class="col-md-6 form-group">

							<label class="control-label">开始日期</label> <input name="startDate"
								class="form-control" onclick="WdatePicker()" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">结束日期</label> <input name="endDate"
								class="form-control" onclick="WdatePicker()" />
						</div>
						<div class="col-md-6 form-group">

							<label class="control-label">标题</label> <input name="titleName"
								type="text" id="title_Name" class="form-control" />
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label">接收人</label> <input
								name="reciverList" type="text" id="recive_list"
								class="form-control " disabled="disabled" style="background-color:#fff;"/>
							<div class="reciver">
								<span class="label label-success glyphicon glyphicon-plus"
									data-toggle="modal" data-target="#myModal">通讯录</span>
							</div>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">备注</label>
							<textarea class="form-control text"></textarea>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">评价</label>
							<textarea class="form-control text"></textarea>
						</div>
						<div class="col-md-6 form-group ">
							<label class="control-label">置顶</label> <br /> <span
								class="labels"><label><input type="checkbox"><i>✓</i></label></span>
						</div>

						<div class="col-md-6  form-group">
							<label class="control-label">取消</label> <br /> <span
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