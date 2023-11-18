import QtQuick 2.15

Item {
    property alias compColorEyes: eyes.color
    height:75
    width:70
    Rectangle {
        id: eyes
        color: "#4509B9"
        width: parent.width
        height: parent.height
        y: 240
    }

}
