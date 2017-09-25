<#if account??>
						<#list account as list>
						<tr>
							
							<td><span>${list.typename}</span></td>
							<td><span>${list.accountname}</span></td>
							<td><span>${list.creattime}</span></td>

							<td><span class="label ${list.statuscolor}">${list.statusname}</span>
							</td>

							<td><a  href="addaccount?id=${list.accountid}" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a
									onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
									href="dele?id=${list.accountid}" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a></td>
						</tr>
						</#list>
						</#if>