
<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
<link rel="stylesheet" href="css/common/tanchuang.css" />
<script type="text/javascript" src="js/task/task.js" ></script>
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}



.text {
	min-height: 114px;
}
.reciver{
	position: relative;
    top: -27px;
    float: right;
    right: 4px;
    cursor: pointer;
}
</style>
<script>
	$(function(){
	
	})

</script>
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
		<div class="bgc-w box">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="javascript:history.back();" class="label label-default"
						style="padding: 5px;">
						 <i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			<!--盒子身体-->
			<form action="update" method="post">
			<div class="box-body no-padding">
				<div class="box-body">
					<div class="row">
					
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>类型</span></label>
							 <select class="form-control" name="typeId">
								<option value="${type.typeId}">${type.typeName}</option>
								<#if type.typeId ==3>
								<#else>
								<option value="3">公事</option>
								</#if>
								<#if type.typeId ==4>
								<#else>
								<option value="4">私事</option>
								</#if>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label> 
							<select class="form-control" name="statusId">
								<option value="${status.statusId}">${status.statusName}</option>
								<#if status.statusId ==5>
								<#else>
								<option value="5">进行中</option>
								</#if>
								<#if status.statusId ==7>
								<#else>
								<option value="7">已完成</option>
								</#if>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">开始日期</label> <input id="starTime" name="starTime"
								class="form-control"  value="${task.starTime}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">结束日期</label> <input id="endTime" name="endTime"
								class="form-control" value="${task.endTime}"/>
						</div>
						<div class="col-md-6 form-group">

							<label class="control-label">标题</label> <input name="title"
								type="text" id="title_Name" class="form-control" value="${task.title}"/>
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label" data-toggle="modal" data-target="#myModal">接收人</label>
							 <input name="reciverlist" type="text" id="recive_list" value="${(task.reciverlist)!''}"
								class="form-control " readonly="readonly"  style="background-color:#fff;"/>
							<div class="reciver">
								<span class="label label-success glyphicon glyphicon-plus"
									data-toggle="modal" data-target="#myModal">通讯录</span>
							</div>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">描述</label>
							<textarea class="form-control text" name="taskDescribe" >${(task.taskDescribe)!''}</textarea>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">评价</label>
							<textarea class="form-control text" name="comment" >${(task.comment)!''}</textarea>
						</div>
						<div class="col-md-6 form-group ">
							<label class="control-label">置顶</label> <br /> 
								<#if task.top==true>
									<span class="labels">
									<label>
									   <input type="checkbox" name="top" class="val" checked><i>✓</i>
									 </label></span>
								<#else>
									 <span class="labels">
										<label>
										   <input type="checkbox" name="top" class="val"><i>✓</i>
											 </label></span>
								 </#if>
						</div>

						<div class="col-md-6  form-group"> 
							<label class="control-label">取消</label> <br />
							<#if task.cancel==true>
									<span class="labels">
									<label>
									   <input type="checkbox" name="cancel" class="val" checked><i>✓</i>
									 </label></span>
								<#else>
									 <span class="labels">
										<label>
										   <input type="checkbox" name="cancel" class="val"><i>✓</i>
											 </label></span>
								 </#if>
						</div>
						<input name="taskId" type="text" style="display:none;"value="${task.taskId}">
					</div>
				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
				<input class="btn btn-default" id="cancel" type="submit" value="取消"
					onclick="window.history.back();" />
			</div>
			</form>
		</div>
	</div>
</div>

<!-- 接收人弹窗-->
	<#include "/common/reciver.ftl">
			
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>