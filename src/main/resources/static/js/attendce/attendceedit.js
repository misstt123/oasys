/**
 * 
 */
$(function(){
	//判断是否可编辑
	var $write=$(".row .atttype").attr("data-edit");
	if($write==1){
		$(".row .atttype").attr("disabled",true);
	}

	
})