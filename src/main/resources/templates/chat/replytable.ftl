<#if replyList?? &&replyList?size gt 0>
	<table class="table" style="margin-bottm: 0px;">
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
								class="raply-name">${(reply.user.userName)!''}</a> 
								<#if manage??>
								<a replyId="${reply.replyId}" replyModule="reply" href="javascript:void(0);" class="deletethis pull-right" style="font-size: 12px;"> 
								<span style="font-size: 16px;" >&times;</span>
								</a>
								</#if>
							</span> <span class="right-time">${reply.replayTime?string('yyyy-MM-dd HH:mm:ss')}</span>
							<p style="padding-top: 10px;">${reply.content}</p>
							<div class="replyrefresh">
								<#include "replylike.ftl"/>
							</div>
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
														<#if manage??>
														<li><a href="javascript:void(0);" class="label shanchu deletethis" replyId="${comment.commentId}" replyModule="comment"><span
																class="glyphicon glyphicon-remove"></span>删除</a>
														</li>
														</#if>
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
					<#else> <span class="nomore">已经没有更多了~~~</span></#if>
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
<#include "/common/comment.ftl"/> <!--class nothing 完毕-->
<script>
$('.chat-box').on('click','.likethis',function(){
	$('.thisClass').removeClass("thisClass");
	$('.replyrefresh').removeClass("replychange");
	$(this).addClass("thisClass");
	$(this).parents('.replyrefresh').addClass('replychange');
	var replyId=$(this).attr('replyId');
	var module=$(this).attr('module');
	var size=${page.size};
	console.log("rightNum:"+rightNum);
	console.log(replyId);
	console.log(module);
	  /*$.ajax({
		type:'get',
		url:'/likeuserload',
		data:{module:module,replyId:replyId,size:size},
		success:function(date){
			console.log(date);
			$('.discusschange').html(date);
			//$('.thisClass').children(".likenum").text(date);
		},
		error:function(){
			alert("失败了");
		}
	}) */
	if(module=="discuss"){
		console.log("说明是讨论区，进行load方法了；");
		$('.discusschange').load('/likeuserload',{module:module,replyId:replyId,size:size});
	}else if(module=="reply"){
		console.log("说明是回复区，准备进行load方法");
		var rightNum=$(this).parent().siblings(".pull-right").children(".rightNum").text();
		$('.replychange').load('/likeuserload',{module:module,replyId:replyId,size:size,rightNum:rightNum});
	}else{
		console.log("参数错误");
	}
	
});

$('.addmore').on('click',function(){
	var num=${discuss.discussId};
	var page=${page.number};
	var size=${page.size+5};
	console.log(size);
	if(${page.size}<=${page.totalElements}){
		$('.repay').load('/replypaging',{num:num,size:size}); 
	}
	
	/* $('.morereply').remove(); */
});


$('#commentsave').on('click',function() {
	console.log($('.replyId').val());
	console.log($('.replyModule').val());
	console.log($("#comment").val());
	var size=${page.size};
	console.log("size:"+size);
	var replyId = $('.replyId').val();
	var module = $('.replyModule').val();
	var comment = $("#comment").val();
	$('.repay').load('/replyhandle?size='+size, {
		replyId : replyId,
		module : module,
		comment : comment,
	});
	$("#comment").val("");
});
$('.toggle').on('click',function() {
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