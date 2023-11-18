import QtQuick 2.15

Item {
    width: 90
    height: 90
    property alias compColor2: rect2.color
    Rectangle {
        id:rect2
        color: "#501E05"
        width: parent.width
        height: parent.height
    }
}
