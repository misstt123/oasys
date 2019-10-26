<#include "/common/commoncss.ftl"/>
<link rel="stylesheet" type="text/css" href="css/common/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/common/checkbox.css" />
<link rel="stylesheet" type="text/css" href="css/common/tanchuang.css" />
<style type="text/css">
.icon {
	width: 1em;
	height: 1em;
	vertical-align: -0.15em;
	fill: currentColor;
	overflow: hidden;
}

a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.box .nav-stacked>li {
	border-bottom: 1px solid #f4f4f4;
	margin: 0;
}

.nav-stacked>li>a {
	border-radius: 0;
	border-top: 0;
	border-left: 3px solid transparent;
	color: #444;
}

li.activee>a {
	border-left-color: #3c8dbc;
}

.des {
	border: none;
	color: #9e9e9e;
}
#thisul li a{
	padding:10px;
}
.thisbox-header:HOVER{
	background-color: #eee;
	color:#337ab7;
}
#thispills:HOVER{
	cursor: pointer;
}
#thispills li{
	border:1px solid #ccc;
	border-left: none;
}
#thispills li a:HOVER{
	background-color: #337ab7;
	color:#fff;
}
#thispills li a{
	padding:8px;
}
.ulfather .collapsed{
	cursor: pointer;
}
.nav>li>a {
	padding:15px;
}
</style>
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">通讯录
		<a href="" class="label xinzeng" style="padding: 5px;margin-left:5px;">
						<span class="glyphicon glyphicon-refresh"></span> 刷新
					</a>
		</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">通讯录</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-3">
		<a class="btn btn-primary addaddress" href="javascript:void(0);"
			style="width: 100%; margin-bottom: 20px;"><span
			class="glyphicon glyphicon-edit"></span> 新建联系人</a>
		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">通讯录</h3>
				<span class="btn btn-default pull-right btn-xs des mm"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked mm" id="navpills">
				<li class="activee notfather">
					<a href="##"> <span	class="glyphicon glyphicon-user"> 内部通讯录</span>
					</a>
				</li>
				<li class="ulfather">
					<a href="#"><span class="glyphicon glyphicon-user"> 外部通讯录</span> 
						<i class="glyphicon pull-right glyphicon-menu-left collapsed" href="#thisul"  data-toggle="collapse" ></i>
					</a>
				</li>
				<ul id="thisul" class="nav nav-pills nav-stacked panel-collapse collapse">
					<#include "addtypename.ftl"/>
				</ul>
			</ul>
		</div>

		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">分类</h3>
			</div>
			<div class="box-body">
				<div class="input-group">
					<input type="text" class="form-control addtypename" name="" value="" placeholder="新增外部分类" />
					<div class="input-group-btn">
						<input type="submit" class="btn btn-primary addtype" name="" id="" style="padding:6px;" value="新增" />
					</div>
				</div>
			</div>
		</div>

		<div class="bgc-w box box-solid">
			<div class="box-header">
				<h3 class="box-title">共享消息</h3>
				<span class="btn btn-default pull-right btn-xs des mm"> <i
					class="glyphicon glyphicon-minus"></i>
				</span>
			</div>
			<ul class="nav nav-pills nav-stacked mm">
				<li class="activee">
					<a href="javascript:void(0);" class="meshareother"> <span class="glyphicon glyphicon-new-window"> 我共享的</span>
					</a>
				</li>
				<li>
					<a href="javascript:void(0);" class="sharewithme">
					<span class="glyphicon glyphicon-log-in"> 共享与我</span> 
					<#if count gt 0>
						<span class="badge pull-right showcount" style="background-color: #286090;">${count}</span>
					</#if>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="col-md-9">
		<!--id="container"-->
		<ul class="nav nav-pills nav-justified" id="thispills" style="margin-bottom: 14px;">
		  <li role="presentation" class="active" style="border-left:1px solid #ccc;border-radius: 5px 0px 0px 5px;"><a href="javascript:void(0);">ALL</a></li>
		  <li role="presentation"><a href="javascript:void(0);">A</a></li>
		  <li role="presentation"><a href="javascript:void(0);">B</a></li>
		  <li role="presentation"><a href="javascript:void(0);">C</a></li>
		  <li role="presentation"><a href="javascript:void(0);">D</a></li>
		  <li role="presentation"><a href="javascript:void(0);">E</a></li>
		  <li role="presentation"><a href="javascript:void(0);">F</a></li>
		  <li role="presentation"><a href="javascript:void(0);">G</a></li>
		  <li role="presentation"><a href="javascript:void(0);">H</a></li>
		  <li role="presentation"><a href="javascript:void(0);">I</a></li>
		  <li role="presentation"><a href="javascript:void(0);">J</a></li>
		  <li role="presentation"><a href="javascript:void(0);">K</a></li>
		  <li role="presentation"><a href="javascript:void(0);">L</a></li>
		  <li role="presentation"><a href="javascript:void(0);">M</a></li>
		  <li role="presentation"><a href="javascript:void(0);">N</a></li>
		  <li role="presentation"><a href="javascript:void(0);">O</a></li>
		  <li role="presentation"><a href="javascript:void(0);">P</a></li>
		  <li role="presentation"><a href="javascript:void(0);">Q</a></li>
		  <li role="presentation"><a href="javascript:void(0);">R</a></li>
		  <li role="presentation"><a href="javascript:void(0);">S</a></li>
		  <li role="presentation"><a href="javascript:void(0);">T</a></li>
		  <li role="presentation"><a href="javascript:void(0);">U</a></li>
		  <li role="presentation"><a href="javascript:void(0);">V</a></li>
		  <li role="presentation"><a href="javascript:void(0);">W</a></li>
		  <li role="presentation"><a href="javascript:void(0);">X</a></li>
		  <li role="presentation"><a href="javascript:void(0);">Y</a></li>
		  <li role="presentation" style="border-radius: 0px 5px 5px 0px;"><a href="javascript:void(0);">Z</a></li>
		</ul>
		<div class="bgc-w box box-primary thistable">
			<#include "inaddrss.ftl"/>
		</div>
		<input type="hidden" class="sharehidden"/>
	</div>
</div>
<#include "/common/modalTip.ftl"/>
<#include "changetypename.ftl"/> 
<script src="js/common/iconfont.js"></script>
<script type="text/javascript">
		$(function() {
			/* 移动分类的保存事件 */
			$('#thischangetypesubmit').on('click',function(){
				var did=$("#thischangetype").attr('thisdid');
				var catalog=$('#thisselectvalue').val();
				console.log("did:"+did)
				console.log("fdsfsdfdaffd");
				$.ajax({
					url:'/changethistype',
					type:'post',
					async:false,
					cache:false,
					data:{'did':did,'catalog':catalog},
					datatype:'json',
					success:function(data){
						console.log("执行成功了么?");
						console.log(data);
						 if(data){
							var alph=$('#thispills .active a').text().trim();	//获取字母表中的值
							$('.thistable').load('outaddresspaging',{alph:alph});
							modalShow(1);	
						}	 
					}
				})
				
			})
			
			/* 点击移动的事件 */
			$('.thistable').on('click','.thismove',function(){
				//设置id
				$("#thischangetype").attr('thisdid',$(this).attr("thisdid"));				
				//设置名字
				$("#thischangetype").attr('title',$(this).attr("thisuserName"));
				console.log($("#thischangetype").attr('title'));
				$("#thischangetypename").text($(this).attr("thisuserName"));
				//设置电话号码
				$("#thischangetype").attr('thistel',$(this).attr("thisphoneNumber"));
				$("#thischangetypetel").text($(this).attr("thisphoneNumber"));
				//设置头像
				$("#thischangetypeimg").attr("src",$(this).attr("thisimgpath"));
				//设置性别
				$("#thischangetype").attr('thissex',$(this).attr("thissex"));
				//设置email
				$("#thischangetype").attr('thisemail',$(this).attr("thisemail"));
				//设置公司
				$("#thischangetype").attr('thiscompany',$(this).attr("thiscompany"));
				
				$('#changetypenameModal').modal("toggle");
			})
			
			/* 外部通讯录分会的点击事件 */
			$('.thistable').on('click','.returnoutaddress',function(){
				var alph=$('#thispills .active a').text().trim();	//获取字母表中的值
				var outtype=$('#thisul .activee').text().trim();	//获取外部通讯录的分类名称
				$('.thistable').load('outaddresspaging',{alph:alph,outtype:outtype});
			})
			/*内部通讯录返回点击事件  */
			$('.thistable').on('click','.returninaddress',function(){
				var alph=$('#thispills .active a').text().trim();	//获取字母表中的值
				$('.thistable').load('inaddresspaging',{alph:alph});
			})
			/* 查看外部联系人详情 */
			$('.thistable').on('click','.outlookthis',function(){
				var director=$(this).attr('director');
				$('.thistable').load('outmessshow',{director:director});
			})
			/* 查看内部联系人详情 */
			$('.thistable').on('click','.inlookthis',function(){
				var userId=$(this).attr('userId');
				console.log(userId);
				$('.thistable').load('inmessshow',{userId:userId});
			})
			/* 我的分享的消息记录 */
			$('.meshareother').on('click',function(){
				console.log("我的分享点击了么？");
				$('.thistable').load('mesharemess');
			})
			/* 分享信息按钮的点击事件 */
			$('.sharewithme').on('click',function(){
				$('.thistable').load('sharemess');
			})
			/*模态框关闭的按钮和确定按钮；都要将模态框里面的内容替换成分享时的内容*/
			$('.thistable').on('click','#shareModal .closemodal',function(){
				$("#shareModal .modal-1").load("modalshare");
			})
			
			/* 模态框中的点击 */
			$('.thistable').on('click','.thisshareuser',function(){
				console.log("分享点击了么？");
				var sharedirector=$('.sharehidden').val();
				console.log("分享的通讯录:"+sharedirector);
				var length=$('#shareModal .table-r tbody input[type="checkbox"]:checked').length;
				if(length<1){
					console.log("长度小于1");
					$('#shareModal .alert-dismissable').css("display","block");
					$('.error-mess').text("没有选择要分享的人");
					return false;
				}
				var directors=new Array();
				$('#shareModal .table-r tbody input[type="checkbox"]:checked').each(function(index){
					console.log("下标："+index);
					console.log("用户："+$(this).attr("userId"));
					directors[index]=$(this).attr("userId");
				})
				console.log(directors);
				/*传值给后台：1、要分享的通讯录id；2、要接收的userid的数组；  */
				$("#shareModal .modal-1").load("shareother",{'directors[]':directors,sharedirector:sharedirector});
			})
			
			$('.thistable').on('click','.thisclose', function() {
				$(this).parent().css('display', 'none');
			});
			/*分享。。。*/
			$('.thistable').on('click','.thisshare',function(){
				var sharedirector=$(this).attr("directorId");
				console.log("分享的通讯录:"+sharedirector);
				$('.sharehidden').val(sharedirector);
				$('#shareModal').modal("toggle");
				$("#shareModal .modal-1").load("modalshare");
			})
			
			/* 用户删除某个联系人 */
			$('.thistable').on('click','.thisdelete',function(){
				var did=$(this).attr('did');
				console.log(did);
				if(confirm("确定删除吗？")){
					$('.thistable').load('deletedirector',{did:did},function(){
						modalShow(1);
					});
				}
			})
			
			/* 新建外部联系人分类 */
			$('.addtype').on('click',function(){
				var typename=$('.addtypename').val().trim();
				console.log(typename);
				var count=1;
				$('#thisul li a').each(function(index){
					if($(this).text().trim()==typename){
						console.log("分类名字已存在");
						count=0;
						$('.modal-error-mess').text("该分类名字已经存在,请重新命名!");
						modalShow(0);
						return false;
					}
				})
				if(count==0){
					console.log("分类名字已存在————————不会往下执行了");
					return false;
				}
				console.log("会继续往下面走，执行ajax");
				$('#thisul').load("addtypename",{typename:typename},function(response,status,xhr){
					modalShow(1);
					$('.addtypename').val("");
					/* console.log("听说这是执行成功会返回的的？？？");
					console.log("response:"+response);
					console.log("status:"+status);
					console.log("xhr:"+xhr); */
				});
			})
			
			/* 新建联系人 */
			$('.addaddress').on('click',function(){
				$('.thistable').load('addaddress');
			})
			/* 修改外部联系人 */
			$('.thistable').on('click','.thischange',function(){
				var did=$(this).attr('did');
				console.log(did);
				$('.thistable').load('addaddress',{did:did});
			})
			/* 刷新按钮 */
			$('.thistable').on('click','.thisrefresh',function(){
				var alph=$('#thispills .active a').text().trim();	//获取字母表中的值
				var baseKey=$('.baseKey').val().trim();				//获取搜索关键字
				var type=$('#navpills .activee').text().trim();		//获取内部或外部的类型值
				var outtype=$('#thisul .activee').text().trim();	//获取外部通讯录的分类名称
				if(type=="内部通讯录"){
					$('.thistable').load('inaddresspaging',{alph:alph});
				}else{
					/* 就是进入外部通讯录了， */
					$('.thistable').load('outaddresspaging',{alph:alph,outtype:outtype});
				}
			})
			
			/* 查找关键字事件， */
			$('.thistable').on('click','.baseKeySumbit',function(){
				var alph=$('#thispills .active a').text().trim();	//获取字母表中的值
				var baseKey=$('.baseKey').val().trim();				//获取搜索关键字
				var type=$('#navpills .activee').text().trim();		//获取内部或外部的类型值
				var outtype=$('#thisul .activee').text().trim();	//获取外部通讯录的分类名称
				if(type=="内部通讯录"){
					$('.thistable').load('inaddresspaging',{alph:alph,baseKey:baseKey});
				}else{
					/* 就是进入外部通讯录了， */
					
					$('.thistable').load('outaddresspaging',{alph:alph,outtype:outtype,baseKey:baseKey});
				}
			})
			
			/*字母表的字母点击事件  */
			$('#thispills a').on('click',function(){
				/* 这里获取到的是上一次active的那一个， */
				console.log("外部通讯录值："+$('#thisul .activee').text().trim());
				console.log("关键字："+$('.baseKey').val());
				var alph=$(this).text().trim();
				var type=$('#navpills .activee').text().trim();
				var baseKey=$('.baseKey').val().trim();
				var outtype=$('#thisul .activee').text().trim();
				if(type=="内部通讯录"){
					console.log("是内部通讯录");
					$('.thistable').load('inaddresspaging',{alph:alph,baseKey:baseKey});
				}else{
					/*还要进行判断，是否为空；不为空说明是在外部的分类里面进行；为空说明查找所有的外部通讯录  */
					console.log("是外部通讯录");
					$('.thistable').load('outaddresspaging',{alph:alph,outtype:outtype,baseKey:baseKey});
				}
			})
			
			/* 外部通讯录的点击事件，只需要知道字母表的值就ok了*/
			$('.ulfather').on('click',function(){
				var alph=$('#thispills .active a').text().trim();
				$('.thistable').load('outaddresspaging',{alph:alph});			
			})
			/* 内部通讯录的点击事件，只需要知道字母表的值就ok了 */
			$('.notfather').on('click',function(){
				var alph=$('#thispills .active a').text().trim();
				$('.thistable').load('inaddresspaging',{alph:alph});			
			})
			/* 外部的分类点击事件 */
			$('#thisul').on('click','li a',function(){
				var alph=$('#thispills .active a').text().trim();
				var outtype=$(this).text().trim();
				console.log(outtype);
				$('.thistable').load('outaddresspaging',{alph:alph,outtype:outtype});	
			})
			/* 外部通讯录分类的编辑与删除 */
			$('#thisul').on('click','.thisxiugai',function(){
				var typename=$(this).parent().parent('a').text().trim();
				$('#typenameModal').modal("toggle");
				$('#typenameModal .form-control').val(typename);
				$('#typenameModal #commentid').val(typename);
			})
			/* 分类名称的删除 */
			$('#thisul').on('click','.thisshanchu',function(){
				if(confirm("确定删除该分类吗？该分类将被移到外部通讯录哟")){
					var typename=$(this).parent().parent('a').text().trim();
					$('#thisul').load('addtypename',{typename:'',oldtypename:typename});
					$('.thistable').load('deletetypename',{typename:typename});
				}
				
				
			})
			/* 修改分类的保存按钮 */
			$('#commentsave').on('click',function(){
				var typename=$('#typenameModal .form-control').val();
				var oldtypename=$('#typenameModal #commentid').val();
				console.log("typename:"+typename);
				console.log("oldtypename:"+oldtypename);
				$('.thistable').load('changetypename',{typename:typename,oldtypename:oldtypename});
				$('#thisul').load("addtypename",{typename:typename,oldtypename:oldtypename});
			})
			
			/* 外部的分类的鼠标移入事件，显示修改和删除的图标 */
			$('#thisul').on('mouseover','li a',function(){
				$(this).children('.pull-right').css("display","block");
			})
			$('#thisul').on('mouseout','li a',function(){
				$(this).children('.pull-right').css("display","none");
			})
			
			/* 外部通讯录的点击事件，去掉内部通讯录的active，给外部通讯录加active */
			$('#thisul li').on('click',function(){
				$('#navpills li').removeClass('activee');
				$('.ulfather').addClass('activee');
			})
			$('.ulfather .collapsed').on('click',function(){
				if($(this).hasClass('glyphicon-menu-down')){
					$(this).removeClass('glyphicon-menu-down').addClass('glyphicon glyphicon-menu-left');
				}else{
					$(this).removeClass('glyphicon-menu-left').addClass('glyphicon glyphicon-menu-down');
				}
			})
			
			/* 内部通讯录的点击事件，去掉外部通讯录的active并同时去掉外部通讯录分类的active */
			$('.notfather').on('click',function(){
				$('#thisul li').removeClass('activee');
			})
			
			$('.ulfather').on('click',function(){
				$('#thisul li').removeClass('activee');
			})
			
			/* 字母表的点击事件，将用来处理load方法  */
			$("#thispills li").on('click',function(){
				$("#thispills li").removeClass('active');
				$(this).addClass('active');
			})
			/*
			 * 收縮
			 */
			$(".des").click(function() {

				var $this = $(this).children();

				var $ul = $(this).parents(".box-header").next();

				if($(this).hasClass("mm")) {
					if($this.hasClass("glyphicon-minus")) {
						$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
					} else {

						$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");
					}
					$ul.slideToggle(1000);
				} else {
					if($this.hasClass("glyphicon-minus")) {
						$this.removeClass("glyphicon-minus").addClass("glyphicon-plus");
					} else {

						$this.removeClass("glyphicon-plus").addClass("glyphicon-minus");
					}
					$ul.slideToggle(1000);
				}
			});

			$(".nav.mm").on("click", "li", function() {
				$(this).parent().children(".activee").removeClass("activee");
				$(this).addClass("activee");
			});
			
			$("[name=items]:checkbox").click(function(){
           		var flag=true;
           		
           		$("[name=items]:checkbox").each(function(){
           			if(!this.checked){
           				flag=false;
           			}
           		});
           		if(flag){
           			    $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
           		}else{
           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
           		}
           		if ($(this).prop('checked')) {
           			 $(this).attr("checked","checked");
           		} else {
           			$(this).removeAttr("checked");
           		}
           
           	});
           	
           	$(".chec").click(function(e){
           		e.preventDefault();
           		var $this=$(".chec span");
           		if($this.hasClass("glyphicon-unchecked")){
           			 $(".chec span").removeClass("glyphicon-unchecked").addClass("glyphicon-stop");
           		}else{
           			$(".chec span").removeClass("glyphicon-stop").addClass("glyphicon-unchecked");
           		}
           		$("[name=items]:checkbox").each(function(){
           			
           			if($this.hasClass("glyphicon-stop")){
           				/*$(this).prop("checked","checked");*/
           				$(this).prop("checked",!$(this).attr("checked"));
           			}else{
           				$(this).removeAttr("checked");
           			}
           		});
           	});
		});
	</script>