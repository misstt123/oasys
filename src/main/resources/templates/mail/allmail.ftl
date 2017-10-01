
<div class="yuan">
	<div class="bgc-w box box-primary">
		<!--盒子头-->
		<div class="box-header">
			<h3 class="box-title titles">${mess}</h3>
			<div class="box-tools">
				<div class="input-group" style="width: 150px; margin-top: 0px;">
					<input type="text" class="form-control input-sm cha"
						placeholder="查找..." />
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
		   console.log(con+title);
		   $(".thistable").load("mailtitle",{val:con,title:title});
	   });
	 $('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('${url}?baseKey=baseKey');
		});
	 $(".sdelete").click(function(){
		 var  arry=new Array();
		 var title=$(".titles").text();
		 $("[name=items]:checkbox").each(function(){
			 if(this.checked){
    				//获取被选中了的邮件id
				 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
    				arry.push($mailid);
    			}
		 })
		 if(arry.length==0){
			 return;
		 }
		 var values=arry.toString();
		 $(".thistable").load("alldelete",{ids:values,title:title}); 
	 });
	 //批量查看
	 $(".looked").click(function(){
		 var  arry=new Array();
		 var title=$(".titles").text();
		 $("[name=items]:checkbox").each(function(){
			 if(this.checked){
    				//获取被选中了的邮件id
				 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
    				arry.push($mailid);
    			}
		 })
		 if(arry.length==0||title=="发件箱"||title=="草稿箱"){
			 return;
		 }
		 var values=arry.toString();
		 $(".thistable").load("watch",{ids:values,title:title});
		 
	 });
	 //批量标星
	 $(".star").click(function(){
		 var  arry=new Array();
		 var title=$(".titles").text();
		 $("[name=items]:checkbox").each(function(){
			 if(this.checked){
    				//获取被选中了的邮件id
				 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
    				arry.push($mailid);
    			}
		 })
		 if(arry.length==0){
			 return;
		 }
		 var values=arry.toString();
		 $(".thistable").load("star",{ids:values,title:title});
		 
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