<#include "/common/commoncss.ftl">
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
.text{
	min-height: 114px;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">账号管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">账号管理</a>
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
								<option value="0">系统邮件</option>
								<option value="1">公司邮件</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label> 
							<select class="form-control">
								<option value="0">有效</option>
								<option value="1">无效</option>
							</select>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">名称</label> 
							<input name="accountName" type="text" id="account_Name" class="form-control" 
							readonly="readonly" style="background-color:#fff;"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">发件昵称</label>
							<input name="accountName2" type="text" id="account_Name2" class="form-control" />
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">邮件账号</label>
							 <input class="form-control mail" />
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label">授权码</label>
							<input class="form-control" />
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">备注</label>
							<textarea class="form-control text"></textarea>
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