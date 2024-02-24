import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias text: textField.text
    property alias placeholder: textField.placeholderText
    property alias placeholderColor: textField.placeholderTextColor
    property alias textColor: textField.color

    width: parent.width
    height: 32

    TextField {
        id: textField
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: underline.top
        }
        placeholderText: "Enter your login"
        placeholderTextColor: "#555555"
        font.pixelSize: 16
        color: "#DEDEDE"  // Белый цвет текста
        background: Rectangle {
            color: "#242424"  // Цвет заднего фона текстового поля
        }
        echoMode: TextInput.Password
        onActiveFocusChanged: {
            // Изменяем цвет линии под полем при взаимодействии с полем
            underline.color = activeFocus ? "#3DD9A1" : "#DEDEDE";
        }
    }

    Rectangle {
        id: underline
        width: parent.width
        height: 2
        color: "#DEDEDE"
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
    }
}
