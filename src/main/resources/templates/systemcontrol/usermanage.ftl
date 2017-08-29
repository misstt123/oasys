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

	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">用户管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">用户管理</a>
		</div>
	</div>

	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box box-primary">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title">
						<a href="useredit?where=xz" class="label label-success" style="padding: 5px;">
							<span class="glyphicon glyphicon-plus">新增</span>
						</a> <a href="daycalendar" class="label label-primary"
							style="padding: 5px; margin-left: 5px;"> <span
							class="glyphicon glyphicon-gift">生日</span>
						</a>
					</h3>
					<div class="box-tools">
						<div class="input-group" style="width: 150px;">
							<input type="text" class="form-control input-sm"
								placeholder="查找..." />
							<div class="input-group-btn">
								<a class="btn btn-sm btn-default"><span
									class="glyphicon glyphicon-search"></span></a>
							</div>
						</div>
					</div>
				</div>
				<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="table-responsive">
						<table class="table table-hover table-striped">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">&nbsp;</th>
								<th scope="col">部门</th>
								<th scope="col">真实姓名</th>
								<th scope="col">用户名</th>
								<th scope="col">角色</th>
								<th scope="col">电话</th>
								<th scope="col">工资</th>
								<th scope="col">操作</th>
							</tr>
							<tr>
								<td>1</td>
								<td><img src="img/1.jpg" class="img-circle"
									style="width: 25px; height: 25px;" /></td>
								<td><span>总公司</span></td>
								<td><span>罗翔</span></td>
								<td><span>luoxiang</span></td>
								<td><span>超级管理员</span></td>
								<td><span>111122223333</span></td>
								<td><span>3000.0</span></td>
								<td><a title="修改" href="useredit?where=xg" class="label label-primary"><span
										class="glyphicon glyphicon-edit"></span> 修改</a> <a title="查看详细信息"
									href="##" class="label label-default"><span
										class="glyphicon glyphicon-search"></span> 查看</a> <a
									onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" title="删除"
									href="" class="label label-danger"><span
										class="glyphicon glyphicon-remove"></span> 删除</a></td>
							</tr>
						</table>
					</div>
				</div>
				<!--盒子尾-->
				<div class="box-footer no-padding" style="margin-top: -20px;">
					<div style="padding: 5px;">
						<div id="page"
							style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
							<div style="width: 40%; float: left;">
								<div class="pageInfo" style="margin-left: 5px;">
									共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
								</div>
							</div>
							<div style="width: 60%; float: left;">
								<div class="pageOperation">
									<a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-backward"></span>
									</a> <a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-triangle-left"></span>
									</a> <a disabled="disabled" class="btn btn-default no-padding"
										style="width: 30px; height: 20px;"> 1 </a> <a
										class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-triangle-right"></span>
									</a> <a class="btn btn-sm btn-default no-padding"
										style="width: 30px; height: 20px;"> <span
										class="glyphicon glyphicon-forward"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
