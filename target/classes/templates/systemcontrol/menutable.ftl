<div class="table-responsive">
					<table class="table table-hover">
						<tr>
							<th scope="col">名称</th>
							<th scope="col">图标</th>
							<th scope="col">路径</th>
							<th scope="col">类型</th>
							<th scope="col">排序</th>
							<th scope="col">显示</th>
							<th scope="col">操作</th>
						</tr>
						<#list oneMenuAll as one>
						<tr style="background:rgba(255, 235, 59, 0.19);">
							<td>${(one.menuName)!''}</td>
							<td><span class="glyphicon ${(one.menuIcon)!''}"></span></td>
							<td><span>${(one.menuUrl)!''}</span></td>
							<td><span>
							<#if one.parentId==0>
								父级
								<#else>
								子级菜单栏
							</#if>
							</span></td>
							<td><span>${(one.sortId)!''}</span></td>
							<#if one.show==true>
								<td><span class="labels"><label><input type="checkbox" checked disabled><i>✓</i></label></span></td>
							<#else>
								<td><span class="labels"><label><input type="checkbox" disabled><i>✓</i></label></span></td>
							</#if>
							<td><a  href="changeSortId?parentid=${one.parentId}&sortid=${one.sortId}&menuid=${one.menuId}&num=1" class="label sheding"><span
									class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
								 href="changeSortId?parentid=${one.parentId}&sortid=${one.sortId}&menuid=${one.menuId}&num=-1" class="label sheding"><span
									class="glyphicon glyphicon-arrow-down"></span> 下移</a> <a 
								href="menuedit?id=${one.menuId}" class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
								href="deletethis?id=${one.menuId}" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a>
									<a  href="menuedit?id=${one.menuId}&add=this" class="label xinzeng"><span
									class="glyphicon glyphicon-plus"></span> 新增</a>
									</td>
						</tr>
						<#if twoMenuAll??>
						<#list twoMenuAll as two>
						<#if one.menuId==two.parentId>
						<tr>
							<td>${(two.menuName)!''}</td>
							<td><span class="glyphicon ${(two.menuIcon)!''}"></span></td>
							<td><span>${(two.menuUrl)!''}</span></td>
							<td><span>子级菜单栏</span></td>
							<td><span>${(two.sortId)!''}</span></td>
							<#if two.show==true>
								<td><span class="labels"><label><input type="checkbox" checked disabled><i>✓</i></label></span></td>
							<#else>
								<td><span class="labels"><label><input type="checkbox" disabled><i>✓</i></label></span></td>
							</#if>
							<td><a  href="changeSortId?parentid=${two.parentId}&sortid=${two.sortId}&menuid=${two.menuId}&num=1" class="label sheding"><span
									class="glyphicon glyphicon-arrow-up"></span> 上移</a> <a
								 href="changeSortId?parentid=${two.parentId}&sortid=${two.sortId}&menuid=${two.menuId}&num=-1" class="label sheding"><span
									class="glyphicon glyphicon-arrow-down"></span> 下移</a> <a 
								href="menuedit?id=${two.menuId}" class="label xiugai"><span
					class="glyphicon glyphicon-edit"></span> 修改</a> <a
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
								href="deletethis?id=${two.menuId}" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a>
									</td>
						</tr>
						</#if>
						</#list>
						</#if>
						</#list>
					</table>
				</div>