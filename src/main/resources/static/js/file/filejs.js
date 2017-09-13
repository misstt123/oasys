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

$(".file-box .file-check").click(function(){
	if($(this).parent(".file-one").hasClass("file-one-check")){
		$(this).parent(".file-one").removeClass("file-one-check");
	}else{
		$(this).parent(".file-one").addClass("file-one-check");
	}
});

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
	    }
	    if($(this).find(".file-img").hasClass("path")){
	    	var href = $(this).find(".path a").attr("href");
	    	$(".menu .open").attr("href",href);
	    	
	    }
		var oX = e.pageX;
		var oY = e.pageY;
//		console.log(oX);
//		console.log(oY);
		$(".menu").css("display","block");
		$(".menu").css("left",oX+"px");
		$(".menu").css("top",oY+"px");
	}
});
$(document).click(function(e){
	$(".menu").css("display","none");
});

