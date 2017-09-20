
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
	/* $(function(){
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
 */
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
			<form action="ck_addtask" method="post" onsubmit="return check();">
			<div class="box-body no-padding">
				<div class="box-body">
						<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" role="alert"style="display: none;">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
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
							<label class="control-label">开始日期</label> <input id="starTime" name="starTime"
								class="form-control"  />
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">结束日期</label> <input id="endTime" name="endTime"
								class="form-control"  />
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
							<label class="control-label">描述</label>
							<textarea class="form-control text" name="taskDescribe"></textarea>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">评价</label>
							<textarea class="form-control text" name="comment"></textarea>
						</div>
						<div class="col-md-6 form-group ">
							<label class="control-label">置顶</label> <br /> <span
								class="labels"><label><input type="checkbox" name="top" class="val" ><i>✓</i></label></span>
						</div>

						<div class="col-md-6  form-group"> 
							<label class="control-label">取消</label> <br /> <span
								class="labels"><label><input type="checkbox" name="cancel" class="val"><i>✓</i></label></span>
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

					<!-- 第二步，窗口声明 -->
					<div class="modal-dialog modal-lg">
					<!-- 	第三步、内容区的声明 -->
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
													<span class="labels" style="display:none;"><label><input id="checkedAll" type="checkbox" ><i>✓</i></label></span>
												</th>
												<th class=" col-xs-2 b">部门</th>
												<th class=" col-xs-2 b">真实姓名 </th>
												<th class="col-xs-2 b">用户名</th>
												<th class="col-xs-2 b">角色</th>
												<th class=" col-xs-2">电话</th>
											</tr>
											<#list emplist as emp>
											<tr class="row">
												<td class=" col-xs-2">
													<span class="labels"><label><input name="id" type="checkbox"><i>✓</i></label></span>
												</td>
												<#list deptlist as dept>
												<#if emp.dept.deptId==dept.deptId>
												<td class="col-xs-2">${dept.deptName}</td>
												</#if>
												</#list>
												<td class=" col-xs-2">${emp.realName} </td>
												<td class="col-xs-2 na">${emp.userName}</td>
												<#list rolelist as role>
												<#if emp.role.roleId=role.roleId>
												<td class=" col-xs-2">${role.roleName}</td>
												</#if>
												</#list>
												<td class=" col-xs-2">${emp.userTel}</td>

											</tr>
											</#list>
											
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
			
<!--校验模态框 -->

<#include "/common/modalTip.ftl"> 
<script type="text/javascript">
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.form-control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			// 排除哪些字段是可以为空的，在这里排除
			if (index == 7 ||index == 8||index == 9) {
				return true;
			}
			
			// 获取到input框的兄弟的文本信息，并对应提醒；
			  var brother = $(this).siblings('.control-label').text();
			var errorMess = "[" + brother + "输入框信息不能为空]";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			// 模态框的错误信息显示
			$('.modal-error-mess').text(errorMess);
			isRight = 0;
			return false;
		} else {
			// 在这个里面进行其他的判断；不为空的错误信息提醒
			return true;
		}
	});
	if (isRight == 0) {
		//modalShow(0);
		 return false;
	} else if (isRight == 1) {
		//modalShow(1);
		 return true;
	}
//	return false;
}
</script>
<script type="text/javascript" src="js/common/data.js"></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>