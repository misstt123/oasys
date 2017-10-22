<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common/box.css" />
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
</style>
</head>

<body style="background-color: #ecf0f5;">
	<div class="row" style="padding-top: 10px;">
		<div class="col-md-2">
			<h1 style="font-size: 24px; margin: 0;" class="">部门管理</h1>
		</div>
		<div class="col-md-10 text-right">
			<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> >
			<a disabled="disabled">部门管理</a>
		</div>
	</div>
	<div class="row" style="padding-top: 15px;">
		<div class="col-md-12">
			<!--id="container"-->
			<div class="bgc-w box">
				<form action="deptedit" method="post" onsubmit="return check();">
					<!--盒子头-->
					<div class="box-header">
						<h3 class="box-title" style="font-size: 12px;">
							部门详细信息
						</h3>
					</div>
					<!--盒子身体-->
					<div class="box-body no-padding">
						<div class="box-body">
							<div class="row">
								<div class="col-md-12 form-group">
									${dept.deptName}
									<#if (deptuser?? & deptuser?size gt 0) || deptmanage??>
										<a class="label sheding" href="javascript:void(0);">删除</a>
									<#else>
										<a class="label shanchu" href="deletdept?deletedeptid=${dept.deptId}">删除</a>
									</#if>
								</div>
								<div class="col-md-12 form-group">
									部门经理：${(deptmanage.realName)!'暂无'}  
									
									<#if (deptuser?? & deptuser?size gt 0) || deptmanage??>
										<a class="changemanage label xiugai">更换</a>
									<#else>
										<a class="label sheding" href="javascript:void(0);">更换</a>
									</#if>
								</div>
								<input type="hidden" name="deptid" value="${(dept.deptId)!''}">
							</div>
							<#if isread??>
								<table class="table table-hover table-striped">
									<tr>
										
										<th scope="col">&nbsp;</th>
										<th scope="col">真实姓名</th>
										<th scope="col">用户名</th>
										<th scope="col">职位</th>
										<th scope="col">操作</th>
									</tr>
									<#list deptuser as user>
										<tr>
											<td><img src="images/handsome.jpg" class="img-circle"
												style="width: 25px; height: 25px;" /></td>
											<td><span>${user.realName}</span></td>
											<td><span>${user.userName}</span></td>
											<td><span>${user.position.name}</span></td>
											<td>
												<a class="usermanagechange label xiugai">
													<span class="glyphicon glyphicon-edit"></span> 人事调动
												</a>
												<input class="deptuserid" type="hidden" value="${user.userId}"/>
												<input class="realname" type="hidden" value="${user.realName}"/>
											</td>
										</tr>
									</#list>
								</table>
							</#if>
						</div>
						
					</div>
					<!--盒子尾-->
					<div class="box-footer">
						<#if isread??>
							<input class="btn btn-default" id="cancel" type="button" value="返回"
							onclick="window.history.back();" />
						<#else>
							<input class="btn btn-primary" id="save" type="submit" value="保存" />
							<input class="btn btn-default" id="cancel" type="button" value="取消"
							onclick="window.history.back();" />
						</#if>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="modal fade in userchange" id="thismodal" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body box no-padding" style="display: none;">
					<form action="deptandpositionchange" method="post">
						<div class="box-header">
							<h3 class="box-title mc-title" style="font-size:15px;">人事变动</h3>
						</div>
						<div class="box-body no-padding">
							<div class="row">
								<div class="changeuser"> 
									<input class="changeuserid" type="hidden" name="userid" value=""/>
									<input type="hidden" name="deptid" value="${(dept.deptId)!''}">
								</div> 
								<div class="col-md-6">
									<label class="control-label"> <span>部门</span></label>
									<select class="deptselect form-control" name="changedeptid">
										<#list depts as dept>
											<option value="${dept.deptId}">${dept.deptName}</option>
										</#list>
									</select>
								</div>
								<div class="col-md-6">
									<label class="control-label"> <span>职位</span></label>
									<select class="positionselect form-control" name="positionid">
										<#list positions as position>
											<option value="${position.id}">${position.name}</option>
										</#list>
									</select>
								</div>
							</div>
							
						</div>
						<div class="box-footer" style="text-align:right;">
							<button type="submit" class="btn btn-primary"
								>确定</button>
							<button type="button" class="btn btn-default mcmodalcancle"
								data-dismiss="modal">取消</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade in managechangemodel" id="thismodal" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body box no-padding" style="display: none;">
					<form action="deptmanagerchange" method="post">
						<div class="box-header">
							<h3 class="box-title mc-title" style="font-size:15px;">人事变动</h3>
						</div>
						<div class="box-body no-padding">
							<div class="row">
								
								<#if deptmanage??>
									<div class="col-md-12">
										<label class="control-label" style="margin-top: 5px"> <span>当前经理去向：</span></label> 
										<input type="hidden" name="deptid" value="${(dept.deptId)!''}">
										<input type="hidden" name="oldmanageid" value="${deptmanage.userId}" />
									</div> 
									<div class="col-md-6">
										<label class="control-label"> <span>部门</span></label>
										<select class="deptselect form-control" name="changedeptid">
											<#list depts as dept>
												<option value="${dept.deptId}">${dept.deptName}</option>
											</#list>
										</select>
									</div>
									<div class="col-md-6">
										<label class="control-label"> <span>职位</span></label>
										<select class="positionselect form-control" name="positionid">
											<#list positions as position>
												<option value="${position.id}">${position.name}</option>
											</#list>
										</select>
									</div>
									<div class="col-md-6">
										<#if deptuser?? & deptuser?size gt 0>
											<label class="control-label" style="margin-top: 5px"> <span>新任部门经理：</span></label>
											<select class="form-control" name="newmanageid">
												<#list deptuser as user>
													<option value="${user.userId}">${user.realName}</option>
												</#list>
											</select>
										</#if>
									</div>
								<#else>
									<div class="col-md-6">
										<input type="hidden" name="deptid" value="${(dept.deptId)!''}">
										<label class="control-label" style="margin-top: 5px"> <span>新任部门经理：</span></label>
										<select class="form-control" name="newmanageid">
											<#list deptuser as user>
												<option value="${user.userId}">${user.realName}</option>
											</#list>
										</select>
									</div>
								</#if>
								
							</div>
						</div>
						<div class="box-footer" style="text-align:right;">
							<button type="submit" class="btn btn-primary"
								>确定</button>
							<button type="button" class="btn btn-default mcmodalcancle"
								data-dismiss="modal">取消</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<#include "/common/modalTip.ftl"/> 
<script type="text/javascript">

$(".deptselect").on("change",function(){
	//alert("部门选择变化");
	var selectdeptid = $(this).val();
	
	$.post("selectdept",{selectdeptid:selectdeptid},function(data){
		$(".positionselect").empty();
		
		//console.log(data);
		$.each(data,function(i,item){
			var potion = $("<option value="+item.id+">"+item.name+"</option>");
			$(".positionselect").append(potion);
		});
	});
	
});

$(".usermanagechange").click(function(){
	var userid = $(this).siblings(".deptuserid").val();
	console.log(userid);
	$("#thismodal.userchange").modal("toggle");
	$('#thismodal.userchange .modal-body').css('display', 'block');
	$("#thismodal .changeuser .changeuserid").val(userid);
	
});

$(".changemanage").click(function(){
	$("#thismodal.managechangemodel").modal("toggle");
	$('#thismodal.managechangemodel .modal-body').css('display', 'block');
});




/*  $('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
}); */

function alertCheck(errorMess){
	
	$('.alert-danger').css('display', 'block');
	// 提示框的错误信息显示
	$('.error-mess').text(errorMess);
	
}
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
			if (index == 2 || index == 3 || index == 4 || index == 5 || index == 6) {
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
			
			if(index == 0){
				var $name=$(this).val();
 				
 				if(isChinaName($name) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入中文名称");
 					isRight = 0;
 		 			return false;
 				}
			} 
			
			if(index == 3){
				var $mail=$(this).val();
 				
 				if(isMailNo($mail) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("邮箱格式错误");
 					isRight = 0;
 		 			return false;
 				}
			}
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


//验证中文名称
function isChinaName(name) {
 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
 return pattern.test(name);
}

//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
}
</script>
</html>