/**
 * 弹出框使用方法：
 * 1、自定义模块已经写好，template；
 * 需要设置六个个显示的信息；
 * 1、在需要显示的地方设置类；
 * 	class="usershow"  
	title="${user.userName}" 
	thisdept="${user.dept.deptName}" 
	thisrole="${user.role.roleName}" 
	thistel="${(user.userTel)!'空的'}"
	thisemail="${(user.eamil)!'空的'}" 
 */

/*内部员工资料版*/
$('.usershow').popover({
		html:true,
		placement:'auto right',
		trigger: 'hover',
		template: '<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="thisdiv" style="border: 0px solid red;min-width: 160px;height: 120px;">'
			+'<table class="table thistable">'
			+'<tr><td style="padding:4px">Dept:</td><td class="thisdept" style="padding:4px">总经办</td></tr>'
			+'<tr><td style="padding:4px">Role:</td><td class="thisrole" style="padding:4px">部门经理</td></tr>'
			+'<tr><td style="padding:4px">Tel:</td><td class="thistel" style="padding:4px">18173328976</td></tr>'
			+'<tr><td style="padding:4px">Email:</td><td class="thisemail" style="padding:4px">aaluoxiang@foxmail.com</td></tr>'
			+'</table>	</div></div>'
	});
	$('.usershow').on('mouseover',function(){
		console.log("fds");
		$(".thisdept").text($(this).attr("thisdept"));
		$(".thisrole").text($(this).attr("thisrole"));
		$(".thistel").text($(this).attr("thistel"));
		$(".thisemail").text($(this).attr("thisemail"));
	});
/*外部员工资料版*/
	$('.othershow').popover({
		html:true,
		placement:'auto right',
		trigger: 'hover',
		template: '<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="thisdiv" style="border: 0px solid red;min-width: 160px;height: 120px;">'
			+'<table class="table thistable">'
			+'<tr><td style="padding:4px">Sex:</td><td class="thisrole" style="padding:4px">部门经理</td></tr>'
			+'<tr><td style="padding:4px">Tel:</td><td class="thisdept" style="padding:4px">总经办</td></tr>'
			+'<tr><td style="padding:4px">E-mail:</td><td class="thistel" style="padding:4px">18173328976</td></tr>'
			+'<tr><td style="padding:4px">Company:</td><td class="thisemail" style="padding:4px">aaluoxiang@foxmail.com</td></tr>'
			+'</table>	</div></div>'
	});
	$('.othershow').on('mouseover',function(){
		console.log("fds");
		console.log("fdsddd:"+$(this).attr("thistel"));
		console.log("ssss:"+$(this).attr("thissex"));
		console.log($(this).attr("thisemail"));
		console.log($(this).attr("thiscompany"));
		$(".thisdept").text($(this).attr("thistel"));
		$(".thisrole").text($(this).attr("thissex"));
		$(".thistel").text($(this).attr("thisemail"));
		$(".thisemail").text($(this).attr("thiscompany"));
	});