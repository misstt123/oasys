      var chart;
        $(document).ready(function () {
            //曲线图初始化
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'line',
                    type: 'line',
                    marginRight: 220,
                    marginBottom: 25
                },
                title: {
                    text: '数据曲线图表',
                    x: -10 //center
                },
                subtitle: {
                    text: 'ds',
                    x: -20
                },
                xAxis: {
                    categories: ['周一', '周二', '周三', '周四', '周五', '周六',
				'周日']
                },
                yAxis: {
                    title: {
                        text: '数据'
                    },
                 },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.series.name + '</b><br/><br/>' +
					this.x + ': ' + this.y + '单位';
                    }
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'top',
                    x: -20,
                    y: 200,
                    borderWidth: 0
                },
                series: [{
                    data: [20, 22, 95, 245, 282, 225, 252]
                }]
            });

           
           
           
            //柱形图初始化
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'column',
                    type: 'column'
                },
                title: {
                    text: '数据柱形图表'
                },
                subtitle: {
                    text: 'jqddsjfx'
                },
                xAxis: {
                	 lineWidth: 2,
                    lineColor: "#1a96ef",
                    tickWidth: 10,
                    tickPixelInterval:40,
                     categories:['df','df2','df'],
                     labels:{
                    	formatter:function(){
                    		return this.value
                    	}
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '数据'
                    },labels:{
                    	formatter:function(){
                    		return this.value/50+"个"
                    	}
                    }
                },
                legend: {
                    layout: 'vertical',
                    backgroundColor: '#FFFFFF',
                    align: 'left',
                    verticalAlign: 'top',
                    x: 340,
                    y: 70,
                    floating: true,
                    shadow: true,
                     
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.series.name + '</b><br/><br/>' +
					this.x + ': ' + this.y + ' 单位';
                    },
                     
                }
               ,
                series: [{
                    data: [424,23,7]},
                ]
            });

      
    });