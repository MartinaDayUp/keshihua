<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!-- 引入刚刚下载的 ECharts 文件 -->
    <script src="/static/h-ui/js/echarts.js"></script>
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
            url: "/charts/getLogNeed2Data",
            dataType: 'json',
            success: function(data) {
                var option = {
                    //标题组件
                    title: {
                        text: '各个身份购书数量',
                        left: "center",
                        link: "b.html",
                        target: "self",
                        textStyle: {
                            fontSize: 35,
                            fontWeight: 'bolder'
                        }
                    },
                    //提示框组件
                    tooltip: {
                        trigger: 'item',
                        formatter: "{b}:{c}",
                        borderRadius: 8,           // 提示边框圆角，单位px，默认为4
                        borderWidth: 2,            // 提示边框线宽，单位px，默认为0（无边框）
                        padding: 8,
                        textStyle: {
                            fontSize: 25,
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
                        data: ['购书数量'],
                        itemStyle: {
                            color: "purple"
                        }
                    },


                    //控制x周
                    xAxis: {
                        //柱状图与折线图  需要的是数组类型的数据
                        data: data.names,
                        axisLabel: {
                            textStyle: {
                                fontSize: '20',
                                fontWeight: 'bolder'
                            }
                        }

                    },
                    //控制y轴
                    yAxis: {
                        axisLabel: {
                            textStyle: {
                                fontSize: '20',
                                fontWeight: 'bolder'
                            }
                        }
                    },
                    //控制类型   bar:柱状图
                    series: [{
                        itemStyle: {
                            normal: {

                                barBorderColor: '#fff',       // 柱条边线
                                barBorderRadius: 0,           // 柱条边线圆角，单位px，默认为0
                                barBorderWidth: 1,            // 柱条边线线宽，单位px，默认为1
                                label: {
                                    show: false,
                                    // position: 默认自适应，水平布局为'top'，垂直布局为'right'，可选为
                                    //           'inside'|'left'|'right'|'top'|'bottom'
                                    textStyle: {
                                        fontSize: 20
                                    }
                                },
                                emphasis: {
                                    // color: '各异',
                                    barBorderColor: 'rgba(0,0,0,0)',   // 柱条边线
                                    barBorderRadius: 0,                // 柱条边线圆角，单位px，默认为0
                                    barBorderWidth: 1,                 // 柱条边线线宽，单位px，默认为1
                                    label: {
                                        show: false,
                                        // position: 默认自适应，水平布局为'top'，垂直布局为'right'，可选为
                                        //           'inside'|'left'|'right'|'top'|'bottom'
                                        textStyle: {
                                            fontSize: 20
                                        }
                                    }
                                }
                            }
                        },

                        name: '销量',
                        type: 'bar',
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


                    }


                    ]
                };

                myChart.setOption(option);
            }
        });



    </script>
</body>


</html>