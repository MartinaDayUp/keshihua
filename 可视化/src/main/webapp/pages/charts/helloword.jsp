<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!-- 引入刚刚下载的 ECharts 文件 -->
    <script src="/static/h-ui/js/echarts.js"></script>
    <script type="text/javascript" src="/static/h-ui/js/echarts.js" charset="UTF-8"></script>
</head>


<body>
    <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
    <div id="main" style="width: 600px;height:400px;"></div>

    <!-- 往div盒子中放入图片数据 -->
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        $.ajax({
            type: "GET",
            url: "/charts/getChargeData",
            dataType: 'json',
            success: function(data) {
                //指定图表与配置的数据
                // 指定图表的配置项和数据
                var option = {
                    //标题组件
                    title: {
                        text: '用户消费前5名',
                        textStyle: {
                            color: "red",
                            fontSize: 20
                        },
                        link: "b.html",
                        target: "self"
                    },
                    //提示框组件
                    tooltip: {},
                    //图例组件
                    legend: {
                        data: ['销量', '产量'],
                        itemStyle: {
                            color: "blue"
                        }
                    },
                    //控制x周
                    xAxis: {
                        //柱状图与折线图  需要的是数组类型的数据
                        data:data.names
                    },
                    //控制y轴
                    yAxis: {},
                    //控制类型   bar:柱状图
                    series: [{
                        name: '销量',
                        type: 'line',
                        data: [5, 20, 36, 10, 10, 20]
                    }, {
                        name: '产量',
                        type: 'bar',
                        data:data.values
                    }

                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        });




        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>


</html>