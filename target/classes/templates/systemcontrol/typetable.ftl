<div class="table-responsive">
	<table class="table table-hover">
		<tr>
			<th scope="col">模块</th>
			<th scope="col">类型</th>
			<th scope="col">排序值</th>
			<!-- <th scope="col">颜色</th> -->
			<th scope="col">操作</th>
		</tr>
		<#list typeList as type>
		<tr>
			<td><span>${(type.typeModel)!''}</span></td>
			<td><span>${(type.typeName)!''}</span></td>
			<td><span>${(type.typeSortValue)!''}</span></td>
			<!-- <td><span>${(type.typeColor)!''}</span></td> -->
			<td><a href="typeedit?typeid=${type.typeId}"
				class="label xiugai"><span class="glyphicon glyphicon-edit"></span>
					修改</a> <a title="查看详细信息" href="##" class="label xiugai"><span
					class="glyphicon glyphicon-search"></span> 查看</a> <a
				onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
				href="deletetype?id=${type.typeId}" class="label shanchu"><span
					class="glyphicon glyphicon-remove"></span> 删除</a></td>
		</tr>
		</#list>
	</table>
</div>