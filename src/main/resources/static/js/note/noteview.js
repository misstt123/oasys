/**
 * 
 */
$(function() {
				$('.pjax').bind('click', function() {
					$('.select').removeClass('select');
					$(this).addClass('select');
					$.ajax({
						type : 'GET',
						url : this.href,
						success : function(data) {
							$('#container').html(data);
						}
					});
					window.history.pushState({
						url : this.href
					}, null, this.href);
					return false;
				});
				window.addEventListener("popstate", function() {
					$.ajax({
						type : 'GET',
						url : location.href,
						success : function(data) {
							$('#container').html(data);
						}
					});
				});
				
				
				//收藏
				$(".collect").on(
						"click",
						function() {
							if ($(this).hasClass("glyphicon-star-empty")) {
								$(this).removeClass("glyphicon-star-empty")
										.addClass("glyphicon-star")
								alert("已经收藏了")
							} else if ($(this).hasClass("glyphicon-star")) {
								$(this).removeClass("glyphicon-star").addClass(
										"glyphicon-star-empty")
								alert("已经取消收藏了")
							}
						})
				//左边的边框样式 以及触发右边事件
				$(".bgc-w ul li ").click(
						function() {
							$(this).addClass("borderleft").siblings().removeClass("borderleft");
							var $spanval=$(this).children("a").text();
							$(".write h3").text($spanval);
							if($(this).hasClass("editable")){
								$(".write span").show();
								var $id=$(this).children("a").attr("id")
								$(".write span .cdelete").attr("id",$id)
							}
						})
				//全选
				$(".allcheck").click(
					function() {
							if ($(this).hasClass("glyphicon-unchecked")) {
								$(this).removeClass("glyphicon-unchecked")
										.addClass("glyphicon-stop");
								$("input[type='checkbox']").prop("checked", "checked");
							} else if ($(this).hasClass("glyphicon-stop")) {
								$(this).removeClass("glyphicon-stop").addClass(
										"glyphicon-unchecked");
								$("input[type='checkbox']").removeAttr("checked");
							}
						})
					
						//反选
					$("input[type='checkbox']").click(function(){
						var flag=true;
						$("input[type='checkbox']").each(function(){
							if(!this.checked)
								flag=false;
						})
						if(flag){
							$(".allcheck").removeClass("glyphicon-unchecked")
							.addClass("glyphicon-stop");
						}
						else{
							$(".allcheck").removeClass("glyphicon-stop").addClass(
							"glyphicon-unchecked");
						}
						if($(this).prop('checked')){
							$(this).attr("checked","checked");
						}
						else{
							$(this).removeAttr("checked","checked");
						}
					})
				
					
					
				
			})
			
		