<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="addtask" class="label label-success" style="padding: 5px;">
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
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th scope="col" class="co commen ">类型<span class="block"></span></th>
						<th scope="col">标题</th>
						<th scope="col" class="co commen ">发布时间<span class="block"></span></th>
						<th scope="col">发布人</th>
						<th scope="col">部门</th>
						<th scope="col" class="co commen ">状态<span class="block"></span></th>
						<th>置顶</th>
						<th scope="col">操作</th>
					</tr>
				</thead>
				<tbody>
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
						<td><span class="label ${task.statuscolor}">${task.statusname}</span></td>
						</#if>
						<#if task.zhiding==true>
							<td> <span class="labels"><label><input type="checkbox" name="top" class="val" checked disabled><i>✓</i></label></span></td>
						<#else>
							<td> <span class="labels"><label><input type="checkbox" name="top" class="val" disabled><i>✓</i></label></span></td>
						</#if>
						<td><a  href="edittasks?id=${task.taskid}"
							class="label xiugai"><span
								class="glyphicon glyphicon-edit"></span> 修改</a> 
								<a href="seetasks?id=${task.taskid}" class="label xiugai"><span
								class="glyphicon glyphicon-search"></span> 查看</a>
								 <a href="shanchu?id=${task.taskid}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
							class="label shanchu"><span
								class="glyphicon glyphicon-remove"></span> 删除</a></td>
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
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('${url}?baseKey=baseKey');
		});
		

		   $(function(){
			   $(".chazhao").click(function(){
				   var con=$(".cha").val();
				   $(".thistable").load("paixu",{val:con});
			   });
			   
			   $(".commen").click(function(){
				   
					/* //寻找指定兄弟节点并去除class
					var $else=$(this).addClass("mm").siblings(".commen").removeClass("mm");
					//点击变换字体颜色
					var $color=$(this).addClass("bl").removeClass("co").siblings(".commen").addClass("co").removeClass("bl");
					//切换img
					$("#img").appendTo(".mm span"); */	
					var $val=$(this).text();
					
					 $(".thistable").load("paixu",{val:$val});
					
					
				})
			  
		   })
	
		
</script>