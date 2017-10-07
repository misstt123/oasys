
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

<#if error??>
<#if error=='1'>
	<script>
	$(function(){
		alert("亲 已经过了签到时间");
	})
</script>

</#if>
<#if error=='2'>
	<script>
	$(function(){
		alert("亲 还没有到签到时间哦");
	})
</script>

</#if>
</#if>
<script>
	$(".attendce").on('click',function(){
		confirm("您确定签到吗");
		$("#refresh").load('singin');
	});
    
</script>