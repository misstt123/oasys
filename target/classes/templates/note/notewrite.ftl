
<script type="text/javascript" src="js/note/noteview.js"></script>
<script type="text/javascript">
//点击在某个目录下面写东西
function writecata(){
	var $cid="cata"+$(".cdelete").attr("id");
  var data={id:$cid}
   $.ajax({
		type : "get",
		async : false,
		url : 'noteedit',
		data:data,
		success : function(dates) {
			$('#container').html(dates);
		},
	    error:function(){
	    	alert("失败了")
	    }
	})
	}

//删除目录
function cdelete(){
	if(confirm("删除之后目录下面的笔记全部会删除")){
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
	<div class="bgc-w box box-primary" >
						<!--盒子头-->
						<div class="box-header write">
							<h3 class="box-title">最近</h3>
							<span style="display:none">	
							<a 
							onclick="writecata()">
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
												<input  type="text" class="form-control input-sm pull-right baseKey"
													value="${(baseKey)!''}" placeholder="查找..."  id="find"/>
												<div class="input-group-btn" style="top: -1px;">
													<a class="btn btn-sm btn-default glyphicon glyphicon-search btn-change baseKetsubmit"
														></a>
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
								<a  href="" class="btn btn-sm btn-default" title="刷新">
								<i><span class="glyphicon glyphicon-refresh"></span></i></a>
							</div>
							<div id="table" class="table-responsive">
								<table class="table table-hover table-striped">
									<tr>
										<th scope="col">选择</th>
										<th scope="col">&nbsp;</th>
										<th scope="col" class="paixu thistype" style="color:blue;">类型
										<#if type?? && icon??>
										<span class="glyphicon ${icon}"></span>
										</#if>
									</th>
										<th scope="col">标题</th>
										
<th scope="col"><span class="paixu thistime" style="color:blue;">更新
						<#if time?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>
										<th scope="col">附件</th>
										<th scope="col"><span class="paixu thisstatus" style="color:blue;">状态
						<#if status?? && icon??>
							<span class="glyphicon ${icon}"></span>
						</#if>
						</span></th>

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
											<#list typelist as t>
												<#if note.typeId==t.typeId>${t.typeName}</#if>
											</#list>
										</span></td>
										<td ><span>${note.title}</span></td>
										<td><span>${note.createTime}</span></td>
										<td>
										<#if note.attachId??>
										<a style="color:#337ab7;"href="down?nid=${note.noteId}">
										<span class="glyphicon glyphicon-paperclip"></span>
										</#if>
										</a>
										</td>
										<td>
											<#list statuslist as s>
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
											onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');}" 
											href="notedelete?nid=${note.noteId}" 
											class="label shanchu"><span
												class="glyphicon glyphicon-remove"></span> 删除</a></td>
								
									</tr>
										</#list>
									</#if>
								</table>
							</div>
						</div>
					
					
					<#include "/common/paging.ftl">
						
					</div>
				
					