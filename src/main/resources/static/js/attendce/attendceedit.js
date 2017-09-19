/**
 * 
 */
$(function(){
	//判断是否可编辑
	var $write=$(".row .atttype").attr("data-edit");
	if($write==1){
		$(".row .atttype").attr("disabled",true);
	}
	$("#save").click(function(){
		var $remark=$(".remark").val();
		var $id=$(".remark").attr("id")
		$.ajax({
			type:"post",
			data:{id:$id,
				remark:$remark
			},
			url:'attendceedit',
			success:function(){
				window.location.reload();			
				},
			error:function(){
				
			}
		})
	})
	
})