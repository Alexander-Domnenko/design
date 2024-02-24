import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Rectangle {
    id: ring
    property alias resultColor: resultText.color
    property alias resultFontSize: resultText.font.pixelSize
    property alias resultValue: resultValue.text
    property alias ringColor: ring.border.color

    width: 214
    height: 214
    color: "#242424"
    Layout.alignment: Qt.AlignHCenter
    radius: 360
    border.color: "#DEDEDE"
    border.width: 25

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10

        Text {
            id: resultText
            Layout.alignment: Qt.AlignHCenter
            text: "РЕЗУЛЬТАТ"
            color: "#DEDEDE"
            font.family: "Montserrat extrabold"
            font.pixelSize: 16
        }

        Text {
            id: resultValue
            Layout.alignment: Qt.AlignHCenter
            text: "0 RUB"
            color: "#DEDEDE"
            font.family: "Montserrat extrabold"
            font.pixelSize: 16
        }
    }
}
