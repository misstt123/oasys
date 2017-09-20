	$(function () {
				//从开始日期到结束日期的间隔时间 默认为一个星期
			var days=7;
				var date = new Date();
				$("#start").val(date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate());
				
				var millSeconds=Math.abs(date)+(days*24*60*60*1000);
				var rDate=new Date(millSeconds);
				 var rDate = new Date(millSeconds);  
   				 var year = rDate.getFullYear();  
    			var month = rDate.getMonth() + 1;
    			if(month<10)
    			month="0"+month;
    			var day=rDate.getDate();
    			 if (day < 10) day = "0" + day;
    			 $("#end").val(year+"-"+month+"-"+day);
			})