var yearmonth,days,date,year,month;

$(function(){
		
		//改一下这个表格事件
		//去掉
	
		//设置表格头部的年月
		date=new Date();
		year=date.getFullYear();
		month=date.getMonth()+1;
		var year2=year;
		var month2=month;
		yearmonth=year+"年"+month+"月";;
		
	
	    function getdaysofmonth(yy,mm){
	    	//根据人年和平年 以及135781012等判断月的天数
			if(mm==14&&yy%4==0&&yy%100!=0)
			{	days=28;
			}else if(mm==1||mm==3||mm==5||mm==7||mm==8||mm==10||mm==12||mm==13){
				days=31;
			}else if(mm==4||mm==6||mm==9||mm==11){
				days=30;
			}else{
				days=29;
			}
			return days;
	    }
		function initcalendar(yy,mm){
			
		
			$(".yearmonth").text(yy+"年"+mm+"月");
			var nowdays=getdaysofmonth(yy,mm);
			//注意在这个公式里面1.2月份要当去年的13.14月计算
			if(mm==1)mm=13;
			if(mm==2)mm=14;
			if(mm>12)yy--;
			var c=parseInt(yy/100);
		var y=yy%100;
		/*蔡勒公式迅速获得该月的1号是星期几*/
		var week = y + parseInt(y/4) + parseInt(c/4) - 2*c + parseInt(26*(mm+1)/10) + 1- 1;
		 //week为负数和正数求摸不一样
		 week=week<0?((week%7)+7)%7:week%7;
		 
		 //接下来计算该月有多少天
		//获取表格里面的数据
		//由于中国日历和西方不同中国week等于7表示星期日西方周日是0
			if(week==0)
			week=7;
		//在生成之前清空所有的数据不然会出事
		for (var i = 0; i <42; i++) {
			$(".calendar td #span").eq(i).text('');
			$(".calendar td .icon").eq(i).removeClass("glyphicon glyphicon-flag");
		}
		
		
		//得到上个月数字
		for (var i = 0; i < week-1; i++) {
			var lastmonth,lastyear;
			if(mm==1)
			 {lastmonth=12;lastyear=yy-1;}
			 else{
			 	lastmonth=mm-1;lastyear=yy;
			 }
			var lastdays=getdaysofmonth(lastyear,lastmonth);
			//alert(lastyear+";"+lastmonth+";"+lastdays)
			$(".calendar td #span").eq(i).text(lastdays-(week-1)+i+1).addClass("lastMonth");
		}
		
		//星期一是0星期二是1一次类推星期日是6就是week-1
		for (var i = 0; i <nowdays; i++) {
			//给当月日期加颜色
			$(".calendar td #span").eq(i+(week-1)).text(i+1).addClass("currentday").removeClass("lastMonth").removeClass("nextMonth");
			//给当天日期加颜色
				if(yy==year&&mm==month){
				$(".calendar td #span").eq(date.getDate()+(week-1)-1).removeClass("currentday").addClass("today")
				}
			
		}
		//得到下个月数字
		for (var i =nowdays+week-1; i < 42; i++) {
			$(".calendar td #span").eq(i).text(i+1-(nowdays+week-1)).addClass("nextMonth").removeClass("currentday");
		}
		
		
		$.ajax({
			dataType:"json",
			 url:'littlecalendar',
          	   traditional: true,
          	   error:function(){
          	   }
             ,success:function(data){
            	 var a=JSON.stringify(data).substring(1,JSON.stringify(data).length-1);
            	 a=a.replace(/\"/g, "");a=a.split(",");
            	
            	 $("#calendar td").each(function(e){
            	//每个表格里面的值
            		 var date2;
            		 //在这里获取日期
					var last,next;
					var month=$(".yearmonth").text().substring(5,$(".yearmonth").text().length-1);
					month=parseInt(month);
					if(month==1)
					{ last=12; next=month+1;}
					if(month==12)
					{ last=month-1; next=1;}	
					else{
					 last=month-1; next=month+1;
					}
					
					var $riqi=$(this).children("#span");
					var $tomonth=$(".yearmonth").text().substring(5,$(".yearmonth").text().length-1)
					var $toyear=$(".yearmonth").text().substring(0,4)
					if($riqi.text()<10)
						var $day="0"+$riqi.text()
					else
						var $day=$riqi.text()
					if($riqi.hasClass("nextMonth"))
						date2=$toyear+"-"+next+"-"+$day;
					if($riqi.hasClass("currentday"))
						date2=$toyear+"-"+$tomonth+"-"+$day;
					if($riqi.hasClass("today"))
						date2=$toyear+"-"+$tomonth+"-"+date.getDate();
					if($riqi.hasClass("lastMonth"))
						date2=$toyear+"-"+last+"-"+$day;
					 for(var i=0;i<a.length;i++){
            			 if(date2==a[i]){
            				  console.log(date2)
                   			$(this).children(".icon").addClass("glyphicon glyphicon-flag");
                   		}
            		 }
            		})
            		
            	 }
            	
             
		})
		
	
	
		}
		initcalendar(year,month)
		
		$(".month").on('click',function(){
			
			if($(this).hasClass("left")){
				//上一个月减
				if(month2==1){
					month2=12;
					year2--;
				}else{
					month2--;
				}
			}else{
				
				//下一个月加
				if(month2==12){
					month2=1;
					year2++;
				}else{
					month2++;
				}
			}
			initcalendar(year2,month2)
		
		})
		
		
		$("#calendar td").each(function(e){
			$(this).on("mouseover mouseout",function(event){
				if(event.type=="mouseover"){
					$(this).css({
						"background-color":"#005E33",
					})
					//显示数字
					var last,next;
					var month=$(".yearmonth").text().substring(5,$(".yearmonth").text().length-1);
					month=parseInt(month);
					if(month==1)
					{ last=12; next=month+1;}
					if(month==12)
					{ last=month-1; next=1;}	
					else{
					 last=month-1; next=month+1;
					}
					
					var $riqi=$(this).children("#span");
					var $tomonth=$(".yearmonth").text().substring(5,$(".yearmonth").text().length-1)
					if($riqi.hasClass("nextMonth"))
						$("#blockdiv").text(next+"月"+$riqi.text()+"日")
					if($riqi.hasClass("currentday"))
					$("#blockdiv").text($tomonth+"月"+$riqi.text()+"日")
					if($riqi.hasClass("today"))
					$("#blockdiv").text($tomonth+"月"+date.getDate()+"日")
					if($riqi.hasClass("lastMonth")){
						$("#blockdiv").text(last+"月"+$riqi.text()+"日")}
					
					$("#blockdiv").css({
						"display":"block",
						"left":event.pageX+5,
						"top":event.pageY+20,	
					})
				}
				if(event.type=="mouseout"){
					$(this).css({
						"background-color":"",
						"border":"",
					})
					$("#blockdiv").css({
						"display":"none",
					})
				}
		})
		});
		
		
	
	})
		