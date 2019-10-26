
<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="addtask" class="label " style="padding: 5px;"> <span
				class="glyphicon glyphicon-plus"></span>
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
			<table class="table table-hover table-striped">
				<thead>
					<tr>

						<th scope="col">类型</th>
						<th scope="col">标题</th>
						<th scope="col">发布时间</th>
						<th scope="col">发布人</th>
						<th scope="col">部门</th>
						<th scope="col">状态</th>
						<th scope="col">操作</th>
					</tr>
				</thead>
				<tbody >
					<#list tasklist as task>
					<tr>

						<td><span>${task.typename}</span></td>

						<td><span>${task.title}</span></td>
						<td><span>${task.publishtime}</span></td>

						<td><span>${task.username}</span></td>
						<td><span>${task.deptname}</span></td>
						<#if task.cancel==true>
						<td><span class="label label-default">已取消</span></td>
						<#else>
						<td><span class="label ${(task.statuscolor)!''}">${(task.statusname)!''}</span></td></#if>

						<td><a href="myseetasks?id=${task.taskid}"
							class="label xiugai"><span class="glyphicon glyphicon-search"></span>
								查看</a> <#if task.cancel==true> <a
								href="myshanchu?id=${task.taskid}"
								onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
								class="label shanchu"><span
								class="glyphicon glyphicon-remove"></span> 删除</a> <#else></#if></td>
					</tr>
					</#list>
				</tbody>

			</table>
		</div>
	</div>
	<!--盒子尾-->
	<#include "/common/paging.ftl">
</div>
<script>
	$(function() {
		
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('mychaxun?baseKey=baseKey');
		});
		
		$(".chazhao").click(function() {
			var con = $(".cha").val();
			$(".thistable").load("mychaxun", {title : con});
		});
	})
</script>
