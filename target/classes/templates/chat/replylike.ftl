<ul class="list-inline">
	<li><a href="#" class="thisreply"
		replyId="${reply.replyId}" replyModule="reply"> <span
			class="glyphicon glyphicon-share-alt"></span> 回复
	</a></li>
	<li><a href="#" class="likethis" replyId="${reply.replyId}" module="reply"> <span
			class="glyphicon glyphicon-thumbs-up"></span> 
			<span class="likenum">
			<#if likeNum??>
				<#if contain>
					已赞(${likeNum})
				<#else>
					赞(${likeNum})
				</#if>	
			<#else>
				<#if reply.contain>
					已赞(${reply.likenum})
				<#else>
					赞(${reply.likenum})
				</#if>
			</#if>
			</span>
	</a></li>
	<li><a href="#comment${reply.replyId}"
		class="label xiugai toggle" data-toggle="collapse"><span
			class="glyphicon glyphicon-triangle-bottom"></span>评论次数(
			<#if comments??>
				${comments}
			<#else>
				${reply.count}
			</#if>
			)</a>
	</li>
	<li class="pull-right">
		<span class="rightNum">
			<#if rightNum??>
				${rightNum}
			<#else>
				${reply_index+1}
			</#if>
		</span>楼
	</li>
</ul>
<!-- 下面是具体点赞人员的名字显示 -->
<ul class="list-inline">
	<#if likeNum??>
		<#if likeNum gt 0>
			<li>
				<span class="glyphicon glyphicon-thumbs-up" style="color: #fff;border-radius: 50%;padding: 3px;background-color: #347ab7;"></span> 
				<span class="likethisnum">
				<#list users as user>
					<a 
					class="usershow"  
					title="${user.userName}" 
					thisdept="${user.dept.deptName}" 
					thisrole="${user.role.roleName}" 
					thistel="${(user.userTel)!'空的'}"
					thisemail="${(user.eamil)!'空的'}" 
					href="">${user.userName}</a>、
				</#list>
					<span>共${likeNum}人觉得很赞</span>
				</span>
			</li>
		</#if>
	<#else>
		<#if reply.likenum gt 0>
			<li>
				<span class="glyphicon glyphicon-thumbs-up" style="color: #fff;border-radius: 50%;padding: 3px;background-color: #347ab7;"></span> 
				<span class="likethisnum">
				<#list reply.replyLikeUsers as user>
					<a 
					class="usershow"  
					title="${user.userName}" 
					thisdept="${user.dept.deptName}" 
					thisrole="${user.role.roleName}" 
					thistel="${user.userTel}"
					thisemail="${user.eamil}" 
					href="javascript:void(0);">${user.userName}</a>、
				</#list>
					<span>共${reply.likenum}人觉得很赞</span>
				</span>
			</li>
		</#if>
	</#if>
</ul>
<script type="text/javascript" src="js/usershow.js"></script>