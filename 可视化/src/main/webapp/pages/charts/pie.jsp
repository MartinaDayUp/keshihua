<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="/static/h-ui/js/echarts.js" charset="UTF-8"></script>
</head>
<body>

<!-- 为echarts准备一个容器Dom div -->
<div id="main" style="width: 90%;height:430px;"></div>

<!-- 开始写js -->
<!-- 开始写js -->
<script type="text/javascript">
    //获取eharts对象
    var myEcharts = echarts.init(document.getElementById("main"));

    //指定图表与配置的数据
    var option = {
        title: {
            text: '某站点用户访问来源',
            x: 'center'
        },
        tooltip: {
            show: true,
            formatter: "{b}:{c}<br/>{d}%"
        },
        legend: {
            left: "left",
            orient: "vertical"
        },
        series: [{
            name: '访问来源',
            type: 'pie',
            //上下左右的位置
            center: ['50%', '50%'],
            //圆心半径
            radius: '70%',
            data: [{
                value: 335,
                name: "直接访问"
            }, {
                value: 310,
                name: "邮件营销"
            }, {
                value: 234,
                name: "联盟广告"
            }, {
                value: 135,
                name: "视频广告"
            }, {
                value: 1345,
                name: "搜索引擎"
            }]
        }]
    };

    //放入到对象中
    myEcharts.setOption(option);
</script>
</body>
</html>