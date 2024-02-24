import QtQuick 2.9
import QtQuick.Layouts 1.3
Rectangle {
    id: rect1
    width: 165
    height: 40
    color: "transparent"

    Image {
        width: 40
        height: 40
        id: image1
        source: "../images/profile.png"
    }

    ColumnLayout {
        anchors.fill:parent
        anchors.leftMargin: 60
        anchors.topMargin: 5
        spacing: 2
        Text {
            text: "Profile_name"
            font.pixelSize: 14

        }

        Text {
            text: "3D designer"
            font.pixelSize: 10
        }
    }
}
