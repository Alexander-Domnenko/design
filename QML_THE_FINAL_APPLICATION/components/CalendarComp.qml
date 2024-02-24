
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts





Rectangle{
    width: 340
    height: 340


    function getMonthName(index) {
        var monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"];
        return monthNames[index];
    }


    GridLayout {
        id: gridLayout
        anchors.fill: parent
        columns: 1

        Rectangle{
            id:papa
            anchors.fill: parent
            color:"#242424"
            anchors.centerIn: parent
        }

        RowLayout {
            id: row

            Layout.row: 0
            Layout.preferredHeight: 40
            Layout.bottomMargin:10
            Layout.fillWidth: true


            Rectangle {
                Layout.fillHeight: true
                width: 100
                color: "transparent"

                Text {
                    id: monthText
                    text: getMonthName(grid.month)
                    color: "white"
                    font.bold: true
                    font.pixelSize: 20
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                }
            }
            Rectangle{
                Layout.fillHeight: true
                width:100
                color:"transparent"
                Text {
                    id: yearText
                    text: grid.year
                    color: "white"
                    font.bold: true
                    font.pixelSize: 20
                    anchors.left:monthText.right
                    anchors.leftMargin: 20
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                }
            }

            Button {
                id: forward
                onClicked: gridLayout.decDate()
                Layout.fillHeight: true
                implicitWidth: row.height
                anchors.right: back.left
                Text {
                    text: "<"
                    color: "white"
                    anchors.centerIn: forward
                    font.pixelSize: 20
                }

                background: Rectangle {
                    color: "transparent"
                    width: forward.width
                }
            }

            Button {
                id: back
                onClicked: gridLayout.incDate()
                Layout.fillHeight: true
                implicitWidth: row.height
                anchors.left: row.right
                Text {
                    color: "white"
                    text: ">"
                    font.pixelSize: 20
                    anchors.centerIn: parent
                }
                background: Rectangle {
                    color: "transparent"
                    width: forward.width
                }
            }
        }



        DayOfWeekRow {
            locale: grid.locale
            Layout.row: 1
            Layout.fillWidth: true

            delegate: Text {
                text: model.shortName
                color: "#FFFFFF"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                width: contentWidth+2
                font.pixelSize: 20
            }
        }

        MonthGrid {
            id: grid
            Layout.row: 2
            locale: Qt.locale()
            Layout.fillWidth: true
            Layout.fillHeight: true
            month: monthcb.currentIndex

            delegate: Rectangle{
                id: rect
                color: {
                    if (model.month === grid.month) {
                        return marea.containsMouse ? "cornflowerblue" : model.today ? "green" : date.getDay()%6<=0 ? "lightgrey" : "white";
                    } else {
                        return "#454545";
                    }
                }

                radius: 50


                MouseArea{
                    id: marea
                    anchors.fill: parent
                    hoverEnabled: true
                    onPressed: rect.scale=0.98
                    onReleased: rect.scale=1

                    Text {
                        id: txt
                        anchors.centerIn: parent

                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        text: model.day
                        color: model.month === grid.month ? (marea.containsMouse ? "white" : model.today ? "white" : "#242424") : "white"
                        property var date: model.date

                        font.bold: true
                    }

                }
            }
        }
        function incDate(){
            if (grid.month === Calendar.December) {
                grid.year++
                grid.month=0
            }
            else{
                grid.month++
            }
        }

        function decDate(){
            if (grid.month === Calendar.January) {
                grid.year--
                grid.month=11
            }
            else{
                grid.month--
            }
        }

        function fillMonth(){
            var monthArr=[]
            for(var i=0; i<12; i++){
                var date = new Date(2222, i, 1)
                var month=date.toLocaleDateString(grid.locale).split(' ')[1]
                monthArr.push(month)
            }
            return monthArr
        }

        function fillYear(){
            var yearArr=[]
            var year=new Date().getFullYear()
            for(var i=year-100; i<year+100; i++){
                yearArr.push(i)
            }
            return yearArr
        }

        function findYear(){
            return fillYear().indexOf(grid.year)
        }

        function findMonth(){
            return grid.month
        }
        function getMonthName(index, grid) {
            var date = new Date(2222, index, 1)
            return date.toLocaleDateString(grid.locale, { month: 'long' })
        }


    }

}
