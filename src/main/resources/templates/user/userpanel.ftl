<#include "/common/commoncss.ftl">

<style type="text/css">
.imgs {
	display: block;
	width: 100px;
	height: 100px;
}

.list-group li {
	margin-bottom: 10px;
	list-style-type: none;
}

a {
	text-decoration: none !important;
	color:black;
}
a:focus {
    outline:0px auto -webkit-focus-ring-color; 
    color:black;
    
}


.pa {
	margin-top: 12px;
	margin-bottom: 10px;
}

.nav-tabs-custom {
	background-color: #fff;
}

h1, h3 {
	font-family: 'Source Sans Pro', sans-serif;
}

.bo {
	margin-bottom: 12px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type {
	margin-left: 0;
}

.nav-tabs-custom>.nav-tabs>li.active {
	border-top-color: #3c8dbc;
}

.nav-tabs-custom>.nav-tabs>li {
	border-top: 3px solid transparent;
	margin-bottom: -2px;
	margin-right: 5px;
}

.nav-tabs-custom>.nav-tabs>li:first-of-type.active>a {
	border-left-color: transparent;
}

.nav-tabs-custom>.nav-tabs>li>a, .nav-tabs-custom>.nav-tabs>li>a:hover {
	background: transparent;
	margin: 0;
	color:
}

.nav-tabs-custom>.nav-tabs>li>a:hover {
	color: #999;
}

.nav-tabs-custom>.nav-tabs>li.active>a, .nav-tabs-custom>.nav-tabs>li.active:hover>a
	{
	background-color: #fff;
	color: #444;
}

.nav-tabs-custom>.nav-tabs>li>a {
	color: #444;
	border-radius: 0;
}

.nav-tabs>li>a {
	margin-right: 2px;
	line-height: 1.42857143;
	border: 0px;
	border-radius: 4px 4px 0 0;
}
.list-inline li{
	display:block;
}
.me{
    margin-right: 5px;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">用户面板</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">用户面板</a>
	</div>
</div>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-3">

		<div class="bgc-w box box-solid " style="border-top: 3px solid blue;">
			<div class="box-header ">
				<span class="imgs center-block">
				<#if user.imgPath?? && user.imgPath!=''  >
				<img style="width: 110px;height: 110px;"
					class="profile-user-img img-responsive img-circle"
					src="/image/${user.imgPath}" />
				<#else>
				<img style="width: 110px;height: 110px;"
					class="profile-user-img img-responsive img-circle"
					src="images/timg.jpg" alt="images"/>
				</#if>	
					</span>
				<h3 class="profile-username text-center">
					<span id="ctl00_cphMain_lblFullName">${user.userName}</span>
				</h3>
				<p class="text-muted text-center">
					<span id="ctl00_cphMain_lblPosition">${positionname}</span>（<span
						id="ctl00_cphMain_lblDepartment">${deptname}</span>）
				</p>
				<hr class="pa" />

				<ul class="list-group ">
					<li class=""><b>我的消息</b> <a href="##" class="pull-right me" ><span
							id="ctl00_cphMain_lblMsgCount">${noticelist}</span></a></li>
					<hr class="pa" />
					<li class=""><b>我的邮件</b> <a href="mail" class="pull-right me"><span
							id="ctl00_cphMain_lblMailCount">${maillist}</span></a></li>
					<hr class="pa" />
				</ul>
				<a href="##" class="btn btn-primary btn-block wri" data-toggle="modal" data-target="#notepaper"><b><i
						class="glyphicon glyphicon-pushpin"></i> 写便签</b></a>
			</div>

		</div>

		<div class="bgc-w box box-solid" style="border-top: 3px solid blue;">
			<div class="box-header">
				<h3 class="box-title">基本资料</h3>
			</div>
			<div class="box-body">
				<strong><i class="glyphicon glyphicon-book"></i> 学历</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblEducation">${user.school} ${user.userEdu}</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-earphone"></i> 手机</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblPhone">${(user.userTel)!''}</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-map-marker"></i> 地址</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblAddress">${(user.address)!''}</span>
				</p>

				<hr />

				<strong><i class="glyphicon glyphicon-pencil"></i> 签名</strong>
				<p class="text-muted">
					<span id="ctl00_cphMain_lblNote">${(user.userSign)!''}</span>
				</p>
			</div>
		</div>
	</div>
	<div class="col-md-9" style="margin-bottom: 60px;">


		<div class=" nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="mynote active"><a href="#memo" data-toggle="tab">我的便签</a></li>
				<li class="personset"><a href="#settings" data-toggle="tab" >个人设置</a></li>
			</ul>

			<form action="saveuser" method="post" enctype="multipart/form-data" onsubmit="return empcheck();" >
			<div class="tab-content">

				<div class="active tab-pane thistable" id="memo">
				<#include "/user/panel.ftl">

				</div>
				<div class="tab-pane" id="settings">
					<div class="box-body">
					<!--錯誤信息提示  -->
					<div class="alert alert-danger alert-dismissable" style="display:none;" role="alert">
						错误信息:<button class="thisclose close" type="button">&times;</button>
						<span class="error-emp"></span>
					</div>
						<div class="row">

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label1">用户名</span></label> <input
									name="userName" type="text" value="${user.userName}" readonly="readonly"
									id="ctl00_cphMain_txtName" class="form-control" style="background-color:#fff;"
									onfocus="this.blur()" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label2">电话</span></label> <input
									name="userTel" type="text" value="${(user.userTel)!''}"
									id="ctl00_cphMain_txtPhone1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label3">真实姓名</span></label> <input
									name="realName" type="text" value="${user.realName}"
									id="ctl00_cphMain_txtFullName" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label5">Email</span></label> <input
									name="eamil" type="text"
									value="${(user.eamil)!''}" id="ctl00_cphMain_txtEmail1"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label10">地址</span></label> <input
									name="address" type="text" value="${(user.address)!''}"
									id="ctl00_cphMain_txtAddress1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label6">学历</span></label> <input
									name="userEdu" type="text" value="${user.userEdu}"
									id="ctl00_cphMain_txtEducation" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label7">毕业院校</span></label> <input
									name="school" type="text" value="${user.school}"
									id="ctl00_cphMain_txtSchool" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="icard">身份证号</span></label> <input
									name="idCard" type="text"
									value="${user.idCard}" id="ic"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label9">银行账号</span></label> <input
									name="bank" type="text"
									value="${user.bank}" id="ctl00_cphMain_txtBankAccount"
									class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label16">性别</span></label> <select
									name="sex" id="ctl00_cphMain_ddlSex"
									class="form-control select2">
									<option value="${user.sex}">${user.sex}</option>
									<#if user.sex=="男">
									<option value="女">女</option>
									</#if>
									<#if user.sex=="女">
									<option value="男">男</option>
									</#if>

								</select>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label15">皮肤</span></label> <select
									name="themeSkin" id="ctl00_cphMain_ddlSkin"
									class="form-control select2">
									<option value="blue">经典蓝</option>
									<option value="green">青草绿</option>
									<option value="red">中国红</option>
									<option value="yellow">商务黄</option>
									<option value="purple">高贵紫</option>

								</select>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label14">生日</span></label> <input
									name="birth" type="text" 
									id="Birthday" class="form-control" readonly="readonly" style="background-color:#fff;"/>
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label13">签名</span></label> <input
									name="userSign" type="text" value="${(user.userSign)!''}"
									id="ctl00_cphMain_txtNote" class="form-control" />
							</div>

						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label11">新的密码</span></label> <input
									name="password1" type="password"
									id="Password1" class="form-control" />
							</div>

							<div class="col-md-6 form-group">
								<label class="control-label"><span id="ctl00_cphMain_Label12">确认密码</span></label> <input
									name="password" type="password"
									id="Password2" class="form-control" />
							</div>

						</div>

						<div class="row">

							<hr />

							<div class="col-md-6 form-group">
								<label><span id="ctl00_cphMain_Label17">头像</span></label>
								<div class="form-group">
									<div class="btn btn-default"
										style="position: relative; overflow: hidden;">
										<i class="glyphicon glyphicon-open"></i> 上传头像
										 <input type="file" name="filePath"
											style="opacity: 0; position: absolute; top: 0; right: 0; min-width: 100%; min-height: 100%;">
									</div>
									<p class="help-block">尺寸在512*512以内，大小在500KB以内</p>
								</div>
							</div>

						</div>

					</div>

					<div class="box-footer" style="position: relative; overflow: hidden;">
						<input type="submit" name="ctl00$cphMain$btnSave" value="保存"
							id="ctl00_cphMain_btnSave" class="btn btn-primary" />
					</div>

				</div>
			
			</div>
		</form>
		</div>
	</div>
</div>


<#if errormess??>
	<script type="text/javascript">
		$('.mynote').removeClass("active");
		$("#memo").removeClass("active");
		$('.personset').addClass("active");
		$("#settings").addClass("active");
		$('.error-emp').text('${errormess}');
		
	</script>
</#if>
<#include "/common/modalTip.ftl"> 
<script>
	$(function(){
		getBirth();
		$(".edit").click(function(){
			
			var $content=$(this).siblings(".concent").children(".papercontent").text();
			var $papertitle=$(this).siblings(".title").children(".papertitle").text();
			var $paperid=$(this).siblings(".pk").children(".paperid").text();
			$(".noteid").val($paperid);
			$(".patitle").val($papertitle);
			$(".pacontent").val($content);
			
		});
		$(".wri").click(function(){
			$(".noteid").val("");
			$(".patitle").val("");
			$(".pacontent").val("");
			
		});
		$('.modalclose').on('click',function(){
			$('.control').each(function(){
				$(this).parent().removeClass("has-error has-feedback");
			});	
			$('.alert-danger').css("display","none");
			
		});
		
		/* 从身份证号当中截取出生年月 */
		function getBirth(){
			 if($.trim($("#ic").val()) != "") {
	             var date = "";
	             if($("#ic").val().length == 15) {
	                  date =  '19'+$("#ic").val().substr(6,2)+'-'+$("#ic").val().substr(8,2)+'-'+$("#ic").val().substr(10,2);
	            } else if ($("#ic").val().length == 18) {
	                date =  $("#ic").val().substr(6,4)+'-'+$("#ic").val().substr(10,2)+'-'+$("#ic").val().substr(12,2);
	            }
	           $("#Birthday").val(date);
	       }   
		}
		
		$('.thisclose').on('click', function() {
			$(this).parent().css('display', 'none');
		});
		// 错误信息输入框获取到焦点事件时，讲红色错误信息提醒取消
		$('.form-control').on("focus", function() {
			$(this).parent().removeClass("has-error has-feedback");
		});
		
		$("#ic").blur(function(){getBirth();});
		
	}); 
	
		
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function check() {
	console.log("开始进入了");
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空
		if ($(this).val() == "") {
			// 获取到input框的兄弟的文本信息，并对应提醒；
			  var brother = $(this).siblings('.control-label').text();
			var errorMess = "[" + brother + "不能为空]";
			// 对齐设置错误信息提醒；红色边框
			$(this).parent().addClass("has-error has-feedback");
			$('.alert-danger').css('display', 'block');
			// 提示框的错误信息显示
			$('.error-mess').text(errorMess);
			
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

//验证中文名称
function isChinaName(name) {
 var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
 return pattern.test(name);
}
 
// 验证手机号
function isPhoneNo(phone) { 
 var pattern = /^1[34578]\d{9}$/; 
 return pattern.test(phone); 
}
 
// 验证身份证 
function isCardNo(card) { 
 var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
 return pattern.test(card); 
} 
//验证邮箱
function isMailNo(mail){
	var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
	return pattern.test(mail);
}
//验证卡号
function CheckBankNo(bankn) {
	var flag=true;
	 if(isNaN(bankn)) {
		 alertCheck("银行卡号必须全为数字!");
	     flag=false;
	   }
	
	var bankno = $.trim(bankn);
  　　if(bankno.length < 16 || bankno.length > 19) {
	 alertCheck("银行卡号长度必须在16到19之间!");
     flag=false;
   }
  
   //开头6位
   var strBin = "10,18,30,35,37,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,58,60,62,65,68,69,84,87,88,94,95,98,99";
   if(strBin.indexOf(bankno.substring(0, 2)) == -1) {
	 alertCheck("银行卡号开头6位不符合规范!");
	 flag=false;
   }
   
   return flag;
}
//验证密码
function isPasswordNo(password){
	var flag=true;
	var bankno = $.trim(password);
  　　if(bankno.length < 6 || bankno.length > 19) {
	 alertCheck("密码长度必须在6到19之间!");
     flag=false;
   }
	 if(!isNaN(bankno)) {
		 alertCheck("密码不能全为数字!");
	     flag=false;
	   }
	 return flag;
}

/**
 * 用户表单校验
 */
 
//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
function alertCheck(errorMess){
		
		$('.alert-danger').css('display', 'block');
		// 提示框的错误信息显示
		$('.error-emp').text(errorMess);
		
}

 function empcheck() {
 	console.log("开始进入了");
 	//提示框可能在提交之前是block状态，所以在这之前要设置成none
 	$('.alert-danger').css('display', 'none');
 	var isRight = 1;
 	$('#settings .form-control').each(function(index) {
 		// 如果在这些input框中，判断是否能够为空
 		if ($(this).val() == "") {
 			// 排除哪些字段是可以为空的，在这里排除
 			if (index == 13 ||index == 14) {
 				return true;
 			}
 			
 			// 获取到input框的兄弟的文本信息，并对应提醒；
 			var brother = $(this).siblings('.control-label').text();
 			var errorMess = "[" + brother + "不能为空]";
 			// 对齐设置错误信息提醒；红色边框
 			$(this).parent().addClass("has-error has-feedback");
 			$('.alert-danger').css('display', 'block');
 			// 提示框的错误信息显示
 			$('.error-emp').text(errorMess);
 			isRight = 0;
 			
 			return false;
 		} else {
 			if (index == 1) {
 				var $phone=$(this).val();
 				
 				
 				if(isPhoneNo($phone) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的电话号码!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 3){
 				var $mail=$(this).val();
 				if(isMailNo($mail) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的邮箱!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 7){
 				var $card=$(this).val();
 				if(isCardNo($card) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入正确的身份证号!");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 8){
 				var $bank=$(this).val();
 				if(CheckBankNo($bank) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					isRight = 0;
 		 			return false;
 				}
 				
 			}else if(index == 13){
 				var flag=true;
 				var $savepassword=$("#Password2").val();
 				var $newpassword=$(this).val();
 				if(isPasswordNo($newpassword) == false){
 					$(this).parent().addClass("has-error has-feedback");
 					isRight = 0;
 					flag=false;
 				}else if($savepassword == ""){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("确认密码不能为空!");
 					isRight = 0;
 					flag=false;
 				}
 				
 				return flag;
 				
 			}else if(index == 14){
 				var $savepassword=$(this).val();
 				var $newpassword=$("#Password1").val();
 				if($savepassword != $newpassword){
 					$(this).parent().addClass("has-error has-feedback");
 					alertCheck("请输入一致的密码!");
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
// 	return false;
 }
</script>
<#include "editpaper.ftl">