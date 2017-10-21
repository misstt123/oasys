<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table
				class="table table-striped table-hover table-bordered table-responsive">
			
				<tr>
					<th>部门</th>
					<th>成员</th>
					<th>正常</th>
					<th>迟到</th>
					<th>早退</th>
					<th>请假</th>
					<th>出差</th>
					<th>旷工</th>
				</tr>
				
				<#if uMap??>
					<#list uMap?keys as userName>
						<#list ulist as user>
						<tr>
						  <#if userName==user.userName>
						    <td>${user.dept.deptName}</td>
							<td>${user.userName}</td>
						 	<#list uMap["${userName}"] as result>
					     	    <#if result==0>
					     	     	<td>-</td>
					     	    		<#else>
					     	    		<td>${result}</td>
					     	    </#if>
				  			</#list>
				  			 </#if>
						</tr> 	
						</#list>
					</#list>
				</#if>
			</table>
			<#include "/common/paging.ftl">
</body>
</html>