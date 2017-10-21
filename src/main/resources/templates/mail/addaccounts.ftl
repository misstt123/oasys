<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
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
.text{
	min-height: 114px;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">账号管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">账号管理</a>
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
						style="padding: 5px;"> <i
						class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
					</a>
				</h3>
			</div>
			<!--盒子身体-->
			<form action="saveaccount" method="post" onsubmit="return check();">
			 <div class="box-body no-padding">
				<div class="box-body">
				<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" role="alert" style="display: none;">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"> <span>类型</span></label>
							<#if mails??>
								 <select class="form-control" name="mailType">
									<option value="${mails.mailType}">${type}</option>
									<#if mails.mailType==1>
									<option value="2">公司邮件</option>
									<#else>
									<option value="1">系统邮件</option>
									</#if>
								</select>
							<#else>
								 <select class="form-control" name="mailType">
									<#list typelist as type>
										<option value="${type.typeId}">${type.typeName}</option>
									</#list>
								</select>
							</#if>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">状态</label> 
							<#if mails??>
							<select class="form-control" name="status">
								<option value="${mails.status}">${status}</option>
								<#if mails.status==1>
								<option value="2">无效</option>
								<#else>
								<option value="1">有效</option>
								</#if>
							</select>
							<#else>
							<select class="form-control" name="status">
								<#list statuslist as status>
								<option value="${status.statusId}">${status.statusName}</option>
								</#list>
							</select>
							</#if>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">名称</label> 
							<input name="accountName" type="text" id="account_Name" class="form-control" 
							readonly="readonly" value="${username}" style="background-color:#fff;"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label">发件昵称</label>
							<input name="mailUserName" type="text" id="account_Name2" class="form-control" value="${(mails.mailUserName)!''}"/>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">邮件账号</label>
							 <input class="form-control mail" name="mailAccount" value="${(mails.mailAccount)!''}"/>
						</div>
						<div class="col-md-6 form-group" style="position: relative;">
							<label class="control-label">授权码</label>
							<input class="form-control" name="password" value="${(mails.password)!''}"/>
						</div>

						<div class="col-md-6 form-group">
							<label class="control-label">备注</label>
							<textarea class="form-control text" name="mailDes">${(mails.mailDes)!''}</textarea>
							 <input class="id" name="mailNumberId" value="${(mails.mailNumberId)!''}" style="display:none;"/>
						</div>
					</div>
				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存" />
				<input class="btn btn-default" id="cancel" type="button" value="取消"
					onclick="window.history.back();" />
			</div>
		 </form>
		</div>
	</div>
</div>

<!--校验模态框 -->

<#include "/common/modalTip.ftl"> 

<script type="text/javascript">

$('.successToUrl').on('click',function(){
	window.location.href='/accountmanage';
	
});
//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
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
			if (index == 6) {
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
			if(index==4){
				var	$mail=$(this).val();
				if(isMailNo($mail) == false){
					// 对齐设置错误信息提醒；红色边框
					$(this).parent().addClass("has-error has-feedback");
					// 提示框的错误信息显示
					$('.alert-danger').css('display', 'block');
					$('.error-mess').text("邮箱格式不正确!");
 					isRight = 0;
 		 			return false;
				}
			}
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