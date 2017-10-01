<div class="bgc-w box box-primary">
					<div class="box-header">
						<a class="label label-success" href="planedit?pid=-1"><span class="glyphicon glyphicon-plus"></span>
							新增
						</a>
						
						<div class="input-group" style="width:150px;float:right;top:-5px">
											<input type="text" class="form-control input-sm pull-right" placeholder="查找..." />
											<div class="input-group-btn" style="top:-1px;">
												<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change
												" href=""></a>
											</div>
										</div>

					</div>
					<div class="box-body">
				<div class="table" style="padding-top: 15px;">
						<div class="table-responsive">
										<table class="table table-hover table-striped">
											<tr class="table-header">
												<th scope="col" class="commen mm">
												类型<span >
												<img src="../img/bottom.png" /></span>
												</th>
												<th scope="col">标题</th>
												<th scope="col">发布时间</th>
												<th scope="col">发布人</th>
												<th scope="col">部门</th>
												<th scope="col" class="commen co">状态<span ></span></th>
												<th scope="col">附件</th>
												<th scope="col">操作</th>
											</tr>
											
											<#if plist??>
												<#list plist as plan>
													<tr>
														<td>
															<#list type as t>
																<#if plan.typeId==t.typeId>${t.typeName}</#if>
															</#list>
														</td>
														
														<td >
															<#if plan.label??>
															【${plan.label}】${plan.title}
															</#if>
														</td>
														<td>
															${plan.createTime}
														</td>
														<td>
															${plan.user.userName}
														</td>
														<td>
															${plan.user.dept.deptName}
														</td>
														<td>
															 <#list status as s>
																<#if plan.statusId==s.statusId><span class="label ${s.statusColor}">${s.statusName}</span></#if>
															 </#list>
														</td>
														<td>
															<#if plan.attachId??>
																<a style="color:#337ab7;"href="down?paid=${plan.attachId}">
																<span class="glyphicon glyphicon-paperclip"></span>
															</#if>
														</td>
														<td>
															<a  href="planedit?pid=${plan.planId}" class="label xiugai"><span class="glyphicon glyphicon-edit"></span> 修改</a>
															<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" href="plandelete?pid=${plan.planId}" class="label shanchu"><span class="glyphicon glyphicon-remove"></span> 删除</a>
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