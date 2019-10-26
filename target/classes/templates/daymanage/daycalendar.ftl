<#include "/common/commoncss.ftl">
<link rel="stylesheet" type="text/css" href="css/common/box.css" />
<link href='plugins/fullcalendar/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='plugins/fullcalendar/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">日程管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="##"><span class="glyphicon glyphicon-home"></span> 首页</a> > <a
			disabled="disabled">日程管理</a>
	</div>
</div>
<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">
					<a class="label label-success" href="dayedit"><span
						class="glyphicon glyphicon-plus"></span> 新增</a>
				</h3>
			</div>
			<div class="box-body">
				<div id="calendar"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal" tabindex="-1">
	<!--第二步，窗口声明-->
	<div class="modal-dialog modal-lg">
		<!--第三步、内容区的声明-->
		<div class="modal-content" style="background: #F9F9F9; padding: 10px;">
			<button class="close" data-dismiss="modal"
				style="display: block; background-color: black; margin: -28px -23px 0 0; border-radius: 60%;">
				<span class="glyphicon glyphicon-remove-circle"
					style="color: white; font-size: 30px;"></span>
			</button>
			<div style="background-color: #ECF0F5; padding: 10px;">
				<div class="row">
					<div class="col-md-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">
									<a class="label label-primary" href=""><span
										class="glyphicon glyphicon-print"></span> 打印</a>
								</h3>
							</div>
							<div class="box-body">
								<div style="border-bottom: 1px solid #f4f4f4;">
									<h3>
										<span class="rctitle" style="font-size:16px;">ddddd</span>
									</h3>
									<h5 style="color: #999;font-size: 13px;">
										<span>发布：<span class="rcusername">aaa茨</span>   类型：<span class="rctype">日程提醒</span></span>
										<span style="float:right;"><span class="rcstarttime">2017-10-20 20:44</span> 至 <span class="rcendtime">2017-10-20 21:44</span></span>
									</h5>
								</div>
								<div style="padding:10px;">
									<span class="rcdescription">
										盛大手机看的啥借口
									</span>
								</div>
							</div>
							<div class="box-footer">
								<input class="modelokclose btn btn-primary" id="save" type="button" value="确定" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src='plugins/fullcalendar/lib/jquery-ui.custom.min.js'></script>
<script src='plugins/fullcalendar/fullcalendar/fullcalendar.min.js'></script>
<script>
	$(".modelokclose").click(function(){
		$('#myModal').modal('hide');
	});
	
	$(document).ready(function() {

		var date = new Date();

		var d = date.getDate();

		var m = date.getMonth();

		var y = date.getFullYear();

		$('#calendar').fullCalendar({
			buttonText: {
				today: '今天',
				month: '月',
				week: '周',
				day: '天'
			},
			allDayText: '全天',
			monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
			monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
			dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},

			/* dayClick: function(date, allDay, jsEvent, view) {
				$('#myModal').modal('show');
			}, */

			eventClick: function(event) {
				var title = event.title;
				var starttime = dateformat(event.start);
				var endtime = dateformat(event.end);
				var username = event.user;
				var des = event.des;
				var typeid = event.rctype;
				console.log(typeid); 
				var typename;
				if(typeid=='44'){
					typename='日程提醒';
				}else if(typeid=='45'){
					typename='假日安排';
				}
				
				$('#myModal .rctitle').html(title);
				$('#myModal .rcusername').html(username);
				$('#myModal .rctype').html(typename);
				$('#myModal .rcstarttime').html(starttime);
				$('#myModal .rcendtime').html(endtime);
				$('#myModal .rcdescription').html(des);
				
				$('#myModal').modal('show');
				console.log(event.id);
			},

			editable: false,

			/* events: [{

				title: 'Long Event',

				start: new Date(y, m, d - 5),

				backgroundColor: 'red',

				borderColor: 'red',

				end: new Date(y, m, d - 2)

			}, ]  */
			
			events:function(start, end, callback){
				$.ajax({
					 url: "mycalendarload",
					 cache:false,
					 datatype:'json',
					 
					 success:function(data){
						 var events = [];
						 $.each(data,function(i,item){
							 console.log(item);
							 var color;
							 var starttime =dateformat(new Date(item.startTime));
							 var endtime = dateformat(new Date(item.endTime));
							 if(item.statusId=='27'){
								 color="#00c0ef";
							 }
							 if(item.statusId=='28'){
								 color="#f0ad4e";
							 }
							 if(item.statusId=='29'){
								 color="#dd4b39";
							 }
							 events.push({
								 title: item.title,

								 start: starttime,
 
								 backgroundColor: color,

								 borderColor: color,

								 end: endtime,
								 
								 id:item.rcId,
								 
								 user:item.username,
								 
								 des:item.describe,
								 
								 rctype:item.typeId
							 });
						 });
						 callback(events);
					 }
				})
				
			},

		});
	});
	var dateformat = function(a) {
        return a.getFullYear() + "-" + (a.getMonth() + 1) + "-" + a.getDate() + " " + a.getHours() + ":" + a.getMinutes() + ":" + a.getSeconds();
    };
	
</script>