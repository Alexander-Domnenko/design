import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../components"
ScrollView {
    anchors.fill: parent
Rectangle {
    implicitWidth: 360
    implicitHeight: 830
    color: "#242424"
    id: papa



    CustomButton{
        id: upper_btn
        buttonColor: "#DEDEDE"
        textColor: "#242424"
        textSize: 15
        buttonText: qsTr("Фильтр")
        buttonHeight:26
        buttonWidth: 117
        anchors.left:parent.left
        anchors.top:parent.top
        anchors.leftMargin: 10
        anchors.topMargin: 20
        horizontalAlign:Text.AlignLeft
        textPaddingLeft: 15
        Image {
            width: 20
            height: 20
            id: image1
            source: "../images/filter.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 15
        }

    }
    CustomButton{

        buttonColor: "#DEDEDE"
        textColor: "#242424"
        textSize: 15
        buttonText: qsTr("Поиск")
        buttonHeight:26
        buttonWidth: 117
        anchors.right:parent.right
        anchors.top:parent.top
        anchors.rightMargin: 10
        anchors.topMargin: 20
        horizontalAlign:Text.AlignLeft
        textPaddingLeft: 15
        Image {
            width: 20
            height: 20
            id: image2
            source: "../images/Search.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 15
        }

    }
    Rectangle {
        id: nameCircleDiagram
        width: parent.width
        color: "transparent"
        height: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: upper_btn.bottom
        anchors.topMargin:25
        Text {
            text: qsTr("Тип работ выполнено")
            font.bold: true
            font.pixelSize: 15
            anchors.centerIn: parent
            color:"white"
        }
        z:1
    }

    CustomCircleDiagram {
        id: circleDiagram
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:nameCircleDiagram.bottom
        anchors.topMargin: -40
    }

    Rectangle {
        id: labelCircleDiagram
        width: parent.width
        color: "transparent"
        height: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: circleDiagram.bottom
        anchors.topMargin:-40
        Rectangle{
            id:rect1
            width: 240
            height:15
            color:"transparent"
            anchors.centerIn: parent
            Rectangle{
                id:project
                width:85
                height:15
                color:"transparent"
                anchors.leftMargin: 15
                anchors.left:parent.left
                Rectangle{
                    anchors.left:parent.left
                    color:"#FF7A00"
                    width:15
                    height:15
                }
                Text{
                    text: qsTr("Проект")
                    font.pixelSize: 12
                    color:"white"
                    anchors.centerIn: parent
                }
            }
            Rectangle{
                id:ddd
                width:70
                height:15
                color:"transparent"
                anchors.left:project.right
                Rectangle{
                    anchors.left:parent.left
                    color:"#BD00FF"
                    width:15
                    height:15

                }
                Text{
                    text: qsTr("3D")
                    font.pixelSize: 12
                    anchors.centerIn: parent
                    color:"white"
                }
            }
            Rectangle{
                id:order
                width:85
                height:15
                color:"transparent"
                anchors.left:ddd.right


                Rectangle{
                    anchors.left:parent.left
                    color:"#0066FF"
                    width:15
                    height:15


                }
                Text{
                    text: qsTr("Заказы")
                    font.pixelSize: 12
                    color:"white"
                    anchors.centerIn: parent
                }
            }

        }
        Rectangle{
            id:stolbickdiagram
            height:360
            width:papa.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:rect1.bottom
            anchors.topMargin: 20
            color:"transparent"
            CustomStolbickDiagram{
                anchors.fill:parent

            }
        }
        Rectangle {
            id:legend
            height:20
            width:302
            anchors.horizontalCenter: parent.horizontalCenter
            color:"transparent"
            anchors.top:stolbickdiagram.bottom
            anchors.topMargin: -20

            Repeater {
                model: 12
                delegate: Rectangle {
                    height: parent.height
                    width: 25
                    color:"transparent"
                    Text {
                        text: (index + 1).toString()
                        anchors.centerIn: parent
                        color:"white"
                        font.pixelSize: 14
                    }
                    anchors {
                        left: index === 0 ? parent.left : parent.children[index - 1].right
                    }
                }
            }
        }
        Rectangle{
            width:parent.width
            height: 20
            anchors.top:legend.bottom
            anchors.topMargin: 10
            color:"transparent"

            Text{
                anchors.centerIn: parent
                text:"Месяца"
                color:"#DEDEDE"
                font.pixelSize: 14
            }
        }
        Rectangle{
            width:75
            height: 20
            anchors.verticalCenter: stolbickdiagram.verticalCenter
            anchors.left:stolbickdiagram.laeft
            anchors.topMargin: 10
            rotation:-90
            color:"transparent"


            Text{
                anchors.centerIn: parent
                text:"Коэффициент"
                color:"#DEDEDE"
                font.pixelSize: 14
            }
        }


        z:1



    }

}
}
