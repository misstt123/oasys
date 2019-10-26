/**
 * 
 */
var yearmonth;
	//变化一个月
	function changeOnemonth(number) {
		var date = new Date(Date.parse(yearmonth));
		var month = date.getMonth() + 1 + number;
		var year = date.getFullYear();
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
		$("#month").html(year + "-" + month);
		yearmonth = year + "-" + month;
		return yearmonth;
	}
	
	function getdate(month){
		$.ajax({
			type:"get",
			url:'realmonthtable',
			data:{month:month},
			success:function(dates){
				 $("#refresh").html(dates)
			},
			error:function(){
			}
			
		})
	}
	$(function() {
		var date = new Date();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();
		if (month < 10)
			month = "0" + month;
		yearmonth = year + "-" + month;
		$("#month").html(yearmonth);
		getdate(yearmonth);
		$(".lastmonth").on("click", function() {
			var month = changeOnemonth(-1)
			getdate(month);
		})
		$(".nextmonth").on("click", function() {
			var month=changeOnemonth(1);
			getdate(month);
		})
	})