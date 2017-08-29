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
		<h1 style="font-size: 24px; margin: 0;" class="">用户管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户管理</a>
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
							<label class="control-label"><span>用户名</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>电话</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>真实姓名</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>Email</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>地址</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>学历</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>毕业院校</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>身份证号</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>银行账号</span></label> <input
								class="form-control" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>部门</span>
							</label> <select class="form-control">
								<option value="0">总公司</option>
								<option value="1">总金办</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>性别</span>
							</label> <select class="form-control">
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>职位</span>
							</label> <select class="form-control">
								<option value="0">CEO</option>
								<option value="1">文员</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>角色</span>
							</label> <select class="form-control">
								<option value="0">超级管理员</option>
								<option value="1">小圆</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>工资</span></label> <input
								class="form-control" />
						</div>

						<div class="col-md-6 form-group">
							<span> <label class="control-label">入职时间</label>
							</span> <input class="form-control" id="start" onclick="WdatePicker()"
								value="" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">生日</label> <input
								class="form-control" id="start" onclick="WdatePicker()" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>皮肤</span>
							</label> <select class="form-control">
								<option value="0">经典蓝</option>
								<option value="1">原谅绿</option>
							</select>
						</div>
					</div>

					<!--判断一下 请求参数的值  进行显示-->
					<#if where == "xg">
						<div class="row">
							<hr />
							<div class="col-md-6">
								<label class="control-label"><span>头像</span></label>
								<div style="padding: 10px;">
									<img src="img/1.jpg"
										style="width: 100px; height: 100px; border-radius: 100px;" />
								</div>
								<div class="btn btn-default"
									style="position: relative; overflow: hidden;">
									<i class="glyphicon glyphicon-open"></i> 上传头像 <input type="file"
										name="file"
										style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;" />
								</div>
							</div>
							<div class="col-md-6">
								<label class="control-label"><span>重置密码</span></label> <br>
								<span class="labels"><label><input type="checkbox"><i>✓</i></label></span>
							</div>
						</div>
					</#if>
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