<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!-- 引入刚刚下载的 ECharts 文件 -->
    <script src="/static/h-ui/js/echarts.js"></script>
    <script type="text/javascript" src="/static/h-ui/js/echarts.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
</head>


<body>
    <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
    <div id="main" style="width: 700px;height:500px;margin:auto;"></div>

    <!-- 往div盒子中放入图片数据 -->
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        $.ajax({
            type: "GET",
            url: "/charts/getlogNeed7Data",
            dataType: 'json',
            success: function(data) {
                var option = {
                    //标题组件
                    title: {
                        text: '每天销售书籍数量',
                        left: 'center',
                        textStyle: {
                            fontSize: 30,
                            fontWeight:'bolder'
                        },
                        link: "b.html",
                        target: "self"
                    },
                    //提示框组件
                    tooltip: {
                        trigger: 'item',
                        formatter: "{b}:{c}",
                        borderRadius: 8,           // 提示边框圆角，单位px，默认为4
                        borderWidth: 2,            // 提示边框线宽，单位px，默认为0（无边框）
                        padding: 8,
                        textStyle:{
                            fontSize:25,
                        }
                    },
                    toolbox: {
                        feature: {
                            saveAsImage: {
                                show: true,
                                icon: 'image://http://localhost/image/下载.png',
                                iconStyle: {
                                    borderWidth: 2

                                }
                                //
                            },
                            restore: {
                                show: true,
                                icon: 'image://http://localhost/image/恢复.png',
                                iconStyle: {
                                    borderWidth: 2
                                }
                            },
                            dataView: {
                                show: true,
                                icon: 'image://http://localhost/image/文本编辑_填充.png',
                                iconStyle: {
                                    borderWidth: 2
                                }
                            },
                            magicType: {
                                type: ['line', 'bar'],
                                show: true,
                                icon: {
                                    line: 'image://http://localhost/image/柱状图.png',
                                    bar: 'image://http://localhost/image/折线图.png'
                                },
                                iconStyle: {
                                    borderWidth: 2
                                }
                            },
                            dataZoom: {
                                show: true,
                                icon: {
                                    zoom: 'image://http://localhost/image/放大.png',
                                    back: 'image://http://localhost/image/缩小.png'
                                },
                                iconStyle: {
                                    borderWidth: 2
                                }
                            }

                        }
                    },
                    //图例组件
                    legend: {
                        data: ['1', '2'],
                        itemStyle: {
                            color: "blue"
                        }
                    },
                    //控制x周
                    xAxis: {
                        //柱状图与折线图  需要的是数组类型的数据
                        data: data.names,
                        axisLabel:{
                            textStyle:{
                                fontSize:20
                            }
                        }


                    },
                    //控制y轴
                    yAxis: {
                        axisLabel:{
                            textStyle:{
                                fontSize:20
                            }
                        }
                    },
                    //控制类型   bar:柱状图
                    series: [{
                        name: '销量',
                        type: 'line',
                        data: data.values,
                        markPoint: {
                            data: [
                                {
                                    name: '最大值',
                                    type: 'max'
                                },
                                {
                                    name: '最小值',
                                    type: 'min'
                                }
                            ]
                        },
                    }, {
                        name: '产量',
                        type: 'bar',
                        data: data.values
                    }
                    ]

                };

                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        })
        // 指定图表的配置项和数据

    </script>
</body>


</html>