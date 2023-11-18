import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("hardship")

    Rectangle {
        width: 500
        height: 400
        color: "lightblue"
        anchors.centerIn: parent

        Column {
            anchors.centerIn: parent
            spacing: 10

            Rectangle {
                id: rect_red
                width: 100
                height: 100
                color: "red"
            }

            Rectangle {
                id: rect_yellow
                width: 100
                height: 100
                color: "yellow"
            }

            Rectangle {
                id: rect_green
                width: 100
                height: 100
                color: "green"
            }
        }

        states: [
            State {
                name: "stop"
                PropertyChanges { target: rect_red; color: "red"}
                PropertyChanges { target: rect_yellow; color: "black"}
                PropertyChanges { target: rect_green; color: "black"}
            },
            State {
                name: "caution"
                PropertyChanges { target: rect_red; color: "black"}
                PropertyChanges { target: rect_yellow; color: "yellow"}
                PropertyChanges { target: rect_green; color: "black"}
            },
            State {
                name: "go"
                PropertyChanges { target: rect_red; color: "black"}
                PropertyChanges { target: rect_yellow; color: "black"}
                PropertyChanges { target: rect_green; color: "green"}
            }
        ]

        transitions:[
            Transition {
                ColorAnimation {duration: 1000}
                from: "stop"
                to: "caution"},
            Transition {
                ColorAnimation {duration: 1000}
                from: "caution"
                to: "go"},
            Transition {
                ColorAnimation {duration: 1000}
                from: "go"
                to: "stop"}
        ]

        state: "stop"
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

    }
}
