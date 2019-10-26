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
					<#if dept??>
						<input type="hidden" name="xg" value="xg"/>	
					<#else>
						<input type="hidden" name="xg" value="add"/>				
					</#if>
					<!--盒子头-->
					<div class="box-header">
						<h3 class="box-title">
							<a href="##" class="label label-default" style="padding: 5px;">
								<i class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
							</a>
						</h3>
					</div>
					<!--盒子身体-->
					<div class="box-body no-padding">
						<div class="box-body">
							<div class="alert alert-danger alert-dismissable" role="alert"
								style="display: none;">
								错误信息:<button class="close thisclose" type="button">&times;</button>
								<span class="error-mess"></span>
							</div>
							<div class="row">
								<div class="col-md-6 form-group">
									<label class="control-label"><span>名称</span></label> 
									<input name="deptName" class="form-control" value="${(dept.deptName)!''}"/>
								</div>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>电话</span></label> 
									<input name="deptTel" class="form-control" value="${(dept.deptTel)!''}"/>
								</div>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>传真</span></label>
									<input name="deptFax" class="form-control" value="${(dept.deptFax)!''}" />
								</div>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>邮箱</span></label> 
									<input name="email" class="form-control" value="${(dept.email)!''}"/>
								</div>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>地址</span></label> 
									<input name="deptAddr" class="form-control" value="${(dept.deptAddr)!''}"/>
								</div>
							<!-- 	<div class="col-md-6 form-group">
									<label class="control-label"><span>上班时间</span></label> 
									<input name="startTime" class="form-control" value="${(dept.startTime)!''}"/>
								</div>
								<div class="col-md-6 form-group">
									<label class="control-label"><span>下班时间</span></label> 
									<input name="endTime" class="form-control" value="${(dept.endTime)!''}"/>
								</div> -->
								<input type="hidden" name="deptId" value="${(dept.deptId)!''}">
							</div>
							<#if isread??>
								<table class="table table-hover table-striped">
									<tr>
										
										<th scope="col">&nbsp;</th>
										<th scope="col">真实姓名</th>
										<th scope="col">用户名</th>
										<th scope="col">操作</th>
									</tr>
									<#list deptuser as user>
										<tr>
											<td><img src="images/handsome.jpg" class="img-circle"
												style="width: 25px; height: 25px;" /></td>
											<td><span>${user.realName}</span></td>
											<td><span>${user.userName}</span></td>
											<td><a  href="useredit?userid=${user.userId}" class="label xiugai"><span
													class="glyphicon glyphicon-edit"></span> 人事调动</a> 
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
</body>
<#include "/common/modalTip.ftl"/> 
<#if isread??>
	<script type="text/javascript">
		$('.form-control').attr("readOnly","true");
	</script>
</#if>
<script type="text/javascript">

/* $('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
});
 */
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