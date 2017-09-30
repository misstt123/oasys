<div class="jichu kaoqin " style="cursor: pointer;">
	<div class="wenzi">
			<a class="attendce" style="text-decoration: none; color:white;">
				<h2 class="">
					<#if alist??>
							${alist.attendHmtime}
						<#else>
							未签到
					</#if>
				</h2>
			</a>
			<p>
				<#if alist??>
						${type}
					<#else>
						请到考勤管理签到
				</#if>
			</p>
	</div>
	<div class="iconfont">
		<span class="glyphicon glyphicon-time"></span>
	</div>
	<a href="attendcelist" class="moreduo"> 更多 <span
		class="glyphicon glyphicon-circle-arrow-right"></span>
	</a>
</div>
<script>
	$(".attendce").on('click',function(){
		$("#refresh").load('singin');
	});
    
</script>
<#if error??>
	<script>
	$(function(){
		alert("今日不能签到哦");
	})
</script>
</#if>