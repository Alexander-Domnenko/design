import QtQuick 2.15
Rectangle{
    id:rect1
    width:300
    height: 100
    border.width: 1
    color:"gray"

    Text{
        text:"My color: "+rect1.color
        anchors.centerIn: rect1
        font.pixelSize: 24
    }
}
