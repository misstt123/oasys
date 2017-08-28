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
					<a class="label label-success" href=""><span
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
							<div class="box-body">xxxx</div>
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
				left: 'prev, today',

				center: 'title',

				right: 'next'
			},

			dayClick: function(date, allDay, jsEvent, view) {
				$('#myModal').modal('show');
			},

			eventClick: function() {
				$('#myModal').modal('show');
			},

			editable: false,

			events: [{

				title: 'Long Event',

				start: new Date(y, m, d - 5),

				backgroundColor: 'red',

				borderColor: 'red',

				end: new Date(y, m, d - 2)

			}, ]

		});
	});
</script>