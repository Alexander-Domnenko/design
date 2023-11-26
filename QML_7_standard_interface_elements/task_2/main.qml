import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 600

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10
        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
        }

        Rectangle {
            id: passwordField
            color: "white"
            border.width: 2
            border.color: "black"
            width: parent.width
            height: 50
            Layout.alignment: Qt.AlignCenter
            property string text: ""
            RowLayout {
                spacing: 6
                anchors.centerIn: parent
                Repeater {
                    model:6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        color:index <passwordField.text.length ? "black" : "light grey"
                    }
                }
            }
        }

        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            width: parent.width
            Button { text: "1"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "1" } }
            Button { text: "2"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "2" } }
            Button { text: "3"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "3" } }
            Button { text: "4"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "4" } }
            Button { text: "5"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "5" } }
            Button { text: "6"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "6" } }
            Button { text: "7"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "7" } }
            Button { text: "8"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "8" } }
            Button { text: "9"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "9" } }
            Button { text: "" }
            Button { text: "0"; onClicked: { if(passwordField.text.length < 6) passwordField.text += "0" } }
            Button { text: "Clear"; onClicked: passwordField.text = "" }
            Button { text: "Log In"}
        }
    }
}
