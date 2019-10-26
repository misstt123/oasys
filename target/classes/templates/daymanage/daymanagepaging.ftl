<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="dayedit" class="label label-success" style="padding: 5px;">
				<span class="glyphicon glyphicon-plus"></span> 新增
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
					
					<th scope="col">类型</th>
					<th scope="col">标题</th>
					<th scope="col">发布时间</th>
					<th scope="col">发布人</th>
					<th scope="col">部门</th>
					<th scope="col">状态</th>
					<#if ismyday??>
						<th scope="col">操作</th>
					</#if>
				</tr>
				<#list schedules as schedule>
					<tr>
						<td><span>
							<#list types as type>
								<#if schedule.typeId == type.typeId>
									<span>${type.typeName} </span>
								</#if>
							</#list>
						</span></td>
						<td><span>${(schedule.title)!''}</span></td>
						<td><span>${(schedule.createTime?string("yyyy-MM-dd HH:mm:ss"))!''}</span></td>
						<td><span>${(schedule.user.userName)!''}</span></td>
						<td><span>${(schedule.user.dept.deptName)!''}</span></td>
						<td>
							<#list statuses as status>
								<#if schedule.statusId == status.statusId>
									<div class="label ${status.statusColor}">${status.statusName}</div>
								</#if>
							</#list>
						</td>
						<#if ismyday??>
							<td>
								<a  href="dayedit?rcid=${schedule.rcId}" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
								href="dayremove?rcid=${schedule.rcId}" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a>
							</td>
						</#if>
					</tr>
				</#list>
			</table>
		</div>
	</div>
	<!--盒子尾-->
	<#include "/common/paging.ftl"/>
</div>