<#if replyList?? &&replyList?size gt 0>
	<table class="table" style="margin-bottm: 0px;" onload="javascript:location.reload();">
		<tbody>
			<tr>
				<th scope="col" style="background-color: #EEEEEE;">回复</th>
			</tr>
			<#if replyList?? &&replyList?size gt 0>
			<#list replyList as reply>
			<tr>
				<td>
					<div class="post">
						<div class="user-block">
							<span> <a href="#"> <img src="/images/touxiang/${(reply.user.imgPath)!'timg.jpg'}"
									class="big-img" />
							</a>
							</span> <span class="username"> <a href="#"
								class="raply-name">${(reply.user.userName)!''}</a> <a
								href="#" class="pull-right" style="font-size: 12px;"> <span
									style="font-size: 16px;">&times;</span></a>
							</span> <span class="right-time">${reply.replayTime?string('yyyy-MM-dd HH:mm:ss')}</span>
							<p style="padding-top: 10px;">${reply.content}</p>
							<ul class="list-inline">
								<li><a href="#" class="thisreply"
									replyId="${reply.replyId}" replyModule="reply"> <span
										class="glyphicon glyphicon-share-alt"></span> 回复
								</a></li>
								<li><a href="#" class="likethis" replyId="${reply.replyId}"> <span
										class="glyphicon glyphicon-thumbs-up"></span> 
										<span class="likenum">
										<#if reply.contain>
											已赞(${reply.likenum})
										<#else>
											赞(${reply.likenum})
										</#if>
										</span>
								</a></li>
								<li ><a href="#comment${reply.replyId}"
									class="label xiugai toggle" data-toggle="collapse"><span
										class="glyphicon glyphicon-triangle-bottom"></span>评论次数(${reply.count})</a>
								</li>
								<li class="pull-right"><span>${reply_index+1}楼</span></li>
							</ul>
							<#if commentList??>
							<div id="comment${reply.replyId}" class="comment collapse"
								style="margin-left: 80px;">
								<table class="table table-hover" style="margin-bottom: 0;">
									<tbody>
										<#list commentList as comment>
										 <#if comment.reply == reply.replyId>
										<tr>
											<td class="comment-td"><a href="#"> <img
													src="/images/touxiang/${(comment.user.imgPath)!'timg.jpg'}" class="big-img" />
											</a></td>
											<td>
												<div class="user-block">
													<a href="" class="raply-name">${(comment.user.userName)!''}: </a>${comment.comment}
													<ul class="list-inline pull-right"
														style="display: block;">
														<li>${comment.time?string('yyyy-MM-dd HH:mm:ss')}</li>
														<li><a href="#" class="label xinzeng thisreply"
															replyId="${reply.replyId}" replyModule="reply" replyName="${comment.user.userName}"><span
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
			<#else>
				难道没有东西处理啊masadfffffffffffffffffffffffffffffffffff
			</#if>
			<tr>
				<th scope="col" style="background-color: #EEEEEE;text-align: center;padding:16px;" class="addmore">
					<#if page.totalElements gt page.size>
					还有${page.totalElements-page.size}条，点击加载更多~~~
					<#else>
						已经没有更多了~~~
					</#if>
				</th>
			</tr>
			<!--第二个回复-->
		</tbody>
	</table>
	<#else>
	<table class="table" style="margin-bottm: 0px;">
		<tbody>
			<tr>
				<th scope="col" style="background-color: #EEEEEE;text-align: center;">还没有评论，快来坐沙发~~~</th>
			</tr>
		</tbody>
	</table>
</#if>
<!-- 存在 -->
<#include "/common/comment.ftl"/> <!--class nothing 完毕-->
<script type="text/javascript">
	$('.addmore').on('click',function(){
		var num=${discuss.discussId};
		var page=${page.number};
		var size=${page.size+5};
		console.log(page);
		console.log(size);
		$('.repay').load('/replypaging',{num:num,size:size}); 
		/* $('.morereply').remove(); */
	});
	
	$('.likethis').on('click',function(){
		$('.thisClass').removeClass("thisClass");
		$(this).addClass("thisClass");
		console.log($(this).children(".likenum").text());
		console.log($(this).attr('replyId'));
		var replyId=$(this).attr('replyId');
		$.ajax({
			type:'get',
			url:'/likethis',
			data:{replyId:replyId},
			success:function(date){
				console.log(date);
				$('.thisClass').children(".likenum").text(date);
				$(this).children(".likenum").val(date);
				$(this).children(".likenum").html(date);
				console.log($('.likethis').children(".likenum").text());
				console.log($(this).children(".likenum").val());
				console.log($(this).children(".likenum").html());
			},
			error:function(){
				alert("失败了");
			}
		})
	});
	$('.thisreply').on('click', function() {
		var replyId = $(this).attr('replyId');
		var module = $(this).attr('replyModule');
		var name = $(this).attr('replyName');
		$('.replyId').val(replyId);
		$('.replyModule').val(module);
		$('.replyName').val(name);
		console.log(typeof(name));
		if(typeof(name) != 'undefined' ){
			$("#comment").val("@"+name);
		}
		console.log(replyId);
		console.log(module);
		$("#myModal").modal("toggle");
	});
	$('#commentsave').on('click', function() {
		console.log($('.replyId').val());
		console.log($('.replyModule').val());
		console.log($("#comment").val());
		var size=${page.size};
		var replyId = $('.replyId').val();
		var module = $('.replyModule').val();
		var comment = $("#comment").val();
		$('.repay').load('/replyhandle', {
			replyId : replyId,
			module : module,
			comment : comment,
			size:size
		});
		var runing=setInterval('window.location.href=""',200); 
		 clearInterval(runing);
		
	});
	$('.toggle').on(
			'click',
			function() {
				if ($(this).children().hasClass('glyphicon-triangle-bottom')) {
					$(this).children('.glyphicon').removeClass(
							'glyphicon-triangle-bottom').addClass(
							"glyphicon-triangle-top");
				} else {
					$(this).children('.glyphicon').removeClass(
							'glyphicon-triangle-top').addClass(
							"glyphicon-triangle-bottom");
				}
			});
</script>