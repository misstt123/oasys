/**
 *  ajax
 */
 $(".box-body").on("click", ".path", function(){
	 var pathid = $(this).siblings(".pathmessage").val();
	 $.post("pathin",{pathid:pathid},function(data){
		 $(".boxcontain").html("");
		 if(data){
			 if(data[1]){
				 $(data[1]).each(function(){
					 var newEl = $(".modal .file-one").clone();
					 newEl.find(".file-name>a").text(this.pathName);
					 newEl.find(".file-name").addClass("path");
					 newEl.find(".file-img").addClass("path");
					 newEl.find(".pathmessage").val(this.id);
					 newEl.removeClass("diplaynone");
					 newEl.appendTo(".boxcontain");
				 });
			 }
			 if(data[2]){
				 $(data[2]).each(function(){
					 var newEl = $(".modal .file-one").clone();
					 newEl.find(".file-name>a").text(this.fileName);
					 newEl.find(".filemessage").val(this.fileId);
					 if(this.fileShuffix == "zip"){
						 newEl.find(".file-img img").attr("src","images/fileimg/ZIP.png");
					 }else if(this.fileShuffix == "mp4" ||this.fileShuffix == "rmvb"){
						 newEl.find(".file-img img").attr("src","images/fileimg/Video.png");
					 }else if(this.fileShuffix == "mp3"){
						 newEl.find(".file-img img").attr("src","images/fileimg/Music.png");
					 }
					 else if(this.fileShuffix == "text" || this.fileShuffix == "word"){
						 newEl.find(".file-img img").attr("src","images/fileimg/Text.png");
					 }else{
						 newEl.find(".file-img img").attr("src","");
					 } 
					 newEl.removeClass("diplaynone");
					 newEl.appendTo(".boxcontain");
				 }); 
			 }
		 }
	 });  
 });