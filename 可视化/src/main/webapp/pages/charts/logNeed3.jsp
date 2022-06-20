<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>


<html>

<head>
    <meta charset="utf-8" />
    <!-- 引入刚刚下载的 ECharts 文件 -->
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="/static/h-ui/js/echarts.js" charset="GBK"></script>
    <script type="text/javascript" src="/static/lib/jquery/1.9.1/jquery.min.js"></script>
</head>


<body>
    <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
    <div id="main" style="width: 700px;height:400px;margin:auto;"></div>

    <!-- 往div盒子中放入图片数据 -->
    <script type="text/javascript">
        var myChart = echarts.init(document.getElementById('main'), null, {
            width: 700,
            height: 500
        });
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        $.ajax({
            type: "GET",
            url: "/charts/getlogNeed3Data",
            dataType: 'json',
            success: function (data) {
                var option = {
                    title: [{
                        text: '各个身份用户数量比例',
                        x:'center',
                        y:'top',
                        backgroundCloor:'rgba(0,0,0,0)',
                        borderColor:'#ccc',
                        borderWidth:0,
                        textStyle:{
                            fontSize:25,
                            fontWeight:'bolder'
                        }
                    }],
                    tooltip: {
                        trigger: 'item',
                        formatter: "{b}:{c}<br>{d}%",
                        borderRadius: 8,           // 提示边框圆角，单位px，默认为4
                        borderWidth: 2,            // 提示边框线宽，单位px，默认为0（无边框）
                        padding: 8,
                        textStyle:{
                            fontSize:25
                        }

                    },
                    //
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        itemWidth: 40,             // 图例图形宽度
                        itemHeight: 20,            // 图例图形高度
                        textStyle: {
                            fontSize:20,
                        }
                    },

                    series: [{

                        name: 'Access From',
                        type: 'pie',
                        radius: '75%',
                        itemStyle: {
                            normal: {
                                // color: 各异,
                                borderColor: '#fff',
                                borderWidth: 1,
                                label: {
                                    show: true,
                                    position: 'outer',
                                    textStyle:{
                                        fontSize:20,
                                    }
                                },
                                labelLine: {
                                    show: true,
                                    length: 20,
                                    lineStyle: {
                                        // color: 各异,
                                        width: 1,
                                        type: 'solid'
                                    }
                                }
                            },
                            emphasis: {
                                // color: 各异,
                                borderColor: 'rgba(0,0,0,0)',
                                borderWidth: 1,
                                label: {
                                    show: false
                                    // position: 'outer'
                                    // textStyle: null      // 默认使用全局文本样式，详见TEXTSTYLE
                                },
                                labelLine: {
                                    show: false,
                                    length: 20,
                                    lineStyle: {
                                        // color: 各异,
                                        width: 1,
                                        type: 'solid'
                                    }
                                }
                            }
                        },


                        data: data


                        //     emphasis: {
                        //     itemStyle: {
                        //         shadowBlur: 10,
                        //         shadowOffsetX: 0,
                        //         shadowColor: 'rgba(0, 0, 0, 0.5)'
                        //     }
                        // }
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        })
        // 指定图表的配置项和数据

    </script>
</body>


</html>