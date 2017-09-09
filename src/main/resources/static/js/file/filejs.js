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