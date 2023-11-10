import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Rectangle {
    implicitHeight: 100
    width: 200
    color: Qt.rgba(Math.random(), Math.random(),Math.random())

    Text {
        anchors.centerIn: parent
        font.pointSize: 16
        text: "Width: " + parent.width + "\nHeight: " + parent.height
    }
}
