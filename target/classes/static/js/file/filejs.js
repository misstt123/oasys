/**
 * 文件展示 js
 */ 
$(".loadfiletype").on("mouseover mouseout",".file-one",function(event){
	 if (event.type == "mouseover") {
		// 鼠标悬浮
		$(this).addClass("file-one-houver");
	} else if (event.type == "mouseout") {
		// 鼠标离开
		$(this).removeClass("file-one-houver");
	}
});


/**
 * 选择文件 js
 * .file-box .file-check"
 */
$(".loadfiletype").on("click",".file-check",function(){
	console.log("ssss");
	if($(this).parent(".file-one").hasClass("file-one-check")){
		$(this).parent(".file-one").removeClass("file-one-check");
	}else{
		$(this).parent(".file-one").addClass("file-one-check");
	}
	changedeletehref();
	changesharehref();
});

/**
 * 全选文件JS
 */
$(".loadfiletype").on("click",".allcheck",function(){
	var fileone = $(".file-one");
	if($(this).hasClass("allchecked")){
		$(".file-one").each(function(){
			$(".file-one").removeClass("file-one-check");
		});
		$(this).removeClass("allchecked");
	}else{
		$(".file-one").each(function(){
			$(".file-one").addClass("file-one-check");
		});
		$(this).addClass("allchecked");
	}
	changedeletehref();
	changesharehref();
});

/**
 * 右键菜单JS
 * $(".file-box .file-one").mousedown(function(e){
 * 
 */
$(".loadfiletype").on("mousedown",".file-one",function(e){
	if(3 == e.which){
		console.log("111");
	    $(document).bind("contextmenu",function(e){
	        return false;
	    });
	    if(!$(this).hasClass("file-one-check")){
	    	$(this).addClass("file-one-check");
	    	$(this).siblings(".file-one").removeClass("file-one-check");
	    	changedeletehref();
	    	changesharehref();
	    }
	    if($(this).find(".file-img").hasClass("path")){
	    	var href = $(this).find(".path a").attr("href");
	    	$(".menu .open").attr("href",href);
	    	$(".menu .open").removeClass("disabled");
	    	$(".menu .rename").removeClass("disabled");
	    	$(".menu .downloadfile").addClass("disabled");
	    	$(".menu .doshare").addClass("disabled");
	    }else{
	    	$(".menu .open").addClass("disabled");
	    	$(".menu .rename").removeClass("disabled");
	    	$(".menu .doshare").removeClass("disabled");
	    	
	    	/**
	    	 *  给下载a链接添加 href 地址目标
	    	 */
	    	$(".menu .downloadfile").removeClass("disabled");
	    	var fileid = $(this).find(".filemessage").val();
	    	console.log(fileid);
	    	$(".menu .downloadfile").attr("href","downfile?fileid="+fileid);
	    }
	    
	    
	    /**
	     * 选择超过一个禁用右键菜单中的部分a链接
	     */
	    if($(".file-one-check").length>1){
	    	$(".menu .open").addClass("disabled");
	    	$(".menu .downloadfile").addClass("disabled");
	    	$(".menu .rename").addClass("disabled");
	    }
		var oX = e.pageX;
		var oY = e.pageY;

		$(".menu").css("display","block");
		$(".menu").css("left",oX+"px");
		$(".menu").css("top",oY+"px");
		
	}
});
$(document).click(function(e){
	$(".menu").css("display","none");
});

/**
 * 重命名
 * $(".menu .rename").click(function(){
 * $(".loadfiletype").on("click",".menurename",function(){
 */
$(".loadfiletype").on("click",".menurename",function(){
	console.log("重命名！~~");
	var checked =$(".loadfiletype .file-one.file-one-check");
	checked.find(".filename").addClass("diplaynone");
	checked.find(".rename").removeClass("diplaynone");
});
$(".loadfiletype").on("click",".cansalcreate",function(){
	console.log("2312");
	var checked =$(".loadfiletype .file-one.file-one-check");
	checked.find(".rename").addClass("diplaynone");
	checked.find(".filename").removeClass("diplaynone");
});

/**
 * 文件移动、复制文件使用模态框 JS
 */
/**
 * 这里是移动
 */
$(".menu .movefile").click(function(){
	console.log("进入移动模态框点击！~~");
	$("#thismodal").modal("toggle");
	$('#thismodal .modal-body').css('display', 'block');
	$("#thismodal .mc-title").html("移动到");
	$("#thismodal .morc").val(true);
	
	var checkfileids = new Array();
	var checkpathids = new Array();
	checkedpaths(checkpathids,checkfileids);
	$("#thismodal .mcfileids").val(checkfileids);
	$("#thismodal .mcpathids").val(checkpathids);
	
	$("#thismodal .pathidcompare").each(function(){
		console.log($(this).attr("pathId"));
		for(var i=0;i<checkpathids.length;i++){
			if($(this).attr("pathId") == checkpathids[i]){
				console.log("is com!~~~");
				$(this).addClass("diplaynone");
				return;
			}
		}
	});
});
/**
 * 这里是复制
 */
$(".menu .copyfile").click(function(){
	console.log("进入复制模态框点击！~~");
	$("#thismodal").modal("toggle");
	$('#thismodal .modal-body').css('display', 'block');
	$("#thismodal .mc-title").html("复制到");
	$("#thismodal .morc").val(false);
	
	var checkfileids = new Array();
	var checkpathids = new Array();
	checkedpaths(checkpathids,checkfileids);
	$("#thismodal .mcfileids").val(checkfileids);
	$("#thismodal .mcpathids").val(checkpathids);
	
	$("#thismodal .pathidcompare").each(function(){
		console.log($(this).attr("pathId"));
		for(var i=0;i<checkpathids.length;i++){
			if($(this).attr("pathId") == checkpathids[i]){
				console.log("is com!~~~");
				$(this).addClass("diplaynone");
				return;
			}
		}
	});
});
/**
 * 这里是取消移动按钮
 */
$("#thismodal .box-footer").on("click",".mcmodalcancle",function(){
	console.log("dianle quxiao");
	$("#thismodal .pathidcompare").removeClass("diplaynone");
	$("#thismodal .box-footer .mctoid").val($("#thismodal .box-footer .userrootpath").val());
});

/**
 * 创建文件夹
 */
$(".topcreatepath").on("click",function(){
	$(".creatpath").removeClass("diplaynone");
});
$(".creatpath ").on("click",".cansalcreate",function(){
	$(".creatpath").addClass("diplaynone");
});


/**
 * 得到已选择得文件夹 和文件
 * @param pathids
 * @param fileids
 * @returns
 */
function checkedpaths(pathids,fileids){
	var checkedpaths =$(".file-one.file-one-check");
	var i = 0;
	var j = 0;
	checkedpaths.each(function(){
		if($(this).find(".file-img").hasClass("path")){
			pathids[i] = $(this).find(".pathmessage").val();
			i += 1;
		}else{
			if(!$(this).hasClass("diplaynone")){
				fileids[j] = $(this).find(".filemessage").val();
				console.log($(this).find(".filemessage").val());
				j += 1;
			}
		}
	});
}

/**
 * 改变删除a得href值
 * @returns
 */
function changedeletehref(){
	var checkpathids = new Array();
	var checkfileids = new Array();
	checkedpaths(checkpathids,checkfileids);
	console.log("checkpathids:"+checkpathids);
	console.log("checkfileids:"+checkfileids);
	
	var href = $(".box-body .topdelete").attr("href");
	
	if(href!=undefined){
		href = href.split("&");
		console.log(href);
		newhref = href[0]+"&checkpathids="+checkpathids+"&checkfileids="+checkfileids;
		console.log(newhref);
		$(".box-body .topdelete").attr("href",newhref);
		$(".menu .delete").attr("href",newhref);
	}

}
/**
 * 改变分享得地址
 * @returns
 */
function changesharehref(){
	var checkpathids = new Array();
	var checkfileids = new Array();
	checkedpaths(checkpathids,checkfileids);
	console.log("checkfileids:"+checkfileids);
	
	var href = $(".menu .doshare").attr("href");
	var newhref;
	if(href!=undefined){
		//var href = "doshare?checkfileids="+checkfileids;
		href = href.split("&");
		newhref = href[0] + "&checkfileids="+checkfileids;
		$(".menu .doshare").attr("href",newhref);
	}
}
