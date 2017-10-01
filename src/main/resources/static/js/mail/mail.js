$(function(){
				
			/*	*//**
				 * 切换星星
				 *//*
				$(".em").click(function(){
					var $this=$(this).parents("tr").find(".em span");
					
					if($this.hasClass("glyphicon-star-empty")){
						$this.removeClass("glyphicon-star-empty").addClass("glyphicon-star");
					}else{
						$this.removeClass("glyphicon-star").addClass("glyphicon-star-empty");
					}
				});*/
				
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
				 * 全选/反选
				 */
					$("[name=id]:checkbox").click(function(){
	           				
	           				var flag=true;
				           	$("[name=id]:checkbox").each(function(){
				           			if(!this.checked){
				           				flag=false;
				           			}
				           		});
				           		
				           	$("#checkedAll").prop("checked",flag);
				  })
					
					  	
	           	$("#checkedAll").click(function(){
	           		
	           		$("[name=id]:checkbox").each(function(){
	           			
	           			if($("#checkedAll").is(':checked')){
	           				/*$(this).prop("checked","checked");*/
	           				$(this).prop("checked",!$(this).attr("checked"));
	           				
	           			}else{
	           				$(this).removeAttr("checked");
	           			}
	           				
	           		})
	           	})
	           	
	           	$(".top .btn").click(function() {
	           		var $this = $('.top .btn .glyphicon ');
					if($this.hasClass("glyphicon-chevron-down")) {
						$this.removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
					} else {
						$this.removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
					}
					$("#MoreDiv").slideToggle(1000);

				});

				$("#ctl00_cphMain_ddlAccount").change(function() {
					var options = $("#ctl00_cphMain_ddlAccount option:selected");
					if(options.val() != "0") {
						$("#ctl00_cphMain_txtReceiver").removeAttr("readonly");

					} else {
						$("#ctl00_cphMain_txtReceiver").attr("readonly", true);
						
					}
				});
			
	          
		})

			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					allowFileManager: true
				});
				K('input[name=getHtml]').click(function(e) {
					alert(editor.html());
				});
				K('input[name=isEmpty]').click(function(e) {
					alert(editor.isEmpty());
				});
				K('input[name=getText]').click(function(e) {
					alert(editor.text());
				});
				K('input[name=selectedHtml]').click(function(e) {
					alert(editor.selectedHtml());
				});
				K('input[name=setHtml]').click(function(e) {
					editor.html('<h3>Hello KindEditor</h3>');
				});
				K('input[name=setText]').click(function(e) {
					editor.text('<h3>Hello KindEditor</h3>');
				});
				K('input[name=insertHtml]').click(function(e) {
					editor.insertHtml('<strong>插入HTML</strong>');
				});
				K('input[name=appendHtml]').click(function(e) {
					editor.appendHtml('<strong>添加HTML</strong>');
				});
				K('input[name=clear]').click(function(e) {
					editor.html('');
				});
				
				
			});
			
