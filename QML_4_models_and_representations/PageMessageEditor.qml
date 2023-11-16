import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    height: 60


    signal newMessage(string msg)

    TextField {
        id: edtText
        selectByMouse: true
        anchors.fill: root
        placeholderText: "Write a message..."
        font.pointSize: 10
        background: Rectangle {
            color: "#282828"
        }
        color: "white"
        placeholderTextColor:"white"

    }

    Button {
        id: btnAddItem
        height: root.height
        width: 80
        anchors.right: parent.right
        text: "Send"

        background: Rectangle {
            color: "white"

        }

        onClicked: {
            newMessage(edtText.text);
            edtText.clear();
        }
    }
}
