///**
// *  ajax
// */
// $(".box-body").on("click", ".path", function(){
//	 var pathid = $(this).siblings(".pathmessage").val();
//	 $.post("pathin",{pathid:pathid},function(data){
//		 $(".boxcontain").html("");
//		 if(data){
//			 if(data[1]){
//				 $(data[1]).each(function(){
//					 var newEl = $(".modal .file-one").clone();
//					 newEl.find(".file-name>a").text(this.pathName);
//					 newEl.find(".file-name").addClass("path");
//					 newEl.find(".file-img").addClass("path");
//					 newEl.find(".pathmessage").val(this.id);
//					 newEl.removeClass("diplaynone");
//					 newEl.appendTo(".boxcontain");
//				 });
//			 }
//			 if(data[2]){
//				 $(data[2]).each(function(){
//					 var newEl = $(".modal .file-one").clone();
//					 newEl.find(".file-name>a").text(this.fileName);
//					 newEl.find(".filemessage").val(this.fileId);
//					 if(this.fileShuffix == "zip"){
//						 newEl.find(".file-img img").attr("src","images/fileimg/ZIP.png");
//					 }else if(this.fileShuffix == "mp4" ||this.fileShuffix == "rmvb"){
//						 newEl.find(".file-img img").attr("src","images/fileimg/Video.png");
//					 }else if(this.fileShuffix == "mp3"){
//						 newEl.find(".file-img img").attr("src","images/fileimg/Music.png");
//					 }
//					 else if(this.fileShuffix == "text" || this.fileShuffix == "word"){
//						 newEl.find(".file-img img").attr("src","images/fileimg/Text.png");
//					 }else{
//						 newEl.find(".file-img img").attr("src","");
//					 } 
//					 newEl.removeClass("diplaynone");
//					 newEl.appendTo(".boxcontain");
//				 }); 
//			 }
//		 }
//	 });  
// });

/**
 * 复制移动选择目标文件文件夹并ajax加载选择文件加下的文件夹
 */
$("#thismodal .box-body").on("click",".openpath",function(){
	
	var mctoid = $(this).find(".mctopathid").val();
	
	var mcpathids = $("#thismodal .box-footer .mcpathids").val();
	
	$(".box-footer .mctoid").val(mctoid);
	
	if($(this).hasClass("modalajax")){
		console.log("modalajax");
		var $ul = $(this).parents(".box-header").next();
		$(this).parents(".box-header").find(".jiajian").addClass("glyphicon-minus").removeClass("glyphicon-plus");
		$ul.css("display","block");
		
		$ul.load("mcloadpath",{mctoid:mctoid,mcpathids:mcpathids});
	}else{
		console.log("box-header");
	}
});

$(".filetypedocument").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"document"});
});
$(".filetypeimage").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"picture"});
});
$(".filetypemusic").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"music"});
});
$(".filetypevedio").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"video"});
});
$(".filetypeyasuo").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"yasuo"});
});
$(".filetypetrash").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"trash"});
});
$(".filetypeshare").click(function(){
	$(".loadfiletype").load("filetypeload",{type:"share"});
});

/**
 * 搜索js
 */
$(".loadfiletype").on("click",".findfileandpathgo",function(){
	var findfileandpath = $(".loadfiletype .box-header .findfileandpath").val();
	var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
	alert(findfileandpath+loadtype);
	$(".loadfiletype").load("findfileandpath",{type:loadtype,findfileandpath:findfileandpath});
});

/**
 * 删除load js
 */
$(".loadfiletype").on("click",".loaddelete",function(){
		var checkpathids = new Array();
		var checkfileids = new Array();
		checkedpaths2(checkpathids,checkfileids);
		
		var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
		
		console.log(checkpathids);
		console.log(checkfileids);
		console.log(loadtype);
		
		$(".loadfiletype").load("fileloaddeletefile",{type:loadtype,'checkpathids[]':checkpathids,'checkfileids[]':checkfileids});
	
});
$(".loadfiletype").on("click",".loadokshare",function(){
	var checkpathids = new Array();
	var checkfileids = new Array();
	checkedpaths2(checkpathids,checkfileids);
	var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
	
	$(".loadfiletype").load("fileloadshare",{type:loadtype,'checkfileids[]':checkfileids});
	
});
/**
 * 回收战load js
 */
$(".loadfiletype").on("click",".loadtrash",function(){
	var checkpathids = new Array();
	var checkfileids = new Array();
	checkedpaths2(checkpathids,checkfileids);
	
	var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
	
	$(".loadfiletype").load("fileloadtrashfile",{type:loadtype,'checkpathids[]':checkpathids,'checkfileids[]':checkfileids});
});

$(".loadfiletype").on("click",".filereturnback",function(){
	var checkpathids = new Array();
	var checkfileids = new Array();
	checkedpaths2(checkpathids,checkfileids);
	console.log("filereturnback");
	var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
	
	$(".loadfiletype").load("filereturnback",{type:loadtype,'checkpathids[]':checkpathids,'checkfileids[]':checkfileids});
	
});


/**
 * 重命名load js
 */
$(".loadfiletype").on("click",".okfilerename",function(){
	var checkedfile = $(this).parents(".file-one.file-one-check");
	var loadtype = $(".loadfiletype .box-header .loadfilestype").val();
	
	var renamefp = checkedfile.find(".renamefp").val();
	var creatpathinput = checkedfile.find(".creatpathinput").val();
	var isfile = checkedfile.find(".isfile").val();
	var pathid = checkedfile.find(".pathid").val();
	
	console.log(renamefp);
	console.log(creatpathinput);
	console.log(isfile);
	console.log(pathid);
	
	$(".loadfiletype").load("fileloadrename",{type:loadtype,renamefp:renamefp,creatpathinput:creatpathinput,isfile:isfile,pathid:pathid})
});


/**
 * 得到选择的 文件和文件夹
 * @param pathids
 * @param fileids
 * @returns
 */
function checkedpaths2(pathids,fileids){
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