<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="addaccount" class="label label-success" style="padding: 5px;">
						<span class="glyphicon glyphicon-plus"></span> 新增
					</a>
				</h3>
				<div class="box-tools">
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm cha"
							placeholder="账号名查询" />
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
					<th scope="col" class="commen co">类型<span class="block"></span></th>
					<th scope="col">账号名</th>
					<th scope="col" class="co commen">创建时间<span class="block"></span></th>
					<th scope="col" class="co commen">状态<span class="block"></span></th>
					<th scope="col">操作</th>
				</tr>
			</thead>
			<tbody class="update">
				<#if account??>
	  <#list account as list>
		<tr>
			<td><span>${list.typename}</span></td>
			<td><span>${list.accountname}</span></td>
			<td><span>${list.creattime}</span></td>
			<td><span class="label ${list.statuscolor}">${list.statusname}</span>
			</td>
			<td><a  href="addaccount?id=${list.accountid}" class="label xiugai">
					<span class="glyphicon glyphicon-edit"></span> 修改</a>
				<a onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
				   href="dele?id=${list.accountid}" class="label shanchu">
				   <span class="glyphicon glyphicon-remove"></span> 删除</a></td>
		</tr>
	</#list>
</#if>
						</tbody>
		</table>
	</div>
</div>
<!--盒子尾-->
<#include "/common/paging.ftl">

<script>

$(function(){
	$(".commen").click(function(){
		var $val=$(this).text();
		$(".thistable").load("mailpaixu",{val:$val});
	
	});
	
	$(".chazhao").click(function(){
		   var con=$(".cha").val();
		   $(".thistable").load("mailpaixu",{val:con});
	   });
	
})
</script>