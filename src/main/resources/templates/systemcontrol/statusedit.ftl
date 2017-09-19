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
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">状态管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">状态管理</a>
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
			<form action="statuscheck" method="post" onsubmit="return check();">
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="box-body">
						<div class="alert alert-danger alert-dismissable" role="alert" style="display: none;">
							错误信息:<button class="close" type="button">&times;</button>
							<span class="error-mess"></span>
						</div>
						<div class="row">
						<div class="col-md-6 form-group">
							<label class="control-label"><span>模块名</span></label> 
							<input class="form-control" name="statusModel" value="${(status.statusModel)!''}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>状态</span></label> 
							<input class="form-control" name="statusName" value="${(status.statusName)!''}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>排序值</span></label> 
							<input class="form-control" name="statusSortValue" value="${(status.statusSortValue)!''}"/>
						</div>
						<div class="col-md-6 form-group">
							<label class="control-label"><span>颜色</span></label> 
							<input class="form-control" name="statusColor" value="${(status.statusColor)!''}"/>
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

<#include "/common/modalTip.ftl"> 
<script type="text/javascript">

$('.successToUrl').on('click',function(){
	window.location.href='/testsysstatus';
});
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
			if (index == 3 || index == 4) {
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