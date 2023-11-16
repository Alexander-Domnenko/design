import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    height: 60
    color:"#282828"

    Rectangle {
        id: imgAvatar
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: defMargin

        height: root.height*0.75
        width: height
        radius: height/2
        color: "white"

        Text {
            anchors.centerIn: parent
            font.pixelSize: parent.height*0.5
            text: "A"
            color: "black"
        }
    }

    Label {
        text: "Александр"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        color: "white"
        anchors.margins: defMargin *3
        font.pointSize: 15
    }
}
