<#include "/common/commoncss.ftl">
<script type="text/javascript" src="js/task/taskmanage.js"></script>
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.block {
	display: inline-block;
	width: 20px;
}

.co {
	color: blue;
}

.bl {
	color: black;
}

.commen {
	cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">任务管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">任务管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
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

							<th scope="col" class="commen mm ">类型<span class="block"><img
									id="img" src="images/desc.gif" /></span></th>
							<th scope="col">标题</th>
							<th scope="col">发布时间</th>
							<th scope="col">发布人</th>
							<th scope="col">部门</th>
							<th scope="col" class="co commen ">状态<span class="block"></span></th>
							<th scope="col">操作</th>
						</tr>
						</thead>
						<tbody class="upda">
						<#list tasklist as task>
						<tr>
							<#list typelist as type>
							<#if type.typeId==task.typeId>
							<td><span>${type.typeName}</span></td>
							</#if>
							</#list>
							<td><span>${task.title}</span></td>
							<td><span>${task.publishTime}</span></td>
							
							<td><span>${username}</span></td>
							<td><span>${deptname}</span></td>
							<#list statuslist as status>
							<#if status.statusId==task.statusId>
							<td><span class="label ${status.statusColor}">${status.statusName}</span></td>
							</#if>
							</#list>
							<td><a  href="edittasks?id=${task.taskId}"
								class="label xiugai"><span
									class="glyphicon glyphicon-edit"></span> 修改</a> 
									<a href="seetasks?id=${task.taskId}" class="label xiugai"><span
									class="glyphicon glyphicon-search"></span> 查看</a>
									 <a href="shanchu?id=${task.taskId}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
								class="label shanchu"><span
									class="glyphicon glyphicon-remove"></span> 删除</a></td>
						</tr>
						</#list>
						</tbody>
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
	</div>
</div>
<script>
function getMyDate(str){    
    var oDate = new Date(str),    
    oYear = oDate.getFullYear(),    
    oMonth = oDate.getMonth()+1,    
    oDay = oDate.getDate(),    
    oHour = oDate.getHours(),    
    oMin = oDate.getMinutes(),    
    oSen = oDate.getSeconds(),    
    oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间    
    return oTime;    
};    
//补0操作    
function getzf(num){    
    if(parseInt(num) < 10){    
        num = '0'+num;    
    }    
    return num;    
} 
   $(function(){
	   $(".chazhao").click(function(){
		   var con=$(".cha").val();
		   
		  $.post("chaxun",{title:con},function(data){
			  
			  $(".upda").html("");
			  $(data).each(function(index, item) {
				var $tr=$("<tr></tr>");
				var time=getMyDate(item.publishtime);
				
				$tr.append($("<td></td>").append($("<span></span>").text(item.typename)));
				$tr.append($("<td></td>").append($("<span></span>").text(item.title)));
				$tr.append($("<td></td>").append($("<span></span>").text(time)));
				$tr.append($("<td></td>").append($("<span></span>").text(item.username)));
				$tr.append($("<td></td>").append($("<span></span>").text(item.deptname)));
				$tr.append($("<td></td>").append($("<span></span>").addClass("label").addClass(item.statuscolor).text(item.statusname)));
			 	$tr.append($("<td></td>").append($("<a  href='edittasks?id="+item.taskid+"'></a>").addClass("label").addClass("xiugai").append($("<span></span>").addClass("glyphicon").addClass("glyphicon-edit")).text(" 修改"))
			 			.append($("<a  href='seetasks?id="+item.taskid+"'></a>").addClass("label").addClass("xiugai").append($("<span></span>").addClass("glyphicon").addClass("glyphicon-search")).text(" 查看"))
			 			.append($("<a  href='shanchu?id="+item.taskid+"'></a>").addClass("label").addClass("shanchu").append($("<span></span>").addClass("glyphicon").addClass("glyphicon-remove")).text(" 删除")));
				
				$tr.appendTo(".upda");
			  });
		  });
	   });
   })
</script>

