import QtQuick 2.9
import "../components"
Rectangle {
    width: 360
    height: 640
    color: "#242424"

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
        buttonColor: "#E74444"
        textColor: "#DEDEDE"
        buttonText: qsTr("Удалить")
        textSize: 15
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
    TestosteronaComp{
        id:client1
        clientName:"Имя клиента"
        shortDesc: "Краткое описание"
        pathToImage: "../images/man1.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:upper_btn.bottom
        anchors.topMargin: 20
    }
    TestosteronaComp{
        id:client2
        clientName:"DanyaXD"
        shortDesc: "Монтаж"
        pathToImage: "../images/man2.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:client1.bottom
        anchors.topMargin: 10
    }
    TestosteronaComp{
        id:client3
        clientName:"Александр"
        shortDesc: "Клиент по 3D"
        pathToImage: "../images/man3.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:client2.bottom
        anchors.topMargin: 10

    }
    CustomButton {
              id: calcBttn
              text: qsTr("Добавить клиента")
              buttonWidth: parent.width - 20
              textSize: 18
              anchors.horizontalCenter: parent.horizontalCenter
              anchors.top:client3.bottom
              anchors.topMargin: 20
          }
}
