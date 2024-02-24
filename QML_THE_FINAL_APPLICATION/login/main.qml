import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import "../components"

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Login Page"
    font.family: "Montserrat medium"

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: Item {
            Rectangle {
                width: parent.width
                height: parent.height
                color: "#242424" // Черный цвет фона

                Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter // Вертикальное выравнивание

                    spacing: 10
                    width: parent.width - 40
                    height: parent.height - 60

                    Image {
                        source: "res/logo.svg"  // Укажите правильный путь к вашему логотипу
                        width: 110
                        height: 110
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    // Название
                    Text {
                        text: "ArtCalc"
                        font.family: "Montserrat extrabold"
                        font.pixelSize: 16
                        color: "#DEDEDE"
                        anchors.horizontalCenter: parent.horizontalCenter // Белый цвет текста
                    }

                    // Надпись "Войдите в аккаунт"
                    Text {
                        text: "Войдите в аккаунт"
                        font.pixelSize: 26
                        font.family: "Montserrat extrabold"
                        width: parent.width
                        color: "#DEDEDE"  // Белый цвет текста
                        horizontalAlignment: Text.AlignHCenter
                        bottomPadding: 25
                        topPadding: 25
                    }

                    // Надпись для поля "логин"
                    Text {
                        text: "ЛОГИН"
                        font.pixelSize: 10
                        color: "#DEDEDE"  // Белый цвет текста
                    }

                    // Текстовое поле "логин"
                    CustomTextField {
                        id: loginField
                        placeholder: "Введите логин"
                    }

                    // Надпись для поля "пароль"
                    Text {
                        text: "ПАРОЛЬ"
                        font.pixelSize: 10
                        color: "#DEDEDE"  // Белый цвет текста
                    }

                    // Текстовое поле "пароль"
                    CustomPassField {
                        id: passwordField
                        placeholder: "Введите пароль"
                    }

                    Row {
                        topPadding: 15
                        spacing: 25

                        CustomButton {
                            text: "ВОЙТИ"
                            textSize: 18
                            onClicked: {
                                console.log("Logging in with login:", loginField.text, "and password:", passwordField.text);
                                stackView.push("../main.qml"); // Переключение на новую страницу
                                loginField.text = "";
                                passwordField.text = "";
                            }
                        }

                        Rectangle {
                            width: 145
                            height: 40
                            color: "#242424"  // Цвет фона
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    console.log("Switch to change password page!");
                                    loginField.text = "";
                                    passwordField.text = "";
                                }
                            }

                            Text {
                                anchors.centerIn: parent
                                text: "Забыли пароль?"
                                color: "#DEDEDE"  // Цвет подчеркивания
                                font.underline: true
                                font.pixelSize: 16
                            }
                        }
                    }
                }
            }
        }
    }
}
