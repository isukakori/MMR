$.ajax({
    type: "get",
    url: ctx + "/echarts/processdata",
    dataType: "json",
    success: function (data) {
        option = {
            title: {
                text: '角色用户数量图',
                left: 'center'
            },
            tooltip: {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                left: 'left'
            },
            series: [
                {
                    name: 'Access From',
                    type: 'pie',
                    radius: '50%',
                    data: [],
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);


        data.forEach(item => {
            option.series[0].data.push({name: item.roleName, value: item.count})
        })
        myChart.setOption(option);

    }
})