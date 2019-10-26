<div class="bgc-w box box-primary">
				<div class="box-header" style="padding-bottom: 20px">
                  <a class="label label-success" href=""><span
			class="glyphicon glyphicon-refresh"></span>  刷新 </a>
					<div class="input-group" style="width:150px;float:right;top:-5px">
											<input type="text" class="form-control input-sm pull-right baseKey" value="${(baseKey)!''}" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change baseKetsubmit"></a>
											</div>
										</div>

				</div>
				<div class="box-body">
					<div class="table" style="padding-top: 15px;">
						<div class="">
							<table class="table table-hover table-striped">
								<tr class="table-header">
									<th scope="col" class="paixu thistype">类型
										<#if type?? && icon??>
										<span class="glyphicon ${icon}"></span>
										</#if>
									</th>
									<th scope="col"><span class="paixu thistime">时间
						<#if time?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
									<th scope="col">ip</th>
									<th scope="col">备注</th>
									<th scope="col"><span class="paixu thisstatus">状态
						<#if status?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
								</tr>
								    <#if alist??>
									<#list alist as att>
									<tr>
									<td><span>
									<#if att.typeId??>
									
										<#list typelist as t>
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
										<#list statuslist as s>
												<#if att.statusId==s.statusId><span class="label ${s.statusColor}">${s.statusName}</span></#if>
										</#list>
									</#if>
									</td>
										</tr>
									</#list>
									</#if>
							

							</table>
						</div>
					</div>
				</div>


		
				<#include "/common/paging.ftl">
			</div>