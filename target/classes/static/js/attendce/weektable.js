/**
 * 
 */

//前台显示的
var startday,endday;
//传到后台的
var starttime,endtime;
    //变化一周时间
	function changeSomeday(str,days){
		var date=new Date(Date.parse(str));
		var millSeconds=Math.abs(date)+(days*24*60*60*1000);
				var rDate=new Date(millSeconds);
				 var rDate = new Date(millSeconds);  
   				 var year = rDate.getFullYear();  
    			var month = rDate.getMonth() + 1;
    			if(month<10)
    			month="0"+month;
    			var day=rDate.getDate();
    			 if (day < 10) day = "0" + day;
    			 return year+"-"+month+"-"+day;
	}
	function change (days) {
					$("#start").html(changeSomeday(startday,days));
					$("#end").html(changeSomeday(endday,days));
					 startday=changeSomeday(startday,days);
					endday=changeSomeday(endday,days);
					return startday+";"+endday;
	}
	
	function getdata(data){
		var arr=new Array();
		//拆开日期
		arr=data.split(";");
		 starttime=arr[0];
		 endtime=arr[1];
		 $.ajax({
			 type:"get",
			 url:'realweektable',
			 data:{
				 starttime:starttime,
				 endtime:endtime
			 },
			success:function(dates){
				 $("#refresh").html(dates)
			 },
			 error:function(){
			 }
		 })
	}
	
	$(function () {
		var dayDistance;
				var date = new Date();
				//距离该周的星期一有多少天
				if(date.getDay()==0)
					 dayDistance=6;
				 else
				 dayDistance=date.getDay()-1;
				//距离该周的星期日有多少天
				if(date.getDay()==0)
					dayDistance2=0;
				else
				var dayDistance2=7-date.getDay();
				//先获得该日期的年 月
				var year = date.getFullYear();  
    			var month = date.getMonth()+ 1;
    			var day=date.getDate();
    			//今天的日期
    			var today=year+"-"+month+"-"+day;
    			//该周的星期一
				var day1=changeSomeday(today,-dayDistance);
				//该周的星期日
				var day2=changeSomeday(today,dayDistance2);
				//该周的周一日期
				 startday=day1;
				//该周的周日日期
				 endday=day2;
				$("#start").html(startday);
				$("#end").html(endday);
				var nowdata=startday+";"+endday;
				getdata(nowdata);
				$(".lastweek").on('click',function() {
					var lastdate=change(-7)
					getdata(lastdate);
				})
				
				$(".nextweek").on('click',function() {
					var nextdate=change(7)
					getdata(nextdate);
				})
				
				
	})