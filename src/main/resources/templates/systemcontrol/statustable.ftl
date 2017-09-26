
<div class="table-responsive">
	<table class="table table-hover">
		<tr>
			<th scope="col">模块</th>
			<th scope="col">状态</th>
			<th scope="col">排序值</th>
			<th scope="col">颜色</th>
			<th scope="col">操作</th>
		</tr>
		<#list statusList as status>
		<tr>
			<td><span>${(status.statusModel)!''}</span></td>
			<td><span>${(status.statusName)!''}</span></td>
			<td><span>${(status.statusSortValue)!''}</span></td>
			<td><span>${(status.statusColor)!''}</span></td>
			<td><a href="statusedit?statusid=${status.statusId}"
				class="label xiugai"><span class="glyphicon glyphicon-edit"></span>
					修改</a> <a href="##" class="label xiugai"><span
					class="glyphicon glyphicon-search"></span> 查看</a> <a
				onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
				href="deletestatus?id=${status.statusId}" class="label shanchu"><span
					class="glyphicon glyphicon-remove"></span> 删除</a></td>
		</tr>
		</#list>
	</table>
</div>
