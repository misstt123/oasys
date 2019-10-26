<!-- 外部通讯录 -->
<!--盒子头-->
<div class="box-header">
	<h3 class="box-title">${(outtype)!'外部通讯录'}</h3>
	<a class="btn btn-sm btn-default thisrefresh" href="javascript:void(0);" title="刷新" style="padding: 5px;margin-top: -8px;"><span
			class="glyphicon glyphicon-refresh"></span></a>
	<div class="box-tools">
		<div class="input-group" style="width: 150px;">
			<input type="text" class="form-control input-sm baseKey" placeholder="查找..." value="${(baseKey)!''}"/>
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
				<th scope="col">分类</th>
				<th scope="col">所属公司</th>
				<th scope="col">头像</th>
				<th scope="col">姓名</th>
				<th scope="col">性别</th>
				<th scope="col">Tel</th>
				<th scope="col">E-mail</th>
				<th scope="col">操作</th>
			</tr>
			<#if directors?size gt 0>
			<#list directors as d>
			<tr>
				<#if d.catelog_name?? & d.catelog_name!="">
					<td><span>${(d.catelog_name)!'外部通讯录'}</span></td>
				<#else>
					<td><span>外部通讯录</span></td>
				</#if>
				
				<td><span>${(d.companyname)!''}</span></td>
				<td><a href="#"> <img src="/image/${(d.image_path)!'/timg.jpg'}" class="img-circle"
						style="width: 25px; height: 25px;">
				</a></td>
				<td><span>${(d.user_name)!''}</span></td>
				<td><span>
				<#if d.sex=="男">
					<img src="images/male.png" alt="男" style="width: 20px;height: 20px" />
				<#else>
					<img src="images/female.png" alt="女" style="width: 20px;height: 20px" />
				</#if>
				</span></td>
				<td><span>${d.phone_number}</span></td>
				<td><span>${(d.email)!''}</span></td>
				<td style="width: 252px;">
					<a href="javascript:void(0);" class="label xinzeng thisshare" directorId="${d.director_id}"> 
						<span class="glyphicon glyphicon-new-window"></span> 分享
					</a> 
					<a href="javascript:void(0);" director="${d.director_id}" class="label xiugai outlookthis">
						<span class="glyphicon glyphicon-search"></span> 查看
					</a> 
					<a did="${d.director_users_id}"  href="javascript:void(0);" class="label shanchu thisdelete">
						<span class="glyphicon glyphicon-remove"></span> 删除
					</a>
					<#if userId==d.user_id>
					<a title="修改" did="${d.director_id}" href="javascript:void(0);" class="label xiugai thischange">
						<span class="glyphicon glyphicon-edit"></span> 修改
					</a> 
					<#else>
					<a title="移动" 
					thisdid="${(d.director_id)!''}" 
					thisuserName="${(d.user_name)!''}" 
					thisimgpath="images/touxiang/${(d.image_path)!'timg.jpg'}"
					 thisphoneNumber="${d.phone_number}"
					 thissex="${d.sex}"
					 thisemail="${(d.email)!''}"
					 thiscompany="${(d.companyname)!''}"
					   href="javascript:void(0);" class="label sheding thismove">
						<span class="glyphicon glyphicon-retweet"></span> 移动
					</a>
					</#if>
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
<#include "/common/pagingmybatis.ftl"/>
<#include "/address/sharemodal.ftl"/>