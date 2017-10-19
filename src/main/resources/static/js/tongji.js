       var chart;
      
        $(function () {
        	 var arrayname=new Array();
             var arraynum=new Array();
        	 $.ajax({
          	   dataType:'json',
          	   url:'counttasknum',
          	   traditional: true,
          	   error:function(){
          	   }
             ,success:function(data){
            	var string=JSON.stringify(data);
            	string=string.substring(1,string.length-1);
            	 var str=string.split(",");
            	 for(var i=0;i<str.length;i++){
            		 str[i]=str[i].substring(1,str[i].length-1)
            		var sp=str[i].split(":");
            		arrayname[i]=sp[0].substring(1,sp[0].length-1);
            		var num=parseInt(sp[1]);
            		arraynum.push(num);
            	 }
            	 console.log(arrayname+";"+arraynum)
          	//柱形图初始化
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'column',
                    type: 'column',
                },
                title: {
                    text: null
                },
                xAxis: {
                	
                	gridLineWidth:1,
                	 lineWidth: 1,
                    lineColor: "#1a96ef",
                    tickWidth: 1,
                   categories:arrayname,
                     labels:{
                    	formatter:function(){
                    		return this.value
                    	}
                    }
                },
                yAxis: {
                	 gridLineDashStyle:'Dash',
                	gridLineWidth:1,
               	 lineWidth: 1,
                    min: 0,
                    title: {
                        text: null
                    },labels:{
                    	formatter:function(){
                    		return this.value+"个"
                    	}
                    }
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.series.name + '</b>' +
					this.x + ': ' + this.y + '个';
                    },
                     
                },
                legend: {
                	enabled: false
                },
                series: [{
                	name:'完成任务',
                    data: arraynum,
                    color: '#B0171F',
                    },
                ]
            });
             }
             })
             
             $.ajax({
            	 dataType:"json",
            	 url:'countweeklogin',
            	 traditional: true,
            	   error:function(){
            	   }
               ,success:function(data){
            	   var a=new Array()
            	  a= JSON.stringify(data).substring(1,JSON.stringify(data).length-1).split(",");
            	  for(var i=0;i<a.length;i++)
            		  a[i]=parseInt(a[i])
            	   console.log(a)
            	   //曲线图初始化
                   chart = new Highcharts.Chart({
                       chart: {
                           renderTo: 'line',
                           type: 'line',
                       },
                       title: {
                           text: null,
                       },
                       xAxis: {
                    	  
                    	   gridLineWidth:1,
                      	 lineWidth: 1,
                           categories: ['周一', '周二', '周三', '周四', '周五', '周六',
       				'周日']
                       },
                       yAxis: {
                    	   gridLineDashStyle:'Dash',
                    	   gridLineWidth:1,
                      	 lineWidth: 1,
                       	 tickPixelInterval:30,
                       	 title: {
                               text: null
                           },
                        },
                       tooltip: {
                           formatter: function () {
                               return '<b>' + this.series.name + '</b>' +
       					this.x + ': ' + this.y + '次';
                           }
                       },
                       legend: {
                       	enabled: false
                       },
                       series: [{
                       	name:'访问量',
                           data: a,
                       }]
                   });
               }
             })
          
      
    });