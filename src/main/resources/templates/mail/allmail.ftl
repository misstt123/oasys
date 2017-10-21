
<div class="yuan">
	<div class="bgc-w box box-primary">
		<!--盒子头-->
		<div class="box-header">
			<h3 class="box-title titles">${mess}</h3>
			<div class="box-tools">
				<div class="input-group" style="width: 220px; margin-top: 0px;">
					<input type="text" class="form-control input-sm cha"
						placeholder="类型，主题，状态，收件人查询" />
					<div class="input-group-btn chazhao">
						<a class="btn btn-sm btn-default"><span
							class="glyphicon glyphicon-search"></span></a>
					</div>
				</div>
			</div>
		</div>
		<div class="thistable">
			<#include "/mail/mailbody.ftl">
		</div>
	</div>
</div>
<script>
$(function(){
	 $(".chazhao").click(function(){
		   var con=$(".cha").val();
		   var title=$(".titles").text();
		  
		   $(".thistable").load("mailtitle",{val:con,title:title});
	   });
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
</script>