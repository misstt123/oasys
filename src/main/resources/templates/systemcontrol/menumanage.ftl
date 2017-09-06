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
		<h1 style="font-size: 24px; margin: 0;" class="">菜单管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="index"><span class="glyphicon glyphicon-home"></span> 首页</a>
		> <a disabled="disabled">菜单管理</a>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="menuedit" class="label label-success"
						style="padding: 5px;"> <span class="glyphicon glyphicon-plus"></span>
						新增
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
					<table class="table table-hover">
						<tr>
							
							<th scope="col">名称</th>
							<th scope="col">图标</th>
							<th scope="col">路径</th>
							<th scope="col">类型</th>
							<th scope="col">排序</th>
							<th scope="col">显示</th>
							<th scope="col">操作</th>
						</tr>
						<tr>
							
							<td>系统管理</td>
							<td><span>fa-circle-o</span></td>
							<td><span>System/Menu.aspx</span></td>
							<td><span>菜单</span></td>
							<td><span>0</span></td>
							<td><span>是</span></td>
							<td><a  href="##" class="label sheding"><span
									class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
								 href="##" class="label sheding"><span
									class="glyphicon glyphicon-arrow-down"></span> 下移</a> <a 
								href="useredit?where=xg" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
								href="" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a>
									<a  href="##" class="label xinzeng"><span
									class="glyphicon glyphicon-plus"></span> 新增</a>
									</td>
						</tr>
						<tr>
							
							<td>系统管理</td>
							<td><span>fa-circle-o</span></td>
							<td><span>System/Menu.aspx</span></td>
							<td><span>菜单</span></td>
							<td><span>0</span></td>
							<td><span>是</span></td>
							<td><a  href="##" class="label sheding"><span
									class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
								 href="##" class="label sheding"><span
									class="glyphicon glyphicon-arrow-down"></span> 下移</a> <a 
								href="useredit?where=xg" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
								href="" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a>
									<a  href="##" class="label xinzeng"><span
									class="glyphicon glyphicon-plus"></span> 新增</a>
									</td>
						</tr>
						
					</table>
				</div>
			</div>
			<!--盒子尾-->
		</div>
	</div>
</div>
