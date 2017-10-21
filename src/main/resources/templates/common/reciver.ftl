<style>
 .table-r{
 overflow: scroll;
 height:245px;
 }
</style>
<!-- 接收人弹窗-->
				<div class="modal fade " id="myModal" tabindex="-1">

					<!--第二步，窗口声明-->
					<div class="modal-dialog modal-lg ">
						<!--第三步、内容区的声明-->
						<div class="modal-content" style="background: #F9F9F9;">
							<div class="modal-1">

								<div class="modal-2">

									<div class="modal-header" style="margin:10px;margin-top: -20px;">
										<button class="close" data-dismiss="modal" style="display: block;margin: -52px -78px 0 0;;border-radius: 60%;">
											<span class="glyphicon glyphicon-remove-circle"style="color:white;font-size: 30px;" ></span>
										</button>
										<div class="row">
											<div class="col-xs-12" style="height:30px;margin:10px 0px;">

												<h4 style="float:left;">
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue()"> 新增接收人</a>
                      			<a class="btn btn-success glyphicon glyphicon-plus btn-sm"  href="##" onclick="addvalue2()"> 
                      				追加接收人</a>
                  			</h4>

												<div class="input-group">
													<input type="text" class="form-control input-sm pull-right cha" placeholder="查找..." />
													<div class="input-group-btn chazhao" style="top:-1px;">
														<a class="btn btn-sm btn-default glyphicon glyphicon-search" style="height: 30px;" href="##"></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-body thistable" style="margin:10px;">
									<#include "/common/recivers.ftl">
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<h2 class="mi" style="display:none;">${(qufen)!''}</h2>
<script>
$(function(){
	
	/* 分页插件按钮的点击事件 */
	
	$('.baseKetsubmit').on('click',function(){
		var baseKey=$('.baseKey').val();
		$('#myModal .thistable').load('names?baseKey=baseKey');
	});
	$(".chazhao").click(function() {
		var $qufen=$(".mi").text();
		var con = $(".cha").val();
		$("#myModal .thistable").load("names",{title:con,qufen:$qufen});
	});
});
function addvalue(){
	
	var id_array=new Array();
	$('input[name="id"]:checked').each(function(){
	
		var $name=$(this).parents(".col-xs-1").siblings(".na").text();
		console.log($name);
		id_array.push($name);//向数组中添加元素
		var idstr=id_array.join(';');//将数组元素连接起来以构建一个字符串
		$("#recive_list").val(idstr);
		$(".recive_list").val(idstr);
		$(".recive_list").change();
	})
	
	$(".fade").css("display","none");
	
}
/*追加到联系人*/
function addvalue2(){
	
	var id_array=new Array();
	
	var  idstr=null;

	$('input[name="id"]:checked').each(function(){
		var $name=$(this).parents(".col-xs-1").siblings(".na").text();
		id_array.push($name);
		idstr=id_array.join(';');
	})
	
	var org=$("#recive_list").val();
	$("#recive_list").val(org+';'+idstr);	
	$(".fade").css("display","none");
	
}
</script>