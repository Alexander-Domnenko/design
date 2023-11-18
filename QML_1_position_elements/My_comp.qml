import QtQuick 2.15

Rectangle {
    property alias comp_text: text1.text
    id: rect1
    width: parent.width
    height: parent.height
    color:"gray"
    border.width: 1

    Text {
        id: text1
        font.pixelSize: 24
        anchors.centerIn: parent
    }
}
