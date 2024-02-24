import QtQuick
import QtQuick.Controls
import QtCharts


    ChartView {
        title: "Доходность"
        anchors.fill: parent
        antialiasing: true
        animationOptions: ChartView.AllAnimations
        legend.visible: false
        titleFont.pixelSize: 15
        titleFont.bold: true
        titleColor: "white"
        backgroundColor: "transparent"


        BarSeries {
            id: mySeries
            barWidth: 0.9

            axisX: BarCategoryAxis {
                categories: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
                gridVisible: false
                titleText: "Месяца"
                titleFont.pixelSize: 12
                visible:false
                lineVisible: false


            }

            axisY: BarCategoryAxis {
                gridVisible: false
                lineVisible: false
                titleVisible: true
                titleText: "Коэффициент"
                titleFont.pixelSize: 12
                visible:false




            }

            BarSet {
                color: "#3DD9A1"
                values: [2, 3, 10, 5, 7, 15, 20, 15, 12, 2, 8, 25]
                borderColor: "#242424"
            }
        }


    }


