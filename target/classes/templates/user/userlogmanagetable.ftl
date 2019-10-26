		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a onclick="javascript:window.print();" class="label label-primary" style="padding: 5px;">
						<i class="glyphicon glyphicon-print"></i> <span>打印</span>
					</a>
				</h3>
				<div class="box-tools">
				
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm baseKey"
							value="${(baseKey)!''}"  placeholder="查找..." />
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
					<table class="table table-hover table-striped">
						<tr>
							
							<th scope="col">标题</th>
							<th scope="col"><span class="paixu thistime">时间
								<#if time?? && icon??>
									<span class="glyphicon ${icon}"></span>
								</#if>
							</span></th>
							<th scope="col">IP</th>
							<th scope="col">操作</th>
						</tr>
						<#if userloglist?? & userloglist?size gt 0>
						<#list userloglist as ulog>
							<tr>
								<td><span>${(ulog.title)!''}</span></td>
								<td><span>${(ulog.logTime)!''}</span></td>
								<td><span>${(ulog.ipAddr)!''}</span></td>
								<td><a href="${(ulog.url)!''};" class="label xiugai info"><span
												class="glyphicon glyphicon-search "></span> 查看</a> </td>
							</tr>
						</#list>
						<#else>
							<tr>
								<td colspan="4"><span>暂无更多信息</span></td>
							</tr>
						</#if>
					</table>
				</div>
			</div>
			
			<#include "/common/paging.ftl">
		</div>
		