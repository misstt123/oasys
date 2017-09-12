
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
		$("[name=isTop]:checkbox").click(function(){
			console.log($(this).prop("checked"));
			if($(this).prop("checked")){
				$(this).val("1");
			}else{
				$(this).val("0");
			}
		})
		
		$("[name=isCancel]:checkbox").click(function(){
			console.log($(this).prop("checked"));
			console.log($("#recive_list").val());
			if($(this).prop("checked")){
				$(this).val("1");
			}else{
				$(this).val("0");
			}
		})
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
			<form action="ck_addtask" method="post">
			<div class="box-body no-padding">
				<div class="box-body">
					<div class="row">
					
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>类型</span></label>
							 <select class="form-control" name="typeId">
							<#list typelist as type>
							  <#if type.typeModel=="aoa_task_list">
								<option value="${type.typeId}">${type.typeName}</option>
								</#if>
							</#list>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label> 
							<select class="form-control" name="statusId">
								<#list statuslist as status>
								<#if status.statusModel=="aoa_task_list">
							     <option value="${status.statusId}">${status.statusName}</option>
								</#if>
								</#list>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">开始日期</label> <input name="starTime"
								class="form-control" onclick="WdatePicker()" />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">结束日期</label> <input name="endTime"
								class="form-control" onclick="WdatePicker()" />
						</div>
						<div class="col-md-6 form-group">

							<label class="control-label">标题</label> <input name="title"
								type="text" id="title_Name" class="form-control" />
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label" data-toggle="modal" data-target="#myModal">接收人</label>
							 <input name="reciverlist" type="text" id="recive_list"
								class="form-control " readonly="readonly" style="background-color:#fff;"/>
							<div class="reciver">
								<span class="label label-success glyphicon glyphicon-plus"
									data-toggle="modal" data-target="#myModal">通讯录</span>
							</div>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">备注</label>
							<textarea class="form-control text" name="taskDescribe"></textarea>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">评价</label>
							<textarea class="form-control text" name="comment"></textarea>
						</div>
						<div class="col-md-6 form-group ">
							<label class="control-label">置顶</label> <br /> <span
								class="labels"><label><input type="checkbox" name="isTop" class="val" ><i>✓</i></label></span>
						</div>

						<div class="col-md-6  form-group"> 
							<label class="control-label">取消</label> <br /> <span
								class="labels"><label><input type="checkbox" name="isCancel" class="val"><i>✓</i></label></span>
						</div>
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
				<div class="modal fade" id="myModal" tabindex="-1">

					<!--第二步，窗口声明-->
					<div class="modal-dialog modal-lg">
						<!--第三步、内容区的声明-->
						<div class="modal-content" style="background: #F9F9F9;">
							<div class="modal-1">

								<div class="modal-2">

									<div class="modal-header" style="margin:10px;">
										<button class="close close2" data-dismiss="modal" style="display:block;background-color: black; margin:-90px -82px 0 0;
						border-radius:60%;"><span class="glyphicon glyphicon-remove-circle"style="color:white;font-size: 30px;" ></span></button>
										<div class="row">
											<div class="col-xs-12" style="height:30px;margin:10px 0px;">

												<h4 style="float:left;">
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue()"> 新增接收人</a>
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue2()"> 
                      				追加接收人</a>
                  			</h4>

												<div class="input-group">
													<input type="text" class="form-control input-sm pull-right" placeholder="查找..." />
													<div class="input-group-btn" style="top:-1px;">
														<a class="btn btn-sm btn-default glyphicon glyphicon-search" href=""></a>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="modal-body" style="margin:10px;">
										<table class="table  table-hover  container-fluid">
											<tr class="row">
												<th class=" col-xs-2">
													<span class="labels"><label><input id="checkedAll" type="checkbox"><i>✓</i></label></span>
												</th>
												<th class=" col-xs-2 b">部门</th>
												<th class=" col-xs-2 b">真实姓名 </th>
												<th class="col-xs-2 b">用户名</th>
												<th class="col-xs-2 b">角色</th>
												<th class=" col-xs-2">电话</th>
											</tr>
											<tr class="row">
												<th class=" col-xs-2">
													<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
												</th>
												<th class="col-xs-2">部门</th>
												<th class=" col-xs-2">真实姓名 </th>
												<th class="col-xs-2 na">用户名</th>
												<th class=" col-xs-2">角色</th>
												<th class=" col-xs-2">电话</th>

											</tr>
											<tr class="row">

												<th class=" col-xs-2">
													<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
												</th>
												<th class=" col-xs-2">部门</th>
												<th class=" col-xs-2">真实姓名 </th>
												<th class=" col-xs-2 na">用户名</th>
												<th class=" col-xs-2">角色</th>
												<th class=" col-xs-2">电话</th>

											</tr>
											<tr class="row">

												<th class=" col-xs-2">
													<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
												</th>
												<th class=" col-xs-2">部门</th>
												<th class="col-xs-2">真实姓名 </th>
												<th class=" col-xs-2 na">用户名</th>
												<th class="col-xs-2">角色</th>
												<th class="col-xs-2">电话</th>

											</tr>
											<tr class="row">

												<th class=" col-xs-2">
													<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
												</th>
												<th class=" col-xs-2">部门</th>
												<th class="col-xs-2">真实姓名 </th>
												<th class=" col-xs-2 na">用户名</th>
												<th class="col-xs-2">角色</th>
												<th class="col-xs-2">电话</th>

											</tr>
										</table>

										<div class="box-footer no-padding" style="margin-top: -20px;background: #FAFAFA;border-top: solid 1px #F5F5F5;">
											<div style="padding: 5px;">
												<div id="page" style="background:#fff;border:0px;margin-top:0px;padding:2px;height: 25px;">
													<div style="width: 40%; float: left;">
														<div class="pageInfo" style="margin-left: 5px;">
															共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
														</div>
													</div>
													<div style="width: 60%; float: left;">
														<div class="pageOperation">
															<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
																<span class="glyphicon glyphicon-backward"></span>
															</a>
															<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
																<span class="glyphicon glyphicon-triangle-left"></span>
															</a>
															<a disabled="disabled" class="btn btn-default no-padding" style="width:30px;height: 20px;">
																1
															</a>
															<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
																<span class="glyphicon glyphicon-triangle-right"></span>
															</a>
															<a class="btn btn-sm btn-default no-padding" style="width:30px;height: 20px;">
																<span class="glyphicon glyphicon-forward"></span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			

<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>