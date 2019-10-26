<#include "/common/commoncss.ftl"/>
<style type="text/css">
a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.red {
	color: #d9534f;
	font-weight: 100;
	font-size: 1px;
}
.file{
	opacity: 0;
    width: 100px;
    height: 34px;
    margin-left: -13px;
    margin-top: -20px;
}
</style>
<!--盒子头-->
<div class="box-header">
	<h3 class="box-title">
		<a href="javascript:void(0);" class="label label-default returnoutaddress"
			style="padding: 5px;"> <i
			class="glyphicon glyphicon-chevron-left"></i> <span>返回</span>
		</a>
	</h3>
</div>
<form action="savaaddress" method="post" id="addressform" enctype="multipart/form-data" onsubmit="return check();">
	<!--盒子身体-->
	<div class="box-body no-padding">
		<div class="box-body">
			<div class="alert alert-danger alert-dismissable" role="alert"
				style="display: none;">
				错误信息:
				<button class="close thisclose" type="button">&times;</button>
				<span class="error-mess"></span>
			</div>
			<div class="row">
				<div class="col-md-6 form-group">
					<label class="control-label"><span>分类</span></label> 
					<select class="form-control" name="catalogName">
					<#if du?? & du.catalogName?? & du.catalogName!="">
						<option value="${(du.catalogName)!''}">${(du.catalogName)!'外部通讯录'}</option>
					<#else>
						<option value="${(du.catalogName)!''}">外部通讯录</option>
					</#if>
						<option value="">外部通讯录</option>
					<#list calogs as ca>
						<option value="${ca}">${ca}</option>
					</#list>
					</select>
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>性别</span></label> 
					<select class="form-control" name="sex">
						<#if director??>
							<option value="${director.sex}">${director.sex}</option>
						</#if>
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>姓名</span></label> 
					<input class="form-control" name="userName" value="${(director.userName)!''}"/>
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>电话号码</span></label> <input
						class="form-control" value="${(director.phoneNumber)!''}" name="phoneNumber" />
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>邮箱</span></label> <input
						class="form-control" value="${(director.email)!''}" name="email" />
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>住址</span></label> <input
						class="form-control" value="${(director.address)!''}" name="address" />
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>所属公司</span></label> <input
						class="form-control" value="${(director.companyname)!''}" name="companyname" />
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label"><span>公司号码</span></label> <input
						class="form-control" value="${(director.companyNumber)!''}" name="companyNumber" />
				</div>
				
				<div class="col-md-6 form-group">
					<label class="control-label"><span>备注</span></label>
					<textarea class="form-control text" rows="5" cols="20"
						name="remark">${(director.remark)!''}</textarea>
				</div>
				<div class="col-md-6 form-group">
					<label class="control-label" style="display: block;"><span>图片</span></label>
					<div class="btn btn-default ">
						<span class="glyphicon glyphicon-paperclip">增加附件</span> 
						<input type="file" name="file" class="file">
					</div>
					<p class="help-block" style="display:inline-block;">5MB以内</p>
				</div>
				
			</div>
		</div>
	</div>

	<!--盒子尾-->
	<div class="box-footer">
		<input class="btn btn-primary" id="save" type="submit" value="保存" />
		<input class="btn btn-default returnoutaddress" id="cancel" type="button" value="取消" />
	</div>
</form>

<#include "/common/modalTip.ftl"/> 
<script type="text/javascript">
	$('.successToUrl').on('click', function() {
		window.location.href = '/infrommanage';
	});
	//表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
	function check() {
		console.log("开始进入了");
		//提示框可能在提交之前是block状态，所以在这之前要设置成none
		$('.alert-danger').css('display', 'none');
		var isRight = 1;
		$('#addressform .form-control').each(function(index) {
			// 如果在这些input框中，判断是否能够为空
			if ($(this).val() == "") {
				// 排除哪些字段是可以为空的，在这里排除
				if (index == 2 || index == 3|| index == 4) {
				console.log(index);
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
				}
			} else {
				if(index==3){
					if(isPhoneNo($(this).val())==false){
						var errorMess="请输入正确的手机格式";
						$('.error-mess').text(errorMess);
						// 模态框的错误信息显示
						$('.modal-error-mess').text(errorMess);
						isRight = 0;
						return false;
					}
				}
				if(index==4){
					if(isMailNo($(this).val())==false){
						var errorMess="请输入正确的邮箱格式";
						$('.error-mess').text(errorMess);
						// 模态框的错误信息显示
						$('.modal-error-mess').text(errorMess);
						isRight = 0;
						return false;
					}
				}
				// 在这个里面进行其他的判断；不为空的错误信息提醒
				return true;
			}
		});
		if (isRight == 0) {
			modalShow(0);
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
	//验证邮箱
	function isMailNo(mail){
		var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/; 
		return pattern.test(mail);
	}
</script>