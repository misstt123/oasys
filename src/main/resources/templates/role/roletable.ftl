<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="addrole" class="label label-success" style="padding: 5px;">
						<span class="glyphicon glyphicon-plus"></span> 新增
					</a>
				</h3>
				<div class="box-tools">
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm cha"
							placeholder="查找..." />
						<div class="input-group-btn chazhao">
							<a class="btn btn-sm btn-default"><span
								class="glyphicon glyphicon-search"></span></a>
						</div>
					</div>
				</div>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="table-responsive">
					<table class="table table-hover ">
						<tr>
							
							<th scope="col">名称</th>
							<th scope="col">权限值</th>
							<th scope="col">操作</th>
						</tr>
						<#list rolelist as item>
						<tr>
							<td><span>${item.roleName}</span></td>
							<#if item.roleValue??>
								<td><span>${item.roleValue}</span></td>
							<#else>
								 <td><span>0</span></td>  
							</#if>
							<td>
							<a href="roleset?id=${item.roleId}" class="label sheding">
							  <span class="glyphicon glyphicon-asterisk"></span> 设定</a>
							<a href="addrole?id=${item.roleId}" class="label xiugai">
							<span class="glyphicon glyphicon-edit"></span> 修改</a>
							<a href="deshan?id=${item.roleId}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a></td>
						</tr>
						</#list>
						
					</table>
				</div>
			</div>
			<!--盒子尾-->
			<#include "/common/paging.ftl">
		</div>
		
		<script>
		 $(function(){

				$('.baseKetsubmit').on('click',function(){
					var baseKey=$('.baseKey').val();
					$('.thistable').load('${url}?baseKey=baseKey');
				});
				
				   $(".chazhao").click(function(){
					   var con=$(".cha").val();
					   $(".thistable").load("roleser",{val:con});
				   });
				   
			  });
		</script>