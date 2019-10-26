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
								placeholder="标题，申请人，类型，状态查询" />
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
						<#if prolist?? && (prolist?size > 0)>
						<#list prolist as pro>
						<tr>
							
							<td>${pro.typename}</td>
							<td><span>${pro.title}</span></td>
							<td><span>${pro.pushuser}</span></td>
							<td><span>${pro.applytime}</span></td>
							<td><span>${pro.harry}</span></td>
							<td><span class="label ${pro.statuscolor}">${pro.statusname}</span></td>
							<td> <a href="auditing?id=${pro.proid}" class="label sheding"><span
									class="glyphicon glyphicon-zoom-in"></span> 审核</a> 
								 <a href="particular?id=${pro.proid}&typename=${pro.typename}" class="label xiugai"><span
									class="glyphicon glyphicon-search"></span> 查看</a> 
								<#if pro.statusname=="未通过"	|| pro.statusname=="已批准">
								 <a href="sdelete?id=${pro.proid}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" class="label shanchu">
								 	<span class="glyphicon glyphicon-remove"></span> 删除</a>	
									</#if>
									</td>
						</tr>
						</#list>
						</#if>
					</table>
					</div>
				</div>
				<!--盒子尾-->
				<#include "/common/paging.ftl">
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
				   $(".thistable").load("serch",{val:con});
			   });
		});
	
		
</script>