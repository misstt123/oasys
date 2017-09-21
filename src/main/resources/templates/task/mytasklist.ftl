
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
	<td><span class="label ${(task.statuscolor)!''}">${(task.statusname)!''}</span></td>
	</#if>
	
	<td>
		<a href="myseetasks?id=${task.taskid}" class="label xiugai"><span
			class="glyphicon glyphicon-search"></span> 查看</a>
			<#if task.cancel==true>
			 <a href="myshanchu?id=${task.taskid}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
		class="label shanchu"><span
			class="glyphicon glyphicon-remove"></span> 删除</a>
			<#else>
			</#if>
	</td>
</tr>
</#list>

