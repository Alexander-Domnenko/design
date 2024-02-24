import QtQuick 2.9
import QtQuick.Controls 2.5
import QtCharts

Rectangle {

   implicitWidth: 360
    implicitHeight: 360
    color: "#242424"

    ChartView {
        id: chart
        anchors.fill: parent
        antialiasing: false
        legend.visible: false
        animationOptions: ChartView.AllAnimations
        backgroundColor: "transparent"
        titleColor: "white"
        anchors.centerIn: parent

        PieSeries {
            id: pieSeries

            PieSlice {
                label: value + "%"
                value: 62
                color: "#0066FF"
                labelVisible: true
                labelPosition: PieSlice.LabelInsideHorizontal
                labelColor: "white"
                labelFont.bold: true
                labelFont.pixelSize: 24
                borderColor: "#242424"
            }

            PieSlice {
                label: value + "%"
                value: 25
                color: "#BD00FF"
                labelVisible: true
                labelPosition: PieSlice.LabelInsideHorizontal
                labelColor: "white"
                labelFont.bold: true
                exploded: true
                explodeDistanceFactor: 0.05
                labelFont.pixelSize: 24
                borderWidth: 0
                borderColor: "#242424"
            }

            PieSlice {
                label: value + "%"
                value: 13
                color: "#FF7A00"
                labelVisible: true
                labelPosition: PieSlice.LabelInsideHorizontal
                labelColor: "white"
                labelFont.bold: true
                labelFont.pixelSize: 15
                exploded: true
                explodeDistanceFactor: 0.05
                borderWidth: 0
                borderColor: "#242424"
            }
        }
    }
}
