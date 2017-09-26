<div class="bgc-w box box-primary">
	<div class="box-header" style="padding-bottom: 20px">
		<a class="label label-success" href="attendceedit"><span
			class="glyphicon glyphicon-plus"></span> 新增 </a>

		<div class="input-group" style="width: 150px; float: right; top: -5px">
			<input type="text" class="form-control input-sm pull-right"
				placeholder="查找..." />
			<div class="input-group-btn" style="top: -1px;">
				<a
					class="btn btn-sm btn-default glyphicon glyphicon-search btn-change"
					href=""></a>
			</div>
		</div>

	</div>
	<div class="box-body">
		<div class="table" style="padding-top: 15px;">
			<div class="">
				<table class="table table-hover table-striped">
					<tr class="table-header">
						<th scope="col">用户名</th>
						<th scope="col" class="commen mm">类型<span
							class="glyphicon glyphicon-triangle-bottom"></span>
						</th>
						<th scope="col">时间</th>
						<th scope="col">ip</th>
						<th scope="col">备注</th>
						<th scope="col" class="commen co">状态<span></span></th>
						<th scope="col">操作</th>
					</tr>
					<#if alist??>
									<#list alist as att>
									<tr>
									<td ><span>
									<#if att.user.userName??>
									${att.user.userName}</#if>
									</span></td>
									<td><span>
									<#if att.typeId??>
									
									<#list type as t>
											<#if att.typeId==t.typeId>${t.typeName}</#if>
										</#list>
									</#if>
									</span></td>
									
									<td ><span>
									<#if att.attendsTime??>
									${att.attendsTime}</#if>
									</span></td>
									<td><span><#if att.attendsIp??>
									${att.attendsIp}</#if>
									</span></td>
									<td><#if att.attendsRemark??>
									${att.attendsRemark}</#if>
									</td>
									<td>
									<#if att.statusId??>
										<#list status as s>
												<#if att.statusId==s.statusId><span class="label ${s.statusColor}">${s.statusName}</span></#if>
										</#list>
									</#if>
									</td>
									<td><a  href="attendceedit?aid=${att.attendsId}" class="label xiugai"><span
											class="glyphicon glyphicon-edit"></span> 修改</a> <a
										onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
										href="attdelete?aid=${att.attendsId}" class="label shanchu"><span
											class="glyphicon glyphicon-remove"></span> 删除</a></td>
										</tr>
									</#list>
									</#if>
							</table>
			</div>
		</div>
	</div>


	<!--盒子尾-->
	<#include "/common/paging.ftl">
</div>