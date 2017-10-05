<#if voteTitles??>
	<div style="border: solid 1px #eee;">
		<table class="table" cellspacing="0" border="0"
			style="border-width: 0px; border-collapse: collapse; margin-bottom: 0px;">
			<thead>
				<tr>
				<#if dateType==1>
					<td>状态: <span class="label label-danger">未开始</span></td>
					<td>开始时间: <span>${voteList.startTime}</span></td>
				<#elseif dateType==2>
					<td>状态: <span class="label label-danger" style="background-color: #999;">已结束</span></td>
					<td>截止时间: <span>${voteList.endTime}</span></td>
				<#else>
					<td>状态: <span class="label label-success">进行中</span></td>
					<td>截止时间: <span>${voteList.endTime}</span></td>
				</#if>
					<td>&nbsp;</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="col">投票</th>
					<th scope="col">票数</th>
					<th scope="col">
					<#if voteList.selectone==1>
						单选
						<#else>
						多选
					</#if>
					</th>
				</tr>
			<#list voteTitles as voteTitle>
				<tr>
					<td style="width: 400px;"><span>${voteTitle.title}</span></td>
					<td>
						<div class="progress progress-striped active">
							<#if voteTitle.countNum!=0>
								<div class="progress-bar progress-bar-success"
									style="width: ${(voteTitle.count/voteTitle.countNum)*100}%;background-color:${voteTitle.color};">
									${(voteTitle.count/voteTitle.countNum)*100}%
								</div>
							<#else>
								<div class="progress-bar progress-bar-success"
								style="width: 0%;background-color:${voteTitle.color};">
								0
							</div>
							</#if>
							&nbsp;&nbsp;${voteTitle.count}
						</div>
					</td>
					<td style="width: 100px;">
						<a class="votethis" href="javascript:void(0);" disabled="disabled" discussId="${discuss.discussId}" titleId="${voteTitle.titleId}">
							<span class="label label-primary">
							<#if voteTitle.contain==true>
								<i class="glyphicon glyphicon-hand-left"></i>
								已投票
							<#else>
								<i class="glyphicon glyphicon-hand-up"></i>
								投票
							</#if>
							</span>
						</a>
					</td>
				</tr>
			</#list>
			</tbody>
		</table>
	</div>
</#if>
<#if dateType??>
	<#if dateType!=3>
		<script>
			$(function(){
				$('.votethis').children().css('background-color','#999');
			});
		</script>
	</#if>
</#if>
<#if voteTitles??>
<script type="text/javascript">
	$('.voteload').on('click','.votethis',function(){
		if(${dateType}==1){
			console.log("投票还未开始");
			return false;
		}else if(${dateType}==2){
			console.log("投票已经结束");
			return false;
		}
		if($(this).children().children('.glyphicon').hasClass('glyphicon-hand-left')){
			console.log("已经投票了");
			return false;
		}else{
			if(${voteList.selectone}==1){
				var count=1;
				$('.glyphicon').each(function(){
					if($(this).hasClass('glyphicon-hand-left')){
						count=0;
					}
				});
				if(count==1){
					var discussId=$(this).attr('discussId');
					var titleId=$(this).attr('titleId');
					var selectType=${voteList.selectone};
					console.log("discussId:"+discussId);
					console.log("titleId:"+titleId);
					console.log("selectType:"+selectType);
					$('.voteload').load("/votehandle",{discussId:discussId,titleId:titleId,selectType:selectType});
					
				}else{
					console.log("投票方式是单选,已经投过票了");
					return false;
				}
			}else{
				var discussId=$(this).attr('discussId');
				var titleId=$(this).attr('titleId');
				var selectType=${voteList.selectone};
				console.log("discussId:"+discussId);
				console.log("titleId:"+titleId);
				console.log("selectType:"+selectType);
				$('.voteload').load("/votehandle",{discussId:discussId,titleId:titleId,selectType:selectType});
			}
		}
	});
</script>
</#if>