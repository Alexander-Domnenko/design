import QtQuick 2.15
import QtQuick.Controls 2.15


Window {
    width: 300
    height: 250

    Rectangle {
        width: parent.width
        height: parent.height

        Column {
            anchors.centerIn: parent
            spacing: 10
            TextField {
                id : login
                placeholderText: "Username"
                width: 250
                height: 50
                font.pixelSize: 18
                padding: 10

            }

            TextField {
                id: password
                placeholderText: "Password"
                width: 250
                height: 50
                font.pixelSize: 18
                echoMode: TextInput.Password
                padding: 10

            }

            Row {
                spacing: 10
                Button {
                    text: "Log In"
                    width: 120
                    height: 40
                    font.pixelSize: 18
                    background: Rectangle{
                        color: parent.pressed ? "#002948" :
                                                parent.hovered ? "#4587ba" :
                                                                 "#005291"
                    }
                }

                Button {
                    text: "Clear"
                    width: 120
                    height: 40
                    font.pixelSize: 18
                    background: Rectangle{
                        color: parent.pressed ? "#002948" :
                                                parent.hovered ? "#4587ba" :
                                                                 "#005291"
                    }
                    onClicked: {
                        login.text = ""
                        password.text = ""
                    }
                }
            }
        }
    }
}


