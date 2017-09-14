$(function() {
	// 设置模态弹出框的初始距离高度为20%
	$('.modal-dialog').css('top', '20%');
});

	// 点击提醒框的关闭按钮，将提示框隐藏
	$('.close').on('click', function() {
		$(this).parent().css('display', 'none');
	});
	// 错误信息输入框获取到焦点事件时，讲红色错误信息提醒取消
	$('.form-control').on("focus", function() {
		$(this).parent().removeClass("has-error has-feedback");
	});


// 窗口大小改变事件，重新设置距离顶部的高度
window.onresize = function() {
	var height = (document.documentElement.clientHeight - $('.modal-dialog')
			.height()) / 2;
	$('.modal-dialog').css('top', height);
}

// 当通过前台校验，再进入后台再次校验，返回该操作是否执行正确，否则返回错误信息；
function modalShow(count) {
	if (count == 0) {
		console.log("Error:有错误信息");
		$("#mymodal").modal("toggle");
		$('.modal-success').css('display', 'none');
		$('.modal-error').css('display', 'block');
	}
	if (count == 1) {
		console.log("success：信息核对正确");
		$("#mymodal").modal("toggle");
		$('.modal-error').css('display', 'none');
		$('.modal-success').css('display', 'block');

	}
}

// 表单提交前执行的onsubmit()方法；返回false时，执行相应的提示信息；返回true就提交表单到后台校验与执行
/*function check() {
	//提示框可能在提交之前是block状态，所以在这之前要设置成none
	$('.alert-danger').css('display', 'none');
	var isRight = 1;
	$('.form-control').each(function(index) {
		// 如果在这些input框中，判断是否能够为空；
		if ($(this).val() == "") {
			// 排除哪些字段是可以为空的，在这里排除
			if (index == 3 || index == 4) {
				return true;
			}
			// 获取到input框的兄弟的文本信息，并对应提醒；
			var brother = $(this).siblings('.control-label').text();
			var errorMess = "'" + brother + "' 输入框信息为空";
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
		// return false;
		modalShow(0);
	} else if (isRight == 1) {
		// return true;
		modalShow(1);
	}
	return false;
}*/
