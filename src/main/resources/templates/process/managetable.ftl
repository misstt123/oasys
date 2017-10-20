	<div class="bgc-w box box-primary">
				<!--盒子头-->
				<div class="box-header">
					<h3 class="box-title">
						<a href="" class="label label-success" style="padding: 5px;">
							<span class="glyphicon glyphicon-refresh"></span> 刷新
						</a> 
					</h3>
					<div class="box-tools">
						<div class="input-group" style="width: 220px;">
							<input type="text" class="form-control input-sm cha"
								placeholder="审核人，类型，标题，状态查询" />
							<div class="input-group-btn chazhao">
								<a class="btn btn-sm btn-default"><span
									class="glyphicon glyphicon-search"></span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="box-body no-padding">
					<div class="table-responsive">
						<table class="table table-hover">
						<tr>
							
							<th scope="col">类型</th>
							<th scope="col">标题</th>
							<th scope="col">申请时间</th>
							<th scope="col">审核人</th>
							<th scope="col">紧急程度</th>
							<th scope="col">状态</th>
							<th scope="col">操作</th>
						</tr>
						<#list prolist as pro>
						<tr>
							<td>${(pro.typeNmae)!''}</td>
							<td><span>${(pro.processName)!''}</span></td>
							<td><span>${(pro.applyTime)!''}</span></td>
							<td><span>${(pro.shenuser)!''}</span></td>
							<#list typename as type>
								<#if type.typeId==pro.deeply>
								<td><span>${type.typeName}</span></td>
								</#if>
							</#list>
							<#list statusname as status>
								<#if status.statusId==pro.statusId>
								<td><span class="label ${status.statusColor}">${status.statusName}</span></td>
								</#if>
							</#list>
							
							<td> <a href="particular?id=${pro.processId}&typename=${(pro.typeNmae)!''}" class="label xiugai"><span
									class="glyphicon glyphicon-search"></span> 查看</a> 
							</td>
						</tr>
						</#list>
					</table>
					</div>
				
				<!--盒子尾-->
				<#include "/common/paging.ftl">
				</div>
			</div>
<script>
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('${url}?baseKey=baseKey');
		});
		

		   $(function(){
			   $(".chazhao").click(function(){
				   var con=$(".cha").val();
				   $(".thistable").load("shenser",{val:con});
			   });
		});
	
		
</script>