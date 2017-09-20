<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="easyui/jquery-1.12.4.js"></script>
<#include "/common/commoncss.ftl">
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="plugins/My97DatePicker/WdatePicker.js"></script><title>Insert title here</title>
<script type="text/javascript" src="js/plan/planedit.js"></script>
<meta charset="UTF-8">	

<style>
.box{
	position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
	padding: 10px 0px 10px 10px;
}

.box-body .form-group{
	margin-bottom: 15px;
}
.box .box-body .text{
	min-height: 114px;
}
.box .box-body .row .ischeck{
	width: 28px;
	height: 28px;
}
	.label-back {
    background-color: #6C7B8B;
    color: white;
    }
    .label-back:hover{
    	color: white !important;
    }
    
   
    .accpet{
    	position:absolute;
    	top:30px;
    	right:20px;
    	background-color: #00a65a;
    	color:white;
    	width: 74px;
    	height:25px;
    	font-size:10px;
    	padding: 0 0 2px;
    	text-align:center;
    	line-height: 25px;
    }
    .accpet:hover{
    	color: white !important;
    }
    
    .form-group .btn {
	background-color: #eee;
	width: 100px;
	height: 34px;
	}

    #ctl00_cphMain_fuAttachment {
	opacity: 0;
	position: relative;
	top: -22px;
	}
    
</style>
		<title></title>
		
	</head>
	<body >
		<div class="box increase">
			<form action="" method="post" onsubmit="return check();">
			<div class="box-header">
				<a onclick="window.history.back();" class="btn label-back"> 
					<span class="glyphicon glyphicon-chevron-left" ></span>返回</a>
			</div>
			<div class="box-body">
				<div class="alert alert-danger alert-dismissable" role="alert"
							style="display: none;">
							错误信息:<button class="close" type="button">&times;</button>
							<span class="error-mess"></span>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">
							<span>类型</span>
						</label>
						<select class="form-control">
							<option value="0">日计划</option>
							<option value="1">周计划</option>
							<option value="2">月计划</option>
						</select>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">状态</label>
						<select class="form-control">
							<option value="0">未完成</option>
							<option value="1">已完成</option>
							<option value="2">已取消</option>
						</select>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<span>
						<label class="control-label" >开始时间</label>
						</span>
						<input class="form-control" id="start" onclick="WdatePicker()" />
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">结束时间</label>
						<input class="form-control" id="end" onclick="WdatePicker()" />
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">标题</label>
						<input class="form-control"  />
					</div>
					<div class="col-md-6 form-group" style="position: relative;">
						<label class="control-label">标签</label>
						<input class="form-control" / >
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">计划</label>
						<textarea class="form-control text" ></textarea>
					</div>
					<div class="col-md-6 form-group">
						<label class="control-label">总结</label>
						<textarea class="form-control text"></textarea>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-6 form-group">
						<label class="control-label">评价</label>
						<textarea  disabled="disabled" class="form-control text"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<div class="btn btn-default ">
							<span class="glyphicon glyphicon-paperclip">增加附件</span> <input
								type="file" name="file"
								id="ctl00_cphMain_fuAttachment" />
						</div>
						<p class="help-block">5MB以内</p>
					</div>
				</div>	
			</div>
			
			<div class="box-footer">
				<input class="btn btn-primary" id="save" type="submit" value="保存"/>
				<input class="btn btn-default active" id="cancel" type="submit" value="取消" onclick="window.history.back();"/>
			</div>
			</form>
		</div>
		
<#include "/common/modalTip.ftl"> 
<script type="text/javascript">

$('.successToUrl').on('click',function(){
	window.location.href='/testsysmenu';
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
			if(index == 3){
				
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
		
	</body>
</html>
