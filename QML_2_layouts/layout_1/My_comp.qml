import QtQuick 2.15
import QtQuick.Layouts 1.3

Rectangle{
    id:rect1
    width:300
    height: 100
    border.width: 1
    color:Qt.rgba(Math.random(),Math.random(),Math.random())
    Layout.fillWidth: true
    Layout.fillHeight: true
    Text{
        text:"My color: "+rect1.color
        anchors.centerIn: rect1
        font.pixelSize: 24
    }
}
