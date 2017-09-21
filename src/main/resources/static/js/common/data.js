function addDate(date, days) {
	var d = new Date(date);
	var m =dateOne(d.getMonth()+ 1);
	var day=dateOne(d.getDate() + days);
	var hour=dateOne(d.getHours());
	var min=dateOne(d.getMinutes());
	var s=dateOne(d.getSeconds());
	return d.getFullYear() + '-' + m + '-' +day+' '+hour+':'+min+':'+s;
}

	function dateOne(day){
		if(day<10){
			day='0'+day;
		}
		return day;
	}

Date.prototype.Format = function(fmt) { //author: meizz 
	var o = {
		"M+": this.getMonth() + 1, //月份 
		"d+": this.getDate(), //日 
		"h+": this.getHours(), //小时 
		"m+": this.getMinutes(), //分 
		"s+": this.getSeconds(), //秒 
		"q+": Math.floor((this.getMonth() + 3) / 3), //季度 
		"S": this.getMilliseconds() //毫秒 
	};
	if(/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for(var k in o)
		if(new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
	return fmt;
}

	$(function(){
		var date=new Date();
		var nowDate=date.Format('yyyy-MM-dd hh:mm:ss');
		var startime=addDate(nowDate,0);
		var endtime=addDate(nowDate,1);
		//判断如果为空 就赋默认值 不为空 从数据库那里读取得到值就不用赋默认值
		if($('#starTime').val()==""||$('#starTime').val()==null)
		$('#starTime').val(startime);
		if($('#endTime').val()==""||$('#endTime').val()==null)
		$('#endTime').val(endtime);
		$('#starTime').on('click',function(){
			WdatePicker({ minDate:addDate(nowDate,0),maxDate:addDate(nowDate,30),dateFmt:'yyyy-MM-dd HH:mm:ss'});

		});
		
		$('#endTime').on('click',function(){
			WdatePicker({ minDate:addDate(nowDate,0),maxDate:addDate(nowDate,30),dateFmt:'yyyy-MM-dd HH:mm:ss'});

		});
	});