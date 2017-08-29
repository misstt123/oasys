$(function(){
				$(".commen").click(function(){
					//寻找指定兄弟节点并去除class
					var $else=$(this).addClass("mm").siblings(".commen").removeClass("mm");
					//点击变换字体颜色
					var $color=$(this).addClass("bl").removeClass("co").siblings(".commen").addClass("co").removeClass("bl");
					//切换img
					$("#img").appendTo(".mm span");
				
				})
				
				/**
				 * 根据不同的内容，显示不同的颜色
				 */
				$(".change-color").each(function(){
					var $val=$(this).text();
					if($val=="有效"){
						$(this).addClass("label-success");
					}else if($val=="失效"){
						$(this).css("background-color","#9E9E9E");
					}
					
				})
			})