import QtQuick 2.15
import QtQuick.Layouts 1.3

Rectangle{
    property alias comp_text: text1.text
    id:rect1
    width:300
    border.width: 1
    color:"gray"
    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.minimumHeight: 60
    Text{
        id: text1
        anchors.centerIn: rect1
        font.pixelSize: 24
    }
}
