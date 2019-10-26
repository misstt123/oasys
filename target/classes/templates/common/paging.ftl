<div class="box-footer no-padding" style="margin-top: -20px;">
	<div style="padding: 5px;">
		<div id="page"
			style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
			<div style="width: 40%; float: left;">
				<div class="pageInfo" style="margin-left: 5px;">
					共<span>${page.totalElements}</span>条 | 每页<span>${page.size}</span>条
					| 共<span>${page.totalPages}</span>页
				</div>
			</div>
			<div style="width: 60%; float: left;">
				<div class="pageOperation">
				<!--判断是否是第一页  -->
				<#if page.first==true>
					<a class="btn btn-sm btn-default no-padding tablefirst" disabled="disabled"	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-backward"></span></a> 
					<a class="btn btn-sm btn-default no-padding tableup"  disabled="disabled" 	style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-left"></span></a> 
					<#else>
					<a class="btn btn-sm btn-default no-padding tablefirst" style="width: 30px; height: 20px;"> 
						<span class="glyphicon glyphicon-backward"></span></a> 
					<a class="btn btn-sm btn-default no-padding tableup"  style="width: 30px; height: 20px;">
					 	<span	class="glyphicon glyphicon-triangle-left"></span></a>
				</#if>
				<a disabled="disabled" class="btn btn-default no-padding" style="width: 30px; height: 20px;">
					<#if (page.number+1) gte page.totalPages>
						${page.totalPages}
						<#else>
						${page.number+1}
					</#if>
				</a>
				<!--判断是否是最后一页  -->
				<#if page.last==true>
					<a class="btn btn-sm btn-default no-padding tabledown"  disabled="disabled" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span></a> 
					<a class="btn btn-sm btn-default no-padding tablelast" disabled="disabled" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span></a> 
					<#else>
					<a class="btn btn-sm btn-default no-padding tabledown" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-triangle-right"></span></a> 
					<a class="btn btn-sm btn-default no-padding tablelast" style="width: 30px; height: 20px;"> <span
						class="glyphicon glyphicon-forward"></span></a> 
				</#if>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
		/* 分页插件按钮的点击事件 */
		/* url是从后台接收过来的链接，sort是记录排序规则 */
		$('.tablefirst').on('click',function(){
			 if(${page.first?string('true','false')}==false){
				 $('.thistable').load('${url}?page=0${(sort)!''}');
			 }
		});
		$('.tableup').on('click',function(){
			 if(${page.first?string('true','false')}==false){
				 $('.thistable').load('${url}?page=${(page.number)-1}${(sort)!''}');
			 }
		});
		$('.tabledown').on('click',function(){
			if(${page.last?string('true','false')}==false){
				$('.thistable').load('${url}?page=${(page.number)+1}${(sort)!''}');
			 }
		});
		$('.tablelast').on('click',function(){
			if(${page.last?string('true','false')}==false){
				$('.thistable').load('${url}?page=${(page.totalPages)-1}${(sort)!''}');
			 }
			
		});
		
		/*类型、状态、时间的排序  */
		$('.thistype').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('${url}?type=0&icon=glyphicon-triangle-top${(sort2)!''}');
			} else {
				$('.thistable').load('${url}?type=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
			}
		});
		$('.thisstatus').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('${url}?status=0&icon=glyphicon-triangle-top${(sort2)!''}');
			} else {
				$('.thistable').load('${url}?status=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
			}
		});
		$('.thistime').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('${url}?time=0&icon=glyphicon-triangle-top${(sort2)!''}');
			} else {
				$('.thistable').load('${url}?time=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
			}
		});
		$('.thisvisit').on('click', function() {
			if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
				$('.thistable').load('${url}?visitnum=0&icon=glyphicon-triangle-top${(sort2)!''}');
			} else {
				$('.thistable').load('${url}?visitnum=1&icon=glyphicon-triangle-bottom${(sort2)!''}');
			}
		});
		/* 查找 */
		$('.baseKetsubmit').on('click', function() {
			var baseKey = $('.baseKey').val();
			console.log(baseKey);
			$('.thistable').load('${url}?baseKey='+baseKey+'${(catalog)!''}');
		});
</script>