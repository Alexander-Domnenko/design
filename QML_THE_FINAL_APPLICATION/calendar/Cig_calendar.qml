import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../components"

Rectangle {
    implicitHeight: 640
    implicitWidth: 360

    color: "#242424"
    CustomButton{
        id: upper_btn
        buttonColor: "#DEDEDE"
        textColor: "#242424"
        buttonText: "Фильтр"
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
            anchors.rightMargin: 15
        }

    }


    CustomButton{
        buttonColor: "#E74444"
        textColor: "#DEDEDE"
        buttonText: "Удалить"
        buttonHeight:26
        buttonWidth: 117
        anchors.right:parent.right
        anchors.rightMargin: 10
        anchors.topMargin: 20
        anchors.top:parent.top
        horizontalAlign:Text.AlignLeft
        textPaddingLeft: 15
        Image {
            width: 20
            height: 20
            id: image2
            source: "../images/Trash.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 15
        }

    }



    CalendarComp{
        anchors.topMargin: 20
        id: calendar
        anchors.top: upper_btn.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }




    CustomButton{
        buttonColor: "#DEDEDE"
        textColor: "#242424"
        buttonText: "Напоминать"
        buttonHeight:32
        buttonWidth: 117
        anchors.left:parent.left
        anchors.top:calendar.bottom
        anchors.topMargin: 30
        anchors.leftMargin: 10
        horizontalAlign:Text.AlignLeft
        textPaddingLeft: 8
        Image {
            width: 20
            height: 20
            id: image3
            source: "../images/alarm.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 8
        }

    }

    CustomButton{
        buttonColor: "#DEDEDE"
        textColor: "#242424"
        buttonText: "Добавить"
        buttonHeight:32
        buttonWidth: 117
        anchors.right:parent.right
        anchors.rightMargin: 10
        anchors.top:calendar.bottom
        anchors.topMargin: 30
        horizontalAlign:Text.AlignLeft
        textPaddingLeft: 8
        Image {
            width: 20
            height: 20
            id: image4
            source: "../images/bell.png"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 8

        }

    }

}
