
<script charset="utf-8" src="plugins/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="plugins/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" src="js/mail/mail.js" ></script>
<link rel="stylesheet" href="plugins/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="css/common/tanchuang.css" />
<style>
.ke-container{
border-radius: 5px;
}
</style>
<div class="bgc-w box box-primary" style="min-height: 613px;">
	<!--盒子头-->
	<div class="box-header">
		<h3 class="box-title">写信</h3>
		<div class="box-tools">
			<div class="pull-right top">
				<button type="button" class="btn btn-md btn-primary">
					<span class="glyphicon glyphicon-chevron-down ">展开更多</span>
				</button>
			</div>
		</div>
	</div>
	<!--盒子身体-->
	<form action="pushmail" method="post" enctype="multipart/form-data" onsubmit="return check();" >
	<div class="box-body">
		<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-mess"></span>
					</div>
		<div id="MoreDiv">
			<div class="form-group">
				<select name="mailType" id="ctl00_cphMain_ddlType"
					class="select2 form-control">
					<#if id=="回复">
					<option value="${type.typeId}">${type.typeName}</option>
						<#if type.typeId==16>
						<#else>
						<option value="16">邮件</option>
						</#if>
						<#if type.typeId==17>
						<#else>
						<option value="17">通知</option>
						</#if>
						<#if type.typeId==18>
						<#else>
						<option value="18">公告</option>
						</#if>
					<#else>
						<#list typelist as ty>
						<option value="${ty.typeId}">${ty.typeName}</option>
						</#list>
					</#if>
				</select>
			</div>
			<div class="form-group">
				<select name="mailStatusid" id="ctl00_cphMain_ddlStatus"
					class="select2 form-control">
					<#if id=="回复">
						<option value="${status.statusId}">${status.statusName}</option>
						<#if type.typeId==20>
						<#else>
						<option value="20">一般</option>
						</#if>
						<#if type.typeId==21>
						<#else>
						<option value="21">重要</option>
						</#if>
						<#if type.typeId==22>
						<#else>
						<option value="22">紧急</option>
						</#if>
					<#else>
						<#list statuslist as statu>
						<option value="${statu.statusId}">${statu.statusName}</option>
						</#list>
					</#if>
				</select>
			</div>
			<div class="form-group">
				<select name="inmail" id="account" class="select2 form-control">
					<option value="0">内部邮件</option>
					<#if mailnum??>
					<#list mailnum as num>
					<option value="${num.mailNumberId}">${num.mailUserName}</option>
					</#list>
					</#if>
				</select>
			</div>
		</div>

		<div class="form-group">
			<input name="inReceiver" type="text"
				id="recive_list" style="background-color: #fff;"
				class="form-control" readonly="readonly" placeholder="收件人：" />
			<div class="reciver">
				<span class="label label-success glyphicon glyphicon-plus"
					data-toggle="modal" data-target="#myModal">通讯录</span>
			</div>
		</div>

		<div class="form-group">
			<input name="mailTitle" type="text" value="${(title)!''}"
				id="ctl00_cphMain_txtSubject" class="form-control" placeholder="主题：" />
		</div>

		<div class="form-group">
			<#if id=="回复">
			<textarea name="content" class="form-control tent" style="width: 100%; height: 300px; visibility: hidden; font-size: 20px;"><br/><hr/>${(content)!''}</textarea>
			<#else>
			<textarea name="content" class="form-control tent" style="width: 100%; height: 300px; visibility: hidden; font-size: 20px;">${(content)!''}</textarea>
			</#if>
		</div>

		<div class="form-group">
			<div class="btn btn-default ">
				<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
					type="file" name="file"
					id="ctl00_cphMain_fuAttachment" />
			</div>
			<p class="help-block">5MB以内</p>
		</div>

	</div>
	<!--盒子尾-->
	<div class="box-footer foots">
		<div class="left1">
			<a id="ctl00_cphMain_lnbDiscard" class="btn btn-default " href="mail"><span>放弃</span></a>
		</div>
		<div class="pull-right right1 ">
		    <input type="submit" class="btn btn-default" value="存草稿">
			<input type="submit" class="btn btn-primary " name="fasong" value="发送">
			
		</div>
	</div>	
	</form>
</div>
<script type="text/javascript">
$(function(){
	$("#account").change(function(){
		console.log("qq");
		var options=$("#account option:selected");
		if(options.val()=="0"){
			console.log("www");
			$("#recive_list").prop("readonly",true);
		}else{
			console.log("sss");
			$("#recive_list").removeAttr("readonly");
		}
	});
});
//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
}

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
			if (index == 5||index == 6) {
				return true;
			} 
			
			// 获取到input框的兄弟的文本信息，并对应提醒；
			
			var errorMess = "红色提示框不能为空!";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			
			isRight = 0;
			return false;
			
		} else {
			var $account=$("#account").val();
			 
			if($account!=0){
				if(index==3){
					var $mail=$(this).val();
					var patt1 = new RegExp(";");
					var arr=new Array();
					if(patt1.test($mail)){
						arr=$mail.split(";");
						for(var i=0;i<arr.length;i++){
							if(isMailNo(arr[i]) == false){
								$(this).parent().addClass("has-error has-feedback");
			 					alertCheck("请输入正确的邮箱!");
			 					isRight = 0;
			 		 			return false;
							}
							}
					}else{
						arr=$mail.split("；");
						for(var i=0;i<arr.length;i++){
							if(isMailNo(arr[i]) == false){
								$(this).parent().addClass("has-error has-feedback");
			 					alertCheck("请输入正确的邮箱!");
			 					isRight = 0;
			 		 			return false;
							}
							}
					}
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


<#include "/common/reciver.ftl">