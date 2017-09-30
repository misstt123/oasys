
<div class="yuan">
	<div class="bgc-w box box-primary">
		<!--盒子头-->
		<div class="box-header">
			<h3 class="box-title">${mess}</h3>
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
		<div class="thisbody">
			<#include "/mail/mailbody.ftl">
		</div>
	</div>
</div>
<script>

$(function(){
	 $(".chazhao").click(function(){
		   var con=$(".cha").val();
		   $(".thistable").load("mailtitle",{val:con});
	   });
	 $('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('${url}?baseKey=baseKey');
		});
	 $(".sdelete").click(function(){
		 var  arry=new Array();
		 
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
		 console.log(values);
		 /* $(this).prop("href","alldelete?ids=values"); */
		 $(".thisbody").load("alldelete",{ids:values}); 
	 });
})
</script>