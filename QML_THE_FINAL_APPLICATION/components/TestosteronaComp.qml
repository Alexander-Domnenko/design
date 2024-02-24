import QtQuick 2.15
import QtQuick.Window 2.15
Rectangle {
    width: 345
    height: 55
    radius: 10
    color:"transparent"
    border.width: 1
    border.color: "#DEDEDE"
    property string clientName: "Имя клиента"
    property string shortDesc: "Краткое описание"
    property string pathToImage: "path to image"
    Rectangle{
        width: 3
        height: 60
        color:"#242424"
        anchors.left: parent.left
        anchors.verticalCenter:parent.verticalCenter
    }

    Rectangle{
        width: 3
        height: 60
        color:"#242424"
        anchors.right: parent.right
        anchors.verticalCenter:parent.verticalCenter
    }

    Rectangle{
        id:man
        height:50
        width:50
        anchors.left: parent.left
        color:"transparent"
        anchors.verticalCenter: parent.verticalCenter
        Image {
            source: pathToImage
            width:35
            height:35
            anchors.centerIn: parent

        }
    }

    Rectangle{
        id:description
        color:"transparent"
        height:35
        width:110
        anchors.left:man.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 5

        Text {
            id:text1
            anchors.left:parent.left
            anchors.top:parent.top
            text: clientName
            font.pixelSize: 14
            color: "white"
            font.weight: Font.Bold
        }
        Text {
            anchors.left:parent.left
            anchors.top:text1.bottom
            text: shortDesc
            font.pixelSize: 12
            color: Qt.rgba(1, 1, 1, 0.5)
        }

    }

    Rectangle{
        id: phone
        height:50
        width:50
        color:"transparent"
        anchors.right: arrow1.left
        anchors.verticalCenter: parent.verticalCenter
        Image {
            source: "../images/Phone.png"
            width:25
            height:25
            anchors.centerIn: parent
        }
    }

    Rectangle{
        id:chat
        height:50
        width:50
        color:"transparent"
        anchors.right: phone.left
        anchors.verticalCenter: parent.verticalCenter
        Image {
            source: "../images/Chat.png"
            width:25
            height:25
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id:arrow1
        height:50
        width:50
        color:"transparent"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        Image {
            source: "../images/Arrow.png"
            anchors.centerIn: parent
            anchors.fill: parent
        }
    }
}

