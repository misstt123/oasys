$(function(){
				/*$(".widths").each(function(){
					var $val=$(this).text();
					
					if($val=="#"){
						var $this=$(this).parents("tr");
						$this.css("background-color","rgba(255, 235, 59, 0.19)");
						$this.hover(function(){
							$this.css("background-color","rgba(158, 158, 158, 0.09)");
						},function(){
							$this.css("background-color","rgba(255, 235, 59, 0.19)");
						})
					}
				})*/
				
				$(".menus").each(function(){
					var $val=$(this).text();
					if($val=="菜单"){
						$(this).css("color","#4caf50");
					}else{
						$(this).css("color","#9e9e9e");
					}
				})
			})