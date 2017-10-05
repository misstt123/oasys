<#if likeNum??>
	<#if likeNum gt 0>
		<li>
			<span class="glyphicon glyphicon-thumbs-up" style="color: #fff;border-radius: 50%;padding: 3px;background-color: #347ab7;"></span> 
			<span class="likethisnum">
			<#list users as user>
				<a href="">${user.userName}</a>、
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
				<a href="">${user.userName}</a>、
			</#list>
				<span>共${reply.likenum}人觉得很赞</span>
			</span>
		</li>
	</#if>
</#if>