//前台显示的
var starttime,endtime,monthfirst,monday,startday,endday,choose=1,days1,days2;

//改变n天
function changeSomeday(str,days,onesec){
		var date=new Date(Date.parse(str));
		var millSeconds=Math.abs(date)+(days*24*60*60*1000-onesec);
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
    			 if(hour<10)hour="0"+hour;
    			 if(min<10)min="0"+min;
    			 return year+"-"+month+"-"+day+" "+hour+":"+min;
    			 
	}

//获得某月的天数
function getMonthdays(year,month){
	var monthstartdate=new Date(year,month-1,1)
	var monthenddate=new Date(year,month,1)
	var days=(monthenddate-monthstartdate)/(1000*60*60*24)
	return days;
}

function monthchange(str){
	//如果是改变月的话 就每次都要获得它的年月  然后得到当前月的天数
	var arr=new Array()
	arr=str.split("-");
	days2=getMonthdays(arr[0],arr[1])
	days=days2;
	return days;
}



//点击上一个或者下一个变化一些天
function change(days){
	
	if(choose==3){
		if(days>0){
		startday=changeSomeday(startday,days,0);
		endday=changeSomeday(endday,monthchange(startday),0);
		}
		else{
			endday=changeSomeday(endday,days,0);
			startday=changeSomeday(startday,-monthchange(endday),0);
		}
	}
	else{
		startday=changeSomeday(startday,days,0);
		endday=changeSomeday(endday,days,0);
	}
	
	$("#start").html(startday);
	$("#end").html(endday);
	return startday+";"+endday;
}



//调用ajax传给后台调用
function convert(starttime,endtime,choose){
	$.ajax({
		type:"get",
		url:"realplantable",
		 data:{
			 starttime:starttime,
			 endtime:endtime,
			 choose:choose
		 },
		success:function(dates){
			 $("#refresh").html(dates)
		 },
		 error:function(){
		 }
	})
}



$(function(){
	var dayDistance;
	
	 var date=new Date();
	 
	 var year=date.getFullYear();
	 var month=date.getMonth()+1;
	 var day=date.getDate();
	 if(day<10) day="0"+day;
	 if(month<10)month="0"+month;
	 var getday=year+"-"+month+"-"+day+" "+00+":"+00;
	 monthfirst=year+"-"+month+"-"+01+" "+00+":"+00;
	 var days1=getMonthdays(year,month)
	
	 startday=changeSomeday(getday,0,0);
	 endday=changeSomeday(getday,2,1);
	 $("#start").html(startday);
	 $("#end").html(endday);
	 choose=1;
	 convert(startday,endday,choose);
	 //点击日计划
	 $(".day").click(function(){
		 $(".row .col-md-10 h1").text("计划报表")
		 $(".row .col-md-10 h1").append("(日计划)");
		 //初始化日计划日期
		 startday=changeSomeday(getday,0,0);
		 endday=changeSomeday(getday,2,1);
		 $("#start").html(startday);
		 $("#end").html(endday);
		//赋值让'上一个'按钮知道这是谁
		 choose=1;
		 convert(startday,endday,choose)
	 })
	 
	 //点击周计划
	  $(".week").click(function(){
		  $(".row .col-md-10 h1").text("计划报表")
		  $(".row .col-md-10 h1").append("(周计划)");	
		  
		//距离该周的星期一有多少天
			 if(date.getDay()==0)
				 dayDistance=6;
			 else
			 dayDistance=date.getDay()-1;
			 monday=changeSomeday(getday,-dayDistance,0)
			 
			 //首先初始化周计划日期
			 startday=changeSomeday(monday,0,0);
			 endday=changeSomeday(monday,7,1);
			 $("#start").html(startday);
			 $("#end").html(endday);
			//赋值让'上一个'按钮知道这是谁
			 choose=2;
			 convert(startday,endday,choose)
		  
	 })
	 //点击月计划
	  $(".month").click(function(){
		  $(".row .col-md-10 h1").text("计划报表")
		 $(".row .col-md-10 h1").append("(月计划)");	
		 days2=days1;
		//首先初始化月计划日期
			 startday=changeSomeday(monthfirst,0,0);
			 endday=changeSomeday(monthfirst,days2,1);
			 $("#start").html(startday);
			 $("#end").html(endday);
			 //赋值3让'上一个'按钮知道这是谁
			 choose=3;
			 convert(startday,endday,choose)
	 })
	 
	//上一个
	 $(".last").click(function(){
		exec(-2,-7,-1);
	 })
	 //下一个
	  $(".next").click(function(){
		  exec(2,7,1);
	 })
	 

})

function exec(one,two,three){
	 if(choose==1){
		 var arr=new Array()
		 arr=change(one).split(";");
		 convert(arr[0],arr[1],choose)
		 
	 }
	 if(choose==2){
		 var arr=new Array()
	 arr=change(two).split(";");
	 convert(arr[0],arr[1],choose)
	 }
	 else if(choose==3){
		 var arr=new Array()
		 arr= change(days2*three).split(";");
		 convert(arr[0],arr[1],choose)
	}
}



	
