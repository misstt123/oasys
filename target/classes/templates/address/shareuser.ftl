<div class="alert alert-danger alert-dismissable" role="alert" style="display: none;">
								错误信息:
								<button class="close thisclose" type="button">&times;</button>
								<span class="error-mess"></span>
							</div>
<div class="table-r">
	<table class="table  table-hover  container-fluid ">
		<thead>
			<tr class="row">
				<th class=" col-xs-1">
				</th>
				<th class=" col-xs-1"><span class="labels"
					style="display: block;"></span></th>
				<th class=" col-xs-2 b">部门</th>
				<th class="col-xs-2 b">职位</th>
				<th class="col-xs-2 b">用户名</th>
				<th class="col-xs-2 b">电话号码</th>
				<th class=" col-xs-2 b">性别</th>
				<th class=" col-xs-2">E-mail</th>
			</tr>
		</thead>
		<tbody>
			<#list users as user>
			<tr class="row">
				<td class=" col-xs-1"><span class="labels"><label>
					<input name="id" type="checkbox" userId="${user.userId}"><i>✓</i></label></span>
				</td>
				<td class=" col-xs-1"><span class="imgs center-block"> <img
						style="width: 24px; height: 24px;"
						class="profile-user-img img-responsive img-circle"
						src="/image/${(user.imgPath)!''}">
				</span></td>
				<td class="col-xs-2">${user.dept.deptName}</td>
				<td class=" col-xs-2">${user.position.name}</td>
				<td class="col-xs-2 na">${user.userName}</td>
				<td class="col-xs-2 na">${user.userTel}</td>
				<td class=" col-xs-2">男</td>
				<td class=" col-xs-2">${(user.eamil)!''}</td>
			</tr>
			</#list>
		</tbody>
	</table>
</div>
<#include "modalpaging.ftl"/>