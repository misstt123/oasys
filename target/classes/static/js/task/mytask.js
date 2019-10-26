$(function(){
				$(".commen").click(function(){
					//寻找指定兄弟节点并去除class
					var $else=$(this).addClass("mm").siblings(".commen").removeClass("mm");
					//点击变换字体颜色
					var $color=$(this).addClass("bl").removeClass("co").siblings(".commen").addClass("co").removeClass("bl");
					//创建img
					$("img").appendTo(".mm span");
					var $img=$("<img src='img/desc.gif'/>");
				})
				
				/**
				 * 根据不同的内容，显示不同的颜色
				 */
				$(".change-color").each(function(){
					var $val=$(this).text();
					if($val=="新任务"){
						$(this).addClass("label-warning");
					}else if($val=="已接收"){
						$(this).addClass("label-info");
					}else if($val=="进行中"){
						$(this).addClass("label-primary");
					}else if($val=="已提交"){
						$(this).addClass("label-danger");
					}
					else if($val=="已完成"){
						$(this).addClass("label-success");
					}
					
				})
			})