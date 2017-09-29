	<!--盒子身体-->
		<div class="box-body no-padding">
			<div style="padding: 5px;">
				<a class="btn btn-sm btn-default bac chec" href="##" title="全选/反选"><span
					class="glyphicon glyphicon-unchecked"></span></a>
				<div class="btn-group">
					<a class="btn btn-sm btn-default bac sdelete" title="删除">
						<span class="glyphicon glyphicon-trash"></span></a>
					<a class="btn btn-sm btn-default bac" href="##" title="标为已读">
						<span class="glyphicon glyphicon-eye-open"></span></a> 
					<a class="btn btn-sm btn-default bac" href="#3" title="星标">
						<span class="glyphicon glyphicon-star"></span></a>
				</div>
				<a class="btn btn-sm btn-default bac" href="" title="刷新"><span
					class="glyphicon glyphicon-refresh"></span></a>
			</div>
			<div class="table-responsive">
				<table class="table table-hover table-striped">
					<tr>
						<th scope="col">选择</th>
						<th scope="col">&nbsp;</th>
						<th scope="col">类型</th>
						<th scope="col">收件人</th>
						<th scope="col">主题</th>
						<th scope="col">时间</th>
						<th scope="col">附件</th>
						<th scope="col">状态</th>
						<th scope="col">操作</th>
					</tr>
					<#if (maillist?size gte 0) >
					<#list maillist as mail>
					<tr>
						<td style="text-align: center;">
						<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
						</td>
						<#if mail.star==true>			
							<td class="em"><span class="glyphicon glyphicon-star"
								style="width: 25px;"></span></td>
							<#else>
							<td class="em"><span class="glyphicon glyphicon-star-empty"
								style="width: 25px;"></span></td>
						</#if>
						<#if mail.typename=="公告">
						<td><span style="color:red;">${(mail.typename)!''}</span></td>
						<#else>
						<td><span>${(mail.typename)!''}</span></td>
						</#if>
						<td><span>${(mail.reciver)!''}</span></td>
						<#if mail.read==true>
						<td><span>${(mail.title)!''}</span></td>
						<#else>
						<td><span><strong>${(mail.title)!''}</strong></span></td>
						</#if>
						<td><span>${(mail.time)!''}</span></td>
						<#if mail.fileid??>
						<td><span class="glyphicon glyphicon-paperclip"></span></td>
						<#else>
						<td><span></span></td>
						</#if>
						<td>
							<div class="label label-info">${(mail.statusname)!''}</div>
						</td>
						<td class="mailid" ><span>${mail.mailid}</span></td>
						<td><a href="##" class="label xiugai lab"><span
								class="glyphicon glyphicon-search"></span> 查看</a></td>
					</tr>
					</#list>
					</#if>
				</table>
			</div>
		</div>
		<!--盒子尾-->
		<#include "/common/paging.ftl">
	
	