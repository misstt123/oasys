<div class="bgc-w box box-primary">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">
			<a href="informedit" class="label label-success"
				style="padding: 5px;"> <span class="glyphicon glyphicon-plus"></span>
				新增
			</a>
		</h3>
		<div class="box-tools">
			<div class="input-group" style="width: 150px;">
				<input type="text" class="form-control input-sm baseKey" placeholder="查找..." value="${(baseKey)!''}"/>
				<div class="input-group-btn">
					<a class="btn btn-sm btn-default baseKetsubmit"><span
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
					<th scope="col"><span class="paixu thistype">类型
						<#if type?? && icon??>
						<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col"><span class="paixu thisstatus">状态
						<#if status?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col">标题</th>
					<th scope="col"><span class="paixu thistime">发布时间
						<#if time?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
					<th scope="col">发布人</th>
					<th scope="col">部门</th>
					<th scope="col">置顶</th>
					<th scope="col">链接</th>
					<th scope="col">操作</th>
				</tr>
				<#list list as this>
				<tr>
					<td>${(this.typename)!''}</td>
					<td><span class="label ${(this.statuscolor)!''}">${(this.statusname)!''}</span></td>
					<td><span>${(this.title)!''}</span></td>
					<td><span>${(this.noticeTime)!''}</span></td>
					<td><span>${(this.username)!''}</span></td>
					<td><span>${(this.deptname)!''}</span></td>
					<#if this.top==true>
					<td><span class="labels"><label><input
								type="checkbox" checked disabled><i>✓</i></label></span></td>
					<#else>
					<td><span class="labels"><label><input
								type="checkbox" disabled><i>✓</i></label></span></td></#if>
					<#if this.url!=''>
					<td><span class="glyphicon glyphicon-link"></span></td>
					<#else>
					<td><span class="labels"></span></td></#if>
					<td><a href="informedit?id=${this.noticeId}"
						class="label xiugai"><span class="glyphicon glyphicon-edit"></span>
							修改</a> <a href="informshow?id=${this.noticeId}" class="label xiugai"><span
							class="glyphicon glyphicon-search"></span> 查看</a> <a
						onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
						href="infromdelete?id=${this.noticeId}" class="label shanchu"><span
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
		/* 分页插件按钮的点击事件 */
		$('.tablefirst').on('click',function(){
			$('.thistable').load('/infrommanagepaging?page=0');
		});
		$('.tableup').on('click',function(){
			$('.thistable').load('/infrommanagepaging?page=${(page.number)-1}');
		});
		$('.tabledown').on('click',function(){
			$('.thistable').load('infrommanagepaging?page=${(page.number)+1}');
		});
		$('.tablelast').on('click',function(){
			$('.thistable').load('infrommanagepaging?page=${(page.totalPages)-1}');
		});
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('infrommanagepaging?baseKey=baseKey');
		});
		/*类型、状态、事件的排序  */
		$('.thistype').on('click',function(){
			if($(this).children().hasClass('glyphicon-triangle-bottom')){
				$('.thistable').load('infrommanagepaging?type=0&icon=glyphicon-triangle-top');
			}else{
				$('.thistable').load('infrommanagepaging?type=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thisstatus').on('click',function(){
			if($(this).children().hasClass('glyphicon-triangle-bottom')){
				$('.thistable').load('infrommanagepaging?status=0&icon=glyphicon-triangle-top');
			}else{
				$('.thistable').load('infrommanagepaging?status=1&icon=glyphicon-triangle-bottom');
			}
		});
		$('.thistime').on('click',function(){
			if($(this).children().hasClass('glyphicon-triangle-bottom')){
				$('.thistable').load('infrommanagepaging?time=0&icon=glyphicon-triangle-top');
			}else{
				$('.thistable').load('infrommanagepaging?time=1&icon=glyphicon-triangle-bottom');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			alert(baseKey);
			$('.thistable').load('infrommanagepaging?baseKey='+baseKey+'');
		});
	
</script>
