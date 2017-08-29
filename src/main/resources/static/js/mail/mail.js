$(function(){
				
				/**
				 * 切换星星
				 */
				$(".em").click(function(){
					var $this=$(this).parents("tr").find(".em span");
					
					if($this.hasClass("glyphicon-star-empty")){
						$this.removeClass("glyphicon-star-empty").addClass("glyphicon-star");
					}else{
						$this.removeClass("glyphicon-star").addClass("glyphicon-star-empty");
					}
				});
				
				/**
				 * 蓝色左边框
				 */
				$(".nav>li").click(function(){
					if($(this).parent().hasClass("files")){
						$(this).css("border-left","3px solid blue")
					.siblings().css("border-left","3px solid transparent");
					}
				})
				
				/**
				 * 伸缩
				 */
	           	$(".des").click(function(){
					
					var $this=$(this).children();
					
					var $ul=$(this).parents(".box-header").next();
					
					if($(this).hasClass("mm")){
						if($this.hasClass("glyphicon-minus")){
							$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
						}else{
							
							$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");	
						}
						$ul.slideToggle(1000);
					}else{
						if($this.hasClass("glyphicon-minus")){
							$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
						}else{
							
							$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");	
						}
							$ul.slideToggle(1000);
					}
				})
	           	
	           	/**
	           	 * checkebox的全选与反选
	           	 */
	           	
	           	$("[name=items]:checkbox").click(function(){
	           		var flag=true;
	           		
	           		$("[name=items]:checkbox").each(function(){
	           			if(!this.checked){
	           				flag=false;
	           			}
	           		});
	           		if(flag){
	           			    $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
	           		}else{
	           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
	           		}
	           		if ($(this).prop('checked')) {
	           			 $(this).attr("checked","checked");
	           		} else {
	           			$(this).removeAttr("checked");
	           		}
	           
	           	})
	           	
	           	$(".chec").click(function(e){
	           		e.preventDefault();
	           		var $this=$(".chec span");
	           		if($this.hasClass("glyphicon-unchecked")){
	           			 $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
	           		}else{
	           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
	           		}
	           		$("[name=items]:checkbox").each(function(){
	           			
	           			if($this.hasClass("glyphicon-stop")){
	           				/*$(this).prop("checked","checked");*/
	           				$(this).prop("checked",!$(this).attr("checked"));
	           			}else{
	           				$(this).removeAttr("checked");
	           			}
	           				
	           		})
	           	})
	          
			})