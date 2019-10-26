<!-- 内部通讯录 -->
<!--盒子头-->
<div class="box-header">
	<h3 class="box-title">内部通讯录</h3>
	<a class="btn btn-sm btn-default thisrefresh" href="javascript:void(0);" title="刷新" style="padding: 5px;margin-top: -8px;">
		<span class="glyphicon glyphicon-refresh"></span>
	</a>
	<div class="box-tools">
		<div class="input-group" style="width: 150px;">
			<input type="text" class="form-control input-sm baseKey" placeholder="按部门/角色/用户名/电话号码/拼音" value="${(baseKey)!''}" style="width: 220px;"/>
			<div class="input-group-btn">
				<a class="btn btn-sm btn-default baseKeySumbit"> 
					<span class="glyphicon glyphicon-search"></span>
				</a>
			</div>
		</div>
	</div>
</div>
<!--盒子身体-->
<div class="box-body no-padding">
	<div class="table-responsive">
		<table class="table table-hover table-striped">
			<tr>
				<th scope="col">部门</th>
				<th scope="col">职位</th>
				<th scope="col">头像</th>
				<th scope="col">姓名</th>
				<th scope="col">性别</th>
				<th scope="col">Tel</th>
				<th scope="col">E-mail</th>
				<th scope="col">操作</th>
			</tr>
			<#if users?size gt 0>
			<#list users as user>
			<tr>
				<td><span>${user.dept.deptName}</span></td>
				<td><span>${user.position.name}</span></td>
				<td><a href="#"> <img src="image/${(user.imgPath)!'timg.jpg'}" class="img-circle"
						style="width: 24px; height: 24px;">
				</a></td>
				<td><span>${user.userName}</span></td>
				<td><span>
				<#if user.sex=="男">
					<img src="images/male.png" alt="男" style="width: 20px;height: 20px" />
				<#else>
					<img src="images/female.png" alt="女" style="width: 20px;height: 20px" />
				</#if>
				</span></td>
				<td><span>${user.userTel}</span></td>
				<td><span>${(user.eamil)!''}</span></td>
				<td>
					<a href="javascript:void(0);" userId="${user.userId}" class="label xiugai inlookthis">
						<span class="glyphicon glyphicon-search"></span> 查看
					</a> 
				</td>
			</tr>
			</#list>
			<#else>
				<tr>
				<td colspan="7" style="text-align: center;background: #eee;">没能找到联系人~~~</td>
				</tr>
			</#if>
		</table>
	</div>
</div>
<!--盒子尾-->
<#include "/common/paging.ftl"/>