
<div class="box-body">

	<div class="bo">
		<table class="table1" cellspacing="0" border="0"
			id="ctl00_cphMain_GridView1"
			style="border-width: 0px; border-collapse: collapse; margin-bottom: 0px; width: 100%;">
			<#if notepaperlist??>
				<#list notepaperlist as notepaper>
					<tr>
						<td>

							<div class="post" style="border: dashed 1px #eee; padding: 10px 10px 0 10px; background: #FFFFE0; margin: 0 5px 10px 5px;">
								<div class="user-block">
									<span class="papertitle" style="color: #8e8e8e;margin-right: 8px;">${(notepaper.title)!''}</span>
										<a href="notepaper?id=${notepaper.notepaperId}" onclick="{return confirm('删除该记录将不能恢复，确定删除吗？');};"
											id="paperdelete" class="pull-right " > 
												<i class='glyphicon glyphicon-remove-sign'></i></a>
												<span class="papertime" style="font-size: 8pt; color: #999;">${notepaper.createTime}</span>
											</div>
											<p class="title" style="display:none;">
												<span class="papertitle">${(notepaper.title)!''}</span>
											</p>
											<p class="concent" style="margin-top: 8px;width: 93%;">
												<span class="papercontent">${notepaper.concent}</span>
											</p>
											<p class="pk" style="display:none;">
												<span class="paperid">${notepaper.notepaperId}</span>
											</p>
											<a  style="margin-top: -22px;"class="pull-right edit" data-toggle="modal" data-target="#notepaper"
												href="##"> <i class="glyphicon glyphicon-edit"></i>
														修改
											</a>
								</div>

							</td>
						</tr>
					</#list>
				</#if>
								
			</table>
	</div>

</div>
<!--盒子尾-->
<#include "/common/paging.ftl">
<script>
		/* 分页插件按钮的点击事件 */
		
		$('.baseKetsubmit').on('click',function(){
			var baseKey=$('.baseKey').val();
			$('.thistable').load('panel?baseKey=baseKey');
		});
		
	$(".edit").click(function(){
			
			var $content=$(this).siblings(".concent").children(".papercontent").text();
			var $papertitle=$(this).siblings(".title").children(".papertitle").text();
			var $paperid=$(this).siblings(".pk").children(".paperid").text();
			$(".noteid").val($paperid);
			$(".patitle").val($papertitle);
			$(".pacontent").val($content);
			
		});
		$(".wri").click(function(){
			$(".noteid").val("");
			$(".patitle").val("");
			$(".pacontent").val("");
			
		});
		
</script>