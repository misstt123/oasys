<style>
.modal-body li{
list-style-type:none;
}
.cur{
cursor: pointer;
}
/* .cur:hover{
color:blue;
} */
.panel {
    margin-bottom: 0px;
    background-color: #fff; 
     border: 0px solid transparent; 
     border-radius: 0px;
    -webkit-box-shadow: 0 0px 0px rgba(0,0,0,.05);
     box-shadow: 0 0px 0px rgba(0,0,0,.05);
}
</style>

<div class="modal fade" id="subject" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="modalclose close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">选择科目</h4>
			</div>
			
			<div class="modal-body panel-group" id="thisshow">
			
			<p class="cur subjec"><i><img src="images/Lminus.png" class="ones"/>
			
			</i><i><img src="images/subject.gif"/></i> 费用科目</p>
			<div class="one panel" >
			<#list second as sub>
			<p class="cur two" href="#one${sub.subjectId}" data-toggle="collapse" data-parent="#thisshow">
				<i><img class="qie" src="images/Tplus.png" /></i><i><img src="images/subject.gif"/></i>${sub.name}
			</p>
				<ul id="one${sub.subjectId}" class="panel-collapse collapse">
					<#list sublist as list> 
					<#if list.parentId==sub.subjectId>
					<li class="cur" style="margin-bottom: 5px;padding-left: 54px; margin-left: -40px;"><i><img src="images/fangzi.gif" /></i>${list.name}</li>
					</#if> 
					</#list>

				</ul>
			</#list>
			</div>
			</div>
			<div class="modal-footer">
			
				<button class="btn btn-primary save" id="save" type="button" >确定</button>
			</div>
		
		</div>
	</div>
</div>

<script>
	$(function(){
		

		$(".subjec").click(function(){
			if($(".ones").attr("src")=="images/Lminus.png"){
				
			$(".ones").prop("src","images/Tplus.png");
			}else{
				$(".ones").prop("src","images/Lminus.png");
				
			}
			$(".one").slideToggle(1000);
		});
		
		$(".two").click(function(){
			var $img=$(this).children("i:first").children()
			if($img.attr("src")=="images/Tplus.png"){
				
				$img.prop("src","images/Lminus.png");
			}else{
				
				$img.prop("src","images/Tplus.png");
				
			}
			
		});
		$(".cur").click(function(){
			var $text=$(this).text();
			$(".ject").val($text);
			$(".cur").css("background-color","#fff");
			console.log('sssssssssss');
			$(this).css("background-color","rgba(0, 188, 212, 0.06)");
			
		});
		$(".save").click(function(){
			$('#subject').modal("toggle");
			$(".ject").change();
		});
	})
</script>