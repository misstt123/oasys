<#if voteTitles??>
	<div style="border: solid 1px #eee;">
		<table class="table" cellspacing="0" border="0"
			style="border-width: 0px; border-collapse: collapse; margin-bottom: 0px;">
			<thead>
				<tr>
				<#if dateType==1>
					<td>状态: <span class="label label-danger">未开始</span></td>
					
				<#elseif dateType==2>
					<td>状态: <span class="label label-danger" style="background-color: #999;">已结束</span></td>
				<#else>
					<td>状态: <span class="label label-success">进行中</span></td>
				</#if>
				<td>开始时间: <span>${voteList.startTime}</span>——
						结束时间: <span>${voteList.endTime}</span>
					</td>
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
					<td style="width: 200px;">
						<a style="width:72px;marign-right:10px;display:inline-block;" class="votethis" href="javascript:void(0);" disabled="disabled" discussId="${discuss.discussId}" titleId="${voteTitle.titleId}">
							<span class="label label-primary" style="width:72px;">
							<#if voteTitle.contain==true>
								<i class="glyphicon glyphicon-hand-left"></i>
								已投票
							<#else>
								<i class="glyphicon glyphicon-hand-up"></i>
								投票
							</#if>
							</span>
						</a>
						<a href="#vote${voteTitle.titleId}" data-toggle="collapse" =><span class="label label-primary"><i class="glyphicon glyphicon-list"></i> 投票详情</span></a>
					</td>
				</tr>
				<#if voteTitle.users?size gt 0>
				<tr id="vote${voteTitle.titleId}" class="collapse">
						<td colspan="3">
							<span class="glyphicon glyphicon-hand-up" style="color: #fff;border-radius: 50%;padding: 3px;background-color: #347ab7;margin-left: 12px;"></span> 
								投票人员：
								<span class="likethisnum">
									<#list voteTitle.users as user>
										<a 
										class="usershow"  
										title="${user.user.userName}" 
										thisdept="${user.user.dept.deptName}" 
										thisrole="${user.user.role.roleName}" 
										thistel="${(user.user.userTel)!'空的'}"
										thisemail="${(user.user.eamil)!'空的'}" 
										href="javascript:void(0);" style="color: #888;font-size: 12px;"><img src="/image/${(user.user.imgPath)!'timg.jpg'}" title="${user.user.userName}" alt="${user.user.userName}" class="small-img"/></a> 
									</#list>
								<!-- <span style="color: #888;font-size: 13px;">共${voteTitle.count}人已投票</span> -->
							</span>
						</td>
				</tr>
				</#if>
			
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
/* 投票的前台处理，判断投票的状态；校验是否已经投票了 */
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
<script type="text/javascript" src="js/usershow.js"></script>