function changeSomeday(days){
		var date=new Date();
		var millSeconds=Math.abs(date)+(days*24*60*60*1000);
				var rDate=new Date(millSeconds);
   				 var year = rDate.getFullYear();  
    			var month = rDate.getMonth() + 1;
    			var hour=rDate.getHours();
    			var min=rDate.getMinutes();
    			var sec=rDate.getSeconds();
    			if(month<10)
    			month="0"+month;
    			var day=rDate.getDate();
    			 if (day < 10) day = "0" + day;
    			 return year+"-"+month+"-"+day+" "+hour+":"+min+":"+sec;
	}

function changeOnemonth(number) {
	var date = new Date();
	var month = date.getMonth() + 1 + number;
	var year = date.getFullYear();
	var day=date.getDate();
	var hour=date.getHours();
	var min=date.getMinutes();
	var sec=date.getSeconds();
	
	if (month > 12) {
		month = 1;
		year = year + 1;
	}
	if (month < 1) {
		month = 12;
		year = year - 1;
	}
	if (month < 10)
		month = "0" + month;
	if (day < 10) day = "0" + day;
	return year+"-"+month+"-"+day+" "+hour+":"+min+":"+sec;
}

function dochange(){
	if($(".plantype option:selected").text()=='日计划'){
		 var date = new Date();
		 var nowDate=date.Format('yyyy-MM-dd hh:mm:ss');
		 var startime=addDate(nowDate,0);
		 var endtime=addDate(nowDate,1);
		 $('#starTime').val(startime);
		 $('#endTime').val(endtime);
	}
	if($(".plantype option:selected").text()=='周计划'){
		$('#starTime').val(changeSomeday(0));
		 $('#endTime').val(changeSomeday(7));
	}
	if($(".plantype option:selected").text()=='月计划'){
		$('#starTime').val(changeOnemonth(0));
		 $('#endTime').val(changeOnemonth(1));
	}
}

//$(function () {
//	//获得开始日期和结束日期的时间段
//	var $starTime=$('#starTime').val();
//	var $endTime=$('#endTime').val();
//	var start=Date.parse($starTime);
//	var end=Date.parse($endTime);
//	var nday=parseInt(end-start)/1000/3600/24;
//	if(nday>=0&&nday<7)
//		$(".plantype option").text("日计划")
//	if(nday>7&&nday<29)
//		$(".plantype option").text("周计划")
//	if(nday>=29)
//		$(".plantype option").text("月计划")
//})

	