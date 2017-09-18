// 点击提醒框的关闭按钮，将提示框隐藏
$('.thisclose').on('click', function() {
	$(this).parent().css('display', 'none');
});
// 错误信息输入框获取到焦点事件时，讲红色错误信息提醒取消
$('.form-control').on("focus", function() {
	$(this).parent().removeClass("has-error has-feedback");
});

// 窗口大小改变事件，重新设置距离顶部的高度
window.onresize = function() {
	var height = (document.documentElement.clientHeight - $('#thismodal .modal-dialog').height()) / 2;
	$('#thismodal .modal-dialog').css('top', height);
}

// 当通过前台校验，再进入后台再次校验，返回该操作是否执行正确，否则返回错误信息；
function modalShow(count) {
	if (count == 0) {
		console.log("Error:有错误信息");
		$("#thismodal").modal("toggle");
		$('#thismodal .modal-success').css('display', 'none');
		$('#thismodal .modal-error').css('display', 'block');
	}
	if (count == 1) {
		console.log("success：信息核对正确");
		$("#thismodal").modal("toggle");
		$('#thismodal .modal-error').css('display', 'none');
		$('#thismodal .modal-success').css('display', 'block');

	}
}