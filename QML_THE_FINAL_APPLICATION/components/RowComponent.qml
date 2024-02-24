import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: rowComponent

    property alias imageSource: image1.source
    property alias buttonText: text1.text

    Image {
        id: image1
        width: image1.sourceSize.width
        height: image1.sourceSize.heigh
        anchors.verticalCenter: parent.verticalCenter

    }
    Text {
        id: text1
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: image1.right
        anchors.leftMargin: 25
    }

}
