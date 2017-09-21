/**
 * 文件展示 js
 */ 
$(".file-box .file-one").hover(function(){
	//console.log("hover!~");
	$(this).addClass("file-one-houver");
},function(){
	//console.log("no hover");
	$(this).removeClass("file-one-houver");
});

/**
 * 选择文件 js
 */
$(".file-box .file-check").click(function(){
	if($(this).parent(".file-one").hasClass("file-one-check")){
		$(this).parent(".file-one").removeClass("file-one-check");
	}else{
		$(this).parent(".file-one").addClass("file-one-check");
	}
	changedeletehref();
});

/**
 * 全选文件JS
 */
$(".allcheck").click(function(){
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
});

/**
 * 右键菜单JS
 */
$(".file-box .file-one").mousedown(function(e){
	if(3 == e.which){
	    $(document).bind("contextmenu",function(e){
	        return false;
	    });
	    if(!$(this).hasClass("file-one-check")){
	    	$(this).addClass("file-one-check");
	    	$(this).siblings(".file-one").removeClass("file-one-check");
	    	changedeletehref();
	    }
	    if($(this).find(".file-img").hasClass("path")){
	    	var href = $(this).find(".path a").attr("href");
	    	$(".menu .open").attr("href",href);
	    	$(".menu .open").removeClass("disabled");
	    	$(".menu .rename").removeClass("disabled");
	    	$(".menu .downloadfile").addClass("disabled");
	    }else{
	    	$(".menu .open").addClass("disabled");
	    	$(".menu .rename").removeClass("disabled");
	    	
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
 * 文件移动、复制文件使用模态框 JS
 */
$(".menu .movefile").click(function(){
	console.log("进入模态框点击！~~");
	$("#thismodal").modal("toggle");
	$('#thismodal .modal-body').css('display', 'block');
});


/**
 * 创建文件夹
 */
$(".topcreatepath").on("click",function(){
	$(".creatpath").removeClass("diplaynone");
});
$(".creatpath .cansalcreate").on("click",function(){
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
			console.log("haspath!!~~");
			pathids[i] = $(this).find(".pathmessage").val();
			i += 1;
		}else{
			console.log("nopath!!~~");
			fileids[j] = $(this).find(".filemessage").val();
			console.log($(this).find(".filemessage").val());
			j += 1;
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
	
	var href = $(".box-body .topdelete").attr("href").split("&");
	console.log(href);
	newhref = href[0]+"&checkpathids="+checkpathids+"&checkfileids="+checkfileids;
	console.log(newhref);
	$(".box-body .topdelete").attr("href",newhref);
	$(".menu .delete").attr("href",newhref);
}
