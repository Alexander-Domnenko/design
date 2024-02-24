import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property alias buttonColor: backgroundRectangle.color
    property alias textColor: buttonText.color
    property alias buttonText: buttonText.text
    property alias buttonWidth: backgroundRectangle.implicitWidth
    property alias buttonHeight: backgroundRectangle.implicitHeight
    property alias textSize: buttonText.font.pixelSize
    property alias textStyle: buttonText.font.family
    property alias horizontalAlign: buttonText.horizontalAlignment
    property alias textPaddingLeft: buttonText.leftPadding

    background: Rectangle {
        id: backgroundRectangle
        color: "#3DD9A1"
        radius: 30
        implicitHeight: 40
        implicitWidth: 145
    }

    contentItem: Text {
        id: buttonText
        text: parent.text
        color: "#DEDEDE"
        font.family: "Montserrat extrabold"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

    }
}
