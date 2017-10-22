
<table class="table table-striped table-hover table-bordered table-responsive">
					<tr>
						<th>部门</th>
						<th>成员</th>
						<th>星期一</th>
						<th>星期二</th>
						<th>星期三</th>
						<th>星期四</th>
						<th>星期五</th>
						<th>星期六</th>
						<th>星期日</th>
					</tr>
		
			<#if ulist??>
				<#list ulist as user>
				    <tr>
						<td>${user.dept.deptName}</td>
						<td>${user.userName}</td>
						<#list weekday as wd>
			<td class="report">
				<#if user.aSet??>
				 <#list user.aSet as att>
				    <#if user.userId==att.user.userId>
				      	<#if (att.weekOfday??)&&(att.weekOfday==wd)>
					 	 	<a href="attendceedit?aid=${att.attendsId}" >
					 	 	    <#if att.typeId==8>
									<div >上班：${att.attendHmtime}</div>
								</#if>
								<#if att.typeId==9>
									<div >下班：${att.attendHmtime}</div>
								</#if>
							</a>
						 </#if>
					    </#if>
					</#list>
				</#if>
			</td>
						</#list>
					</tr>
				</#list>
			</#if>
			</table>
			
			<#include "/common/paging.ftl">
