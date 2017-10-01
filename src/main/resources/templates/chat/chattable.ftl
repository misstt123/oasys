<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
		<#if manage??>
			<a href="writechat" class="label label-success" style="padding: 5px;">
				<span class="glyphicon glyphicon-plus"></span> 新增
			</a>
		</#if>
			<a href="" class="label label-success" style="padding: 5px;margin-left:5px;">
				<span class="glyphicon glyphicon-refresh"></span> 刷新
			</a>
		</h3>
		<div class="box-tools">
			<div class="input-group" style="width: 150px;">
				<input type="text" class="form-control input-sm baseKey"  placeholder="查找..." />
				<div class="input-group-btn">
					<a class="btn btn-sm btn-default baseKetsubmit"><span
						class="glyphicon glyphicon-search"></span></a>
				</div>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<div class="box-body no-padding">
		<div class="table-responsive">
			<table class="table table-hover">
				<tr>
					<th scope="col"><span class="paixu thistype">类型
						<#if type?? && icon??>
						<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col">标题</th>
					<th scope="col"><span class="paixu thistime">发布时间
						<#if time?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col">发布人</th>
					<th scope="col"><span class="paixu thisvisit">访问量
						<#if visitnum?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col">讨论次数</th>
					<th scope="col">附件</th>
					<th scope="col">操作</th>
				</tr>
				<#list list as this>
				<tr>
					<td><span class="label ${this.typecolor}">${(this.typeName)!''}</span></td>
					<td><span>${(this.title)!''}</span></td>
					<td><span>${(this.createTime)!''}</span></td>
					<td><span>${(this.userName)!''}</span></td>
					<td><span>${(this.visitNum)!''}</span></td>
					<td><span>${(this.visitNum)!''}</span></td>
					<td><span>附件</span></td>
					<td>
						<#if manage??>
						<a href="#" class="label xiugai"><span
							class="glyphicon glyphicon-edit"></span> 修改</a> 
						 <a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" href=""
						class="label shanchu"><span class="glyphicon glyphicon-remove"></span>
							删除</a>
						</#if>
						<a href="/replymanage" class="label xiugai"> <span
							class="glyphicon glyphicon-search"></span>查看</a>
					</td>
				</tr>
				</#list>
			</table>
		</div>
	</div>
	<!--盒子尾-->
	<#include "/common/paging.ftl"/>
</div>
<script>
	
</script>