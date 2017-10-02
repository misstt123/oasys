
<#if replyList?size gte 0>
	<table class="table" style="margin-bottm: 0px;">
		<tbody>
			<tr>
				<th scope="col" style="background-color: #EEEEEE;">回复</th>
			</tr>
			<#list replyList as reply>
			<tr>
				<td>
					<div class="post">
						<div class="user-block">
							<span> <a href="#"> <img src="images/handsome.JPG"
									class="big-img" />
							</a>
							</span> <span class="username"> <a href="#"
								class="raply-name">${(reply.user.userName)!''}</a> <a
								href="#" class="pull-right" style="font-size: 12px;"> <span
									style="font-size: 16px;">&times;</span></a>
							</span> <span class="right-time">${reply.replayTime}</span>
							<p style="padding-top: 10px;">${reply.content}</p>
							<ul class="list-inline">
								<li><a href="#" class="thisreply"
									replyId="${reply.replyId}" replyModule="reply"> <span
										class="glyphicon glyphicon-share-alt"></span> 回复
								</a></li>
								<li><a href="#"> <span
										class="glyphicon glyphicon-thumbs-up"></span> 喜欢(0)
								</a></li>
								<li class="pull-right"><a href="#comment${reply.replyId}"
									class="label xiugai toggle" data-toggle="collapse"><span
										class="glyphicon glyphicon-triangle-bottom"></span>评论次数(2)</a>
									<span>1楼</span></li>
							</ul>
							<#if commentList??>
							<div id="comment${reply.replyId}" class="comment collapse in"
								style="margin-left: 80px;">
								<table class="table table-hover" style="margin-bottom: 0;">
									<tbody>
										<#list commentList as comment>
										 <#if comment.reply == reply.replyId>
										<tr>
											<td class="comment-td"><a href="#"> <img
													src="images/handsome.JPG" class="big-img" />
											</a></td>
											<td>
												<div class="user-block">
													<a href="" class="raply-name">${(comment.user.userName)!''}: </a>${comment.comment}
													<ul class="list-inline pull-right"
														style="display: block;">
														<li>${comment.time}</li>
														<li><a href="#" class="label xinzeng thisreply"
															replyId="${comment.commentId}" replyModule="reply" replyName="${comment.user.userName}"><span
																class="glyphicon glyphicon-share-alt"></span>回复</a></li>
														<li><a href="#" class="label shanchu"><span
																class="glyphicon glyphicon-remove"></span>删除</a></li>
													</ul>
												</div>
											</td>
										</tr>
										</#if> 
										</#list>
									</tbody>
								</table>
							</div>
							</#if>
						</div>
					</div>
				</td>
			</tr>
			</#list>
			<!--第二个回复-->
		</tbody>
	</table>
</#if>
<!-- 存在 -->