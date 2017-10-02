/**
 * 
 */
$(function() {

	//收藏查询
	$(".choose_collect")
			.click(
					function() {
						$
								.ajax({
									type : "get",
									url : 'collectfind',
									data : {
										iscollect : this.dataset.type
									},
									success : function(dates) {
										$('#container').html(dates);
										if ($(".choose_collect").attr(
												"data-type") == 0) {
											$(".choose_collect").removeClass(
													"glyphicon-star-empty")
													.addClass("glyphicon-star")
										} else if ($(".choose_collect").attr(
												"data-type") == 1) {
											$(".choose_collect").removeClass(
													"glyphicon-star").addClass(
													"glyphicon-star-empty")
										}
									},
									errror : function() {
										alert("失败")
									}

								})
					})

	//收藏
	$(".collect").on(
			"click",
			function() {
				var $id = $(this).attr("id");
				var iscollect = 0;
				if ($(this).hasClass("glyphicon-star-empty")) {
					$(this).removeClass("glyphicon-star-empty").addClass(
							"glyphicon-star")
					//已经收藏
					iscollect = 1;
				} else if ($(this).hasClass("glyphicon-star")) {
					$(this).removeClass("glyphicon-star").addClass(
							"glyphicon-star-empty")
					//取消收藏
					iscollect = 0;
				}
				$.ajax({
					type : "get",
					async : false,
					url : 'collect',
					data : {
						id : $id,
						iscollected : iscollect
					},
					timeout : 1000,
					success : function() {

					},
					error : function() {
						alert("失败")
					}

				})
			})
	//左边的边框样式 以及触发右边事件
	$(".bgc-w ul li ").click(function() {
		$(this).addClass("borderleft").siblings().removeClass("borderleft");
		var $spanval = $(this).children("a").text();
		$(".write h3").text($spanval);
		if ($(this).hasClass("editable")) {
			$(".write span").show();
			var $id = $(this).children("a").attr("id")
			$(".write span .cdelete").attr("id", $id)
		}
	})
	//全选
	$(".allcheck").click(
			function() {
				if ($(this).hasClass("glyphicon-unchecked")) {
					$(this).removeClass("glyphicon-unchecked").addClass(
							"glyphicon-stop");
					$("input[type='checkbox']").prop("checked", "checked");
				} else if ($(this).hasClass("glyphicon-stop")) {
					$(this).removeClass("glyphicon-stop").addClass(
							"glyphicon-unchecked");
					$("input[type='checkbox']").removeAttr("checked");
				}
			})

	//反选
	$("input[type='checkbox']").click(
			function() {
				var flag = true;
				$("input[type='checkbox']").each(function() {
					if (!this.checked)
						flag = false;
				})
				if (flag) {
					$(".allcheck").removeClass("glyphicon-unchecked").addClass(
							"glyphicon-stop");
				} else {
					$(".allcheck").removeClass("glyphicon-stop").addClass(
							"glyphicon-unchecked");
				}
				if ($(this).prop('checked')) {
					$(this).attr("checked", "checked");
				} else {
					$(this).removeAttr("checked", "checked");
				}
			})

})
