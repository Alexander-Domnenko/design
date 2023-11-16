import QtQuick 2.15

Item {
    id: deleg
    property alias input_text: inputText.text
    property alias input_time: timeText.text
    height: inputText.contentHeight + 2 * defMargin + timeText.contentHeight

    Rectangle {
        id: rect
        height: parent.height
        width: parent.width

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ECE9E6" }
            GradientStop { position: 1.0; color: "#ffffff" }
        }

        border.color: "darkgrey"
        radius: 15

        Text {
            id: inputText
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: defMargin + 6
            font.pointSize: 11

        }

        Text {
            id: timeText
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: defMargin / 2 + 4
        }
    }
}
