import QtQuick 2.15

Item {
    property alias compColor: rect1.color
    width: 90
    height: 90
    Rectangle {
        id: rect1
        width: parent.width
        height: parent.height
    }
}
