
<#list tasklist as task>
<tr>
	
	<td><span>${task.typename}</span></td>
	
	<td><span>${task.title}</span></td>
	<td><span>${task.publishtime}</span></td>
	
	<td><span>${task.username}</span></td>
	<td><span>${task.deptname}</span></td>
	<#if task.cancel==true>
	<td><span class="label label-default">已取消</span></td>
	<#else>
	<td><span class="label ${task.statuscolor}">${task.statusname}</span></td>
	</#if>
	<#if task.zhiding==true>
		<td> <span class="labels"><label><input type="checkbox" name="top" class="val" checked disabled><i>✓</i></label></span></td>
	<#else>
		<td> <span class="labels"><label><input type="checkbox" name="top" class="val" disabled><i>✓</i></label></span></td>
	</#if>
	<td><a  href="edittasks?id=${task.taskid}"
		class="label xiugai"><span
			class="glyphicon glyphicon-edit"></span> 修改</a> 
			<a href="seetasks?id=${task.taskid}" class="label xiugai"><span
			class="glyphicon glyphicon-search"></span> 查看</a>
			 <a href="shanchu?id=${task.taskid}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
		class="label shanchu"><span
			class="glyphicon glyphicon-remove"></span> 删除</a></td>
</tr>
</#list>

