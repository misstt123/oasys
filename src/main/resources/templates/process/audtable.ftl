			<!--盒子身体-->
				<div class="box-body no-padding">
					<div class="table-responsive">
						<table class="table table-hover">
						<tr>
							
							<th scope="col">类型</th>
							<th scope="col">标题</th>
							<th scope="col">申请人</th>
							<th scope="col">申请时间</th>
							<th scope="col">紧急程度</th>
							<th scope="col">状态</th>
							<th scope="col">操作</th>
						</tr>
						<#list prolist as pro>
						<tr>
							
							<td>${pro.typeNmae}</td>
							<td><span>${pro.processName}</span></td>
							<td><span>${pro.userId.userName}</span></td>
							<td><span>${pro.applyTime}</span></td>
							<td><span>紧急</span></td>
							<td><span>未批准</span></td>
							<td> <a 
								href="useredit?id=${pro.processId}" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> 
									</td>
						</tr>
						</#list>
					</table>
					</div>
				</div>
				<!--盒子尾-->
				<#include "/common/paging.ftl">