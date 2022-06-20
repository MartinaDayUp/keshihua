<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="/static/h-ui/js/echarts.js"></script>
    <script src="/static/h-ui/js/china.js"></script>
    <script type="text/javascript" src="/static/h-ui/js/echarts.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
</head>

<body>
    <!-- 为echarts准备一个容器Dom div -->
    <div id="main" style="width: 700px;height:500px;margin:auto"></div>
    <!-- 开始写js -->
    <script type="text/javascript">
        //获取eharts对象
        var myEcharts = echarts.init(document.getElementById("main"));

        var option = {
            title: {
                text: '排\n名\n前\n五\n的\n书\n籍\n男\n女\n购\n买\n数',
                x: "left",
                y:"center",
                link: "b.html",
                target: "self",
                textStyle:{
                    fontSize:20,
                    fontWeight:'bolder'
                }
            },
            legend: {
                textStyle:{
                    borderWidth: 5,            // 图例边框线宽，单位px，默认为0（无边框）
                    padding: 10,

                    itemWidth: 50,             // 图例图形宽度
                    itemHeight: 40,
                    fontSize:30
                }
            },
            tooltip: {
                trigger: 'item',
                formatter: "{b}:{c}",
                borderRadius: 8,           // 提示边框圆角，单位px，默认为4
                borderWidth: 2,            // 提示边框线宽，单位px，默认为0（无边框）
                padding: 8,
                textStyle:{
                    fontSize:20,
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
            dataset: {
                source: [
                    ['sex','男','女'],
                    ["三体",54,30],
                    ["平凡的世界",34,22],
                    ["百年孤独",30,30],
                    ["追风筝的人",26,30],
                    ["鲁迅全集",36,24]
                    ]
            },
            xAxis: {

                type: 'category' ,
                axisLabel: {
                    textStyle: {
                        fontSize: '15',
                        fontWeight:'bolder'
                    }
                }
            },
            yAxis: {
                axisLabel: {
                    textStyle: {
                        fontSize: '20',
                        fontWeight:'bolder'
                    }
                }
            },
            // Declare several bar series, each will be mapped
            // to a column of dataset.source by default.
            series: [
                {
                    type: 'bar',

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
                },
                {
                    type: 'bar',

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
                }
            ]
        };
        //放入到对象中
        myEcharts.setOption(option);


    </script>
</body>

</html>