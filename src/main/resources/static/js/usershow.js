$('.usershow').popover({
		html:true,
		placement:'auto right',
		trigger: 'hover click',
		template: '<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="thisdiv" style="border: 0px solid red;width: 200px;height: 120px;">'
			+'<table class="table thistable">'
			+'<tr><td>Dept:</td><td class="thisdept">总经办</td></tr>'
			+'<tr><td>Role:</td><td class="thisrole">部门经理</td></tr>'
			+'<tr><td>Tel:</td><td class="thistel">18173328976</td></tr>'
			+'<tr><td>Email:</td><td class="thisemail">aaluoxiang@foxmail.com</td></tr>'
			+'</table>	</div></div>'
	});
	$('.usershow').on('mouseover',function(){
		$(".thisdept").text($(this).attr("thisdept"));
		$(".thisrole").text($(this).attr("thisrole"));
		$(".thistel").text($(this).attr("thistel"));
		$(".thisemail").text($(this).attr("thisemail"));
	});