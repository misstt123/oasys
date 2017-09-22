<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/note/noteview.js"></script>
<script type="text/javascript">
//删除目录
function cdelete(){
	if(confirm("是否确认删除")){
	var $cid=$(".cdelete").attr("id");
	var data={cid:$cid}
	var url = 'catadelete';
	  $.ajax({
			type : "get",
			async : false,
			url : url,
			data:data,
			timeout : 1000,
			success : function(dates) {
				alert("删除成功")
				window.location.reload();
			},
		    error:function(){
		    	alert("失败了")
		    }
		})
		}
}

function somenotedelete(){
	var array=new Array();
	var sum=null;
	$("input[name='checkbox']:checked").each(function(){
		array.push($(this).attr("id"));
		sum=array.join(';');
	});
	if(confirm("是否要批量删除这些?")){
	 $.ajax({
			type : "get",
			async : false,
			url : 'notesomedelete',
			data:{sum:sum},
			timeout : 1000,
			success : function(dates) {
				alert("删除成功")
				window.location.reload();
			},
		    error:function(){
		    	alert("失败了")
		    }
		})
	}
}
</script>
</head>
<body>

	<div class="bgc-w box box-primary" >
						<!--盒子头-->
						<div class="box-header write">
							<h3 class="box-title">最近</h3>
							<span style="display:none">	
							<a onclick="notejump('noteedit',-1)">
							<i class="glyphicon glyphicon-edit" style="color:#337ab7">
							</i>
							</a>
							<a class="cdelete"
							onclick="cdelete()" >	
							<i class="glyphicon glyphicon-trash" style="color:#337ab7">
							</i>
							</a>
							</span>
							<div class="box-tools">
								<div class="input-group"
												style="width: 150px; float: right; top: 1px;">
												<input  type="text" class="form-control input-sm pull-right"
													placeholder="查找..."  id="find"/>
												<div class="input-group-btn" style="top: -1px;">
													<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change"
														onclick="searchlike()"></a>
												</div>
											</div>
							</div>
						</div>
						<!--盒子身体-->
						<div class="box-body no-padding">
							<div style="padding: 5px;">
								<span
									class="btn btn-sm btn-default glyphicon glyphicon-unchecked allcheck"></span>
								<div class="btn-group">
									<a class="btn btn-sm btn-default" onclick="somenotedelete()" title="删除"><span
										class="glyphicon glyphicon-trash"></span></a> 
										
										<a
										class="btn btn-sm btn-default" >
										<span
										class="glyphicon glyphicon-star-empty choose_collect" data-type="${collect!0}"></span>
										</a>
									
								</div>
								<a  onclick="window.location.reload()" class="btn btn-sm btn-default" title="刷新">
								<i><span class="glyphicon glyphicon-refresh"></span></i></a>
							</div>
							<div id="table" class="table-responsive">
								<table class="table table-hover table-striped">
									<tr>
										<th scope="col">选择</th>
										<th scope="col">&nbsp;</th>
										<th scope="col">类型</th>
										<th scope="col">标题</th>
										<th scope="col">更新</th>
										<th scope="col">附件</th>
										<th scope="col">状态</th>
										<th scope="col">操作</th>
									</tr>
									<#if nlist??>
									<#list nlist as note>
									<tr>
										<td><span class="labels"><label><input
													type="checkbox" name="checkbox"  id=${note.noteId}><i>✓</i></label></span></td>
													
										<td >
										<#if note.isCollected==0>
										<span id=${note.noteId}   class="glyphicon glyphicon-star-empty collect"></span>
										</#if>
										<#if note.isCollected==1>
										<span id=${note.noteId} class="glyphicon glyphicon-star collect"></span>
										</#if> 
										</td>
										
										<td>
										<span>
											<#list type as t>
												<#if note.typeId==t.typeId>${t.typeName}</#if>
											</#list>
										</span></td>
										<td ><span>${note.title}</span></td>
										<td><span>${note.createTime}</span></td>
										<td><a style="color:#337ab7;"href="down?nid=${note.noteId}">
										<span class="glyphicon glyphicon-paperclip"></span>
										</a>
										</td>
										<td>
											<#list status as s>
												<#if note.statusId==s.statusId><span class="label ${s.statusColor}">${s.statusName}</span></#if>
											</#list>
										</td>
										<td><a 
										
										onclick="notejump('noteedit','${note.noteId}')"
											 class="label xiugai " >
											<span
												class="glyphicon glyphicon-edit"></span> 修改</a> 
												
												<a  
											 onclick="notejump('noteinfo','${note.noteId}')"  
											 class="label xiugai info"><span
												class="glyphicon glyphicon-search "></span> 查看</a>
												
												 <a
											onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};" 
											href="notedelete?nid=${note.noteId}" 
											class="label shanchu"><span
												class="glyphicon glyphicon-remove"></span> 删除</a></td>
								
									</tr>
										</#list>
									</#if>
								</table>
							</div>
						</div>
						<!--盒子尾-->
						<div class="box-footer no-padding" style="margin-top: -20px;">
							<div style="padding: 5px;">
								<div id="page"
									style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
									<div style="width: 40%; float: left;">
										<div class="pageInfo" style="margin-left: 5px;">
											共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
										</div>
									</div>
									<div style="width: 60%; float: left;">
										<div class="pageOperation">
											<a class="btn btn-sm btn-default no-padding"
												style="width: 30px; height: 20px;"> <span
												class="glyphicon glyphicon-backward"></span>
											</a> <a class="btn btn-sm btn-default no-padding"
												style="width: 30px; height: 20px;"> <span
												class="glyphicon glyphicon-triangle-left"></span>
											</a> <a disabled="disabled" class="btn btn-default no-padding"
												style="width: 30px; height: 20px;"> 1 </a> <a
												class="btn btn-sm btn-default no-padding"
												style="width: 30px; height: 20px;"> <span
												class="glyphicon glyphicon-triangle-right"></span>
											</a> <a class="btn btn-sm btn-default no-padding"
												style="width: 30px; height: 20px;"> <span
												class="glyphicon glyphicon-forward"></span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	</body>
</html>
