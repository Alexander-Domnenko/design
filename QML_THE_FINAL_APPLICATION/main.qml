import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"


ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 640
    title: qsTr("Tired")
    property color colorDrawer:"#DEDEDE"
    property color textColorDrawer:"#242424"
    property int myMargin:10
    property string labelText: "Название проекта"

    function updateHeaderTitle(newTitle) {
        labelText = newTitle
    }

    header: ToolBar {
        background: Rectangle{
            color:"#242424"
        }
        contentHeight: toolButton.implicitHeight
        RowLayout {
            anchors.fill:parent
            spacing: 10
            ToolButton {
                id: toolButton
                implicitWidth:50
                implicitHeight:50
                Image {

                    id: burgerbttn
                    source: "images/Burgerbttn.png"
                    anchors.fill: parent

                }
                onClicked: {
                    drawer.open()
                }
                background: Rectangle{
                    color:"#242424"
                }
            }
            Label {
                text: labelText
                font.bold: true
                font.pixelSize: 16
                anchors.centerIn: parent
                color: "white"
            }

        }
    }




    Drawer {
        id: drawer
        width: parent.width * 0.65
        height: parent.height
        Rectangle {
            id:dop
            color: colorDrawer
            anchors.fill: parent
        }
        ColumnLayout {
            anchors.fill: parent
            RowLayout{
                Layout.topMargin: 20
                Layout.bottomMargin: 10
                Layout.alignment: Qt.AlignHCenter
                Text{
                    text:"ArtCalc - MENU"
                }
            }
            RowLayout {
                ProfileComp {
                    Layout.leftMargin: 15
                    Layout.bottomMargin: 20
                }
            }
            RowLayout{
                Button {
                    id: btn1
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("calculate/Calculate.qml")
                        drawer.close()
                        updateHeaderTitle("Название проекта")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Calculator.png"
                            buttonText: "Рассчитать"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn2
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Projects list.qml")
                        drawer.close()
                        updateHeaderTitle("Проекты")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Bullet List.png"
                            buttonText: "Список проектов"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn3
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("./statistics/Statistics.qml")
                        drawer.close()
                        updateHeaderTitle("Статистика")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Graph.png"
                            buttonText: "Статистика"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn4
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("./clients/My_clients.qml")
                        drawer.close()
                        updateHeaderTitle("Мои клиенты")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Group.png"
                            buttonText: "Мои клиенты"
                        }
                    }
                }
            }

            RowLayout{
                Button {
                    id: btn5
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("./calendar/Cig_calendar.qml")
                        drawer.close()
                        updateHeaderTitle("Календарь")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Tear-Off Calendar.png"
                            buttonText: "Календарь"
                        }
                    }
                }
            }
            RowLayout{
                Button {
                    id: btn6
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("Settings.qml")
                        drawer.close()
                        updateHeaderTitle("Настройки")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Automatic.png"
                            buttonText: "Настройки "
                        }
                    }
                }
            }
            RowLayout{
                Button {

                    id: btn7
                    Layout.fillWidth: true
                    onClicked: {
                        stackView.push("About_ArtCalc.qml")
                        drawer.close()
                        updateHeaderTitle("О приложении")
                    }
                    Rectangle{
                        anchors.fill:parent
                        color:colorDrawer
                    }
                    RowLayout{
                        anchors.fill:parent
                        RowComponent {
                            Layout.leftMargin: 25
                            imageSource: "../images/Info.png"
                            buttonText: "О приложении"
                        }
                    }
                }
            }
            RowLayout{
                Rectangle{
                    height:drawer.height / 1.7
                }

            }

        }

    }


    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "calculate/Calculate.qml"
    }

}

