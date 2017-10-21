	<!--盒子身体-->
		<div class="box-body no-padding">
			<div style="padding: 5px;">
				<a class="btn btn-sm btn-default bac chec" href="##" title="全选/反选"><span
					class="glyphicon glyphicon-unchecked"></span></a>
				<div class="btn-group">
					<a class="btn btn-sm btn-default bac sdelete" title="删除">
						<span class="glyphicon glyphicon-trash"></span></a>
					<a class="btn btn-sm btn-default bac looked" title="标为已读">
						<span class="glyphicon glyphicon-eye-open"></span></a> 
					<a class="btn btn-sm btn-default bac star"  title="星标">
						<span class="glyphicon glyphicon-star"></span></a>
					<#if mess="垃圾箱">
						<a class="btn btn-sm btn-default bac reh"  title="恢复删除">
						<span class="glyphicon glyphicon-retweet"></span></a>
					<#else>
					</#if>
				</div>
				<a class="btn btn-sm btn-default bac" href="" title="刷新"><span
					class="glyphicon glyphicon-refresh"></span></a>
			</div>
			<div class="table-responsive">
				<table class="table table-hover table-striped">
					<tr>
						<th scope="col">选择</th>
						<th scope="col">&nbsp;</th>
						<th scope="col">类型</th>
						<th scope="col">收件人</th>
						<th scope="col">主题</th>
						<th scope="col">时间</th>
						<th scope="col">附件</th>
						<th scope="col">状态</th>
						<th scope="col">操作</th>
					</tr>
					<#if (maillist?size gte 0) >
					<#list maillist as mail>
					<tr>
						<td >
						<span class="labels"><label><input name="items" type="checkbox"><i>✓</i></label></span>
						</td>
						<#if mail.star==true>			
							<td class="em"><span class="glyphicon glyphicon-star"
								style="width: 25px;"></span></td>
							<#else>
							<td class="em"><span class="glyphicon glyphicon-star-empty"
								style="width: 25px;"></span></td>
						</#if>
						<#if mail.typename=="公告">
						<td><span style="color:red;">${(mail.typename)!''}</span></td>
						<#else>
						<td><span>${(mail.typename)!''}</span></td>
						</#if>
						<td><span>${(mail.reciver)!''}</span></td>
						<#if mail.read==true>
						<td><span>${(mail.title)!''}</span></td>
						<#else>
						<td><span><strong class="read">${(mail.title)!''}</strong></span></td>
						</#if>
						<td><span>${(mail.time)!''}</span></td>
						<#if mail.fileid??>
						<td><span class="glyphicon glyphicon-paperclip"></span></td>
						<#else>
						<td><span></span></td>
						</#if>
						<td>
							<div class="label ${mail.statuscolor}">${(mail.statusname)!''}</div>
						</td>
						<td class="mailid" style="display:none;"><span>${mail.mailid}</span></td>
						<td><a href="##" class="label xiugai lab"><span
								class="glyphicon glyphicon-search"></span> 查看</a>
							<#if mess=="草稿箱">
							<a href="##" class="label xinzeng edit"><span
								class="glyphicon glyphicon-pencil"></span> 编辑</a>
							</#if>	
						</td>
					</tr>
					</#list>
					</#if>
				</table>
			</div>
		</div>
		<!--盒子尾-->
		<#include "/common/paging.ftl">
<script>
	$(function(){

		 $(".sdelete").click(function(){
			 if(confirm("确定删除么？")){
			 var  arry=new Array();
			 var title=$(".titles").text();
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    				//获取被选中了的邮件id
					 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
	    				arry.push($mailid);
	    			}
			 })
			 if(arry.length==0){
				 return;
			 }
			 var values=arry.toString();
			 $(".thistable").load("alldelete",{ids:values,title:title}); 
			 }
		 });
		 //批量查看
		 $(".looked").click(function(){
			
			 var  arry=new Array();
			 var title=$(".titles").text();
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    				//获取被选中了的邮件id
					 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
	    				arry.push($mailid);
	    				 var $mail=$(this).parents("td").siblings().find(".read").text();
	    				 if($mail!=""){
	    					 parent.changeemail();
	    				 }
	    			}
			 })
			 if(arry.length==0||title=="发件箱"||title=="草稿箱"){
				 return;
			 }
			 var values=arry.toString();
			 $(".thistable").load("watch",{ids:values,title:title});
			 
		 });
		 //批量标星
		 $(".star").click(function(){
			 
			 var  arry=new Array();
			 var title=$(".titles").text();
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    				//获取被选中了的邮件id
					 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
	    				arry.push($mailid);
	    			}
			 })
			 if(arry.length==0){
				 return;
			 }
			 var values=arry.toString();
			 $(".thistable").load("star",{ids:values,title:title});
			 
		 });
		 //查看
		 $('.lab').on('click',function(){
			 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
			 var title=$(".titles").text();
			 var $mail=$(this).parents("td").siblings().find(".read").text();
			 if($mail!=""){
				 parent.changeemail();
			 }
			
				$('.set').load('smail',{id:$mailid,title:title});
				/* parent.changeemail(); */
			});
		 //重新编辑
		 $('.edit').on('click',function(){
			 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
				$('.set').load('wmail',{id:$mailid});
			});
		 
		 //批量恢复删除
		 $('.reh').on('click',function(){
			 var  arry=new Array();
			 var title=$(".titles").text();
			 $("[name=items]:checkbox").each(function(){
				 if(this.checked){
	    				//获取被选中了的邮件id
					 var $mailid=$(this).parents("td").siblings(".mailid").children("span").text();
	    				arry.push($mailid);
	    			}
			 })
			 if(arry.length==0){
				 return;
			 }
			 var values=arry.toString();
				$('.thistable').load('refresh',{ids:values,title:title});
			});
		 
	});
</script>