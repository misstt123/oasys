<#include "/common/commoncss.ftl">
<link rel="stylesheet" href="css/common/tanchuang.css" />
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
.reciver{
	position: relative;
    float: right;
    margin-top: -25px;
    right: 5px;
    cursor: pointer;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">日程管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">日程管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box">
			<!--盒子头-->
			<form action="addandchangeday" method="post" onsubmit="return check();">
				<input name="rcId" type="hidden" value="${(rc.rcId)!''}"/>
				<div class="box-header">
					<h3 class="box-title">
						<a href="javascript:history.back();" class="label label-default" style="padding: 5px;">
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
								<label class="control-label"> <span> 类型</span>
								</label> <select name="typeId" class="form-control">
									<#list types as type>
										<option value="${type.typeId}">${type.typeName}</option>
									</#list>
								</select>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label"> <span>状态</span>
								</label> <select name="statusId" class="form-control">
									<#list statuses as status>
										<option value="${status.statusId}">${status.statusName}</option>
									</#list>	
								</select>
							</div>
	
							<div class="col-md-6 form-group">
								<label class="control-label">开始日期</label>
								<input name="startTime" class="form-control" id="starTime" 
									value="${(rc.startTime?string('yyyy-MM-dd HH:mm:ss'))!''}"/>
							</div>
							<div class="col-md-6 form-group">
								<label class="control-label">结束日期</label> <input
									name="endTime" class="form-control" id="endTime" 
									value="${(rc.endTime?string('yyyy-MM-dd HH:mm:ss'))!''}"/>
							</div>
	
							<div class="col-md-6 form-group">
								<label class="control-label"><span>标题</span></label> <input
									name="title" class="form-control" value="${(rc.title)!''}"/>
							</div>
	
							<div class="col-md-6 form-group">
								<label class="control-label"><span>接收</span></label> 
									<input name="shareuser" type="text" id="recive_list" style="background-color: #fff;"
									class="form-control" readonly="readonly" placeholder="共享：" />
								<div class="reciver">
									<span class="label label-success glyphicon glyphicon-plus"
										data-toggle="modal" data-target="#myModal">新增</span>
								</div>
							</div>
	
							<div class="col-md-6 form-group">
								<label class="control-label"><span>描述</span></label>
								<textarea rows="5" cols="20" class="form-control"
									name="describe" style="margin: 0px -0.5px 0px 0px; height: 114px; width: 522px;">${(rc.describe)!''}</textarea>
							</div>
	
							<div class="col-md-6 form-group">
								<label class="control-label"><span>提醒</span></label> <br> 
								<#if rc??>
									<#if rc.isRemind>
										<span class="labels"><label><input name="isRemind" type="checkbox" checked/><i>✓</i></label></span>
									<#else>
										<span class="labels"><label><input name="isRemind" type="checkbox"/><i>✓</i></label></span>
									</#if>
								<#else>
									<span class="labels"><label><input name="isRemind" type="checkbox"/><i>✓</i></label></span>
								</#if>
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
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/common/data.js"></script>
<#include "/common/reciver.ftl">
<#include "/common/modalTip.ftl"/> 

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
			if (index == 0 || index == 1 || index == 5 || index == 6 || index == 7) {
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