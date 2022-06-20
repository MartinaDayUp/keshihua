<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="/static/h-ui/js/echarts.js"></script>
    <script src="/static/h-ui/js/china.js"></script>
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
<!-- 为echarts准备一个容器Dom div -->
<div id="main" style="width: 1000px;height:500px;"></div>
<!-- 开始写js -->
<script type="text/javascript">
    //获取eharts对象
    var myEcharts = echarts.init(document.getElementById("main"));
    $.ajax({
        type: "GET",
        url: "/charts/getlogNeed1UserData",
        dataType: 'json',
        success: function (data) {
            var option = {
                title: {
                    text: '购买用户数量',
                    left: 'center',
                    textStyle: {
                        fontSize: 35,
                        fontWeight: 'bolder'
                    }
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{b}:{c}",
                    textStyle:{
                        fontSize:25
                    }
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                    data: ['购买用户数量']
                },
                //视觉映射组件
                visualMap: {
                    //
                    calculable: true,
                    min: 0,
                    max: 2500,
                    left: 'left',
                    text: ['高', '低'] // 文本，默认为数值文本
                },
                //工具箱
                toolbox: {
                    show: true
                },
                series: [{
                    name: 'iphone',
                    type: 'map',
                    mapType: 'china',
                    roam: true,
                    data: data
                }]

            };
            //放入到对象中
            myEcharts.setOption(option);
        }
    })

</script>
</body>

</html>