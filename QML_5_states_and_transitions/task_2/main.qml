import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Window {
    minimumWidth: 300
    minimumHeight: layoutColumn.implicitHeight
    visible: true
    title: qsTr("Pain")
    color: "snow"

    ColumnLayout {
        id: layoutColumn
        anchors.fill: parent
        spacing: 0

        RowLayout {

            My_comp {
                id: header
                Layout.maximumHeight: 60
                comp_text: "Header 1"

                Text {
                    id:arrow
                    text: "<-"
                    font.pixelSize: 24
                    font.bold: true
                    opacity:0;
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 10
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (footer.state === "btn3") {
                                footer.state = "btn2";

                            }else{
                                footer.state = "btn1"
                            }
                        }
                    }
                }

            }
        }

        RowLayout {
            My_comp {
                id: body
                Layout.margins: 10
                comp_text: "Some content 1"
                color: "lightGray"
            }
        }

        RowLayout {
            id: footer
            state: "btn1"
            My_comp {
                id: btn_1
                Layout.maximumHeight: 60
                comp_text: "item 1"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (footer.state !== "btn1") {
                            footer.state = "btn1";
                        }
                    }
                }
            }

            My_comp {
                id: btn_2
                Layout.maximumHeight: 60
                comp_text: "item 2"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (footer.state !== "btn2") {
                            footer.state = "btn2";
                        }
                    }
                }
            }

            My_comp {
                id: btn_3
                Layout.maximumHeight: 60
                comp_text: "item 3"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (footer.state !== "btn3") {
                            footer.state = "btn3";
                        }

                    }
                }
            }

            states: [
                State {
                    name: "btn1"
                    PropertyChanges { target: btn_1; comp_opacity: 1; }
                    PropertyChanges { target: btn_2; comp_opacity: 0.5; }
                    PropertyChanges { target: btn_3; comp_opacity: 0.5; }
                    PropertyChanges { target: header; comp_text: "Header 1";}
                    PropertyChanges { target: body; comp_text: "Item 1 Content"; }
                },
                State {
                    name: "btn2"
                    PropertyChanges { target: btn_1; comp_opacity: 0.5; }
                    PropertyChanges { target: btn_2; comp_opacity: 1; }
                    PropertyChanges { target: btn_3; comp_opacity: 0.5; }
                    PropertyChanges { target: header; comp_text: "Header 2";}
                    PropertyChanges { target: body; comp_text: "Item 2 Content"; }
                    PropertyChanges { target: arrow; opacity: 1; }

                },
                State {
                    name: "btn3"
                    PropertyChanges { target: btn_1; comp_opacity: 0.5; }
                    PropertyChanges { target: btn_2; comp_opacity: 0.5; }
                    PropertyChanges { target: btn_3; comp_opacity: 1; }
                    PropertyChanges { target: header; comp_text: "Header 3";}
                    PropertyChanges { target: body; comp_text: "Item 3 Content"; }
                    PropertyChanges { target: arrow; opacity: 1; }
                }
            ]

            transitions: [
                Transition {
                    ParallelAnimation {
                        PropertyAnimation { properties: "comp_opacity"; duration: 500; }
                        PropertyAnimation { properties: "comp_text"; duration: 1000; }
                        PropertyAnimation { properties: "opacity"; duration: 1000; }

                    }
                    SequentialAnimation{
                        NumberAnimation { target: body; property: "comp_x"; from: 10; to: -layoutColumn.width; duration: 600; easing.type: Easing.Linear}
                        NumberAnimation { target: body; property: "comp_x"; from: layoutColumn.width; to: 10; duration: 600; easing.type: Easing.Linear}
                    }
                    SequentialAnimation{
                        NumberAnimation {target: header; property: "comp_x"; from: 0; to: -layoutColumn.width; duration: 600; easing.type:Easing.Linear}
                        NumberAnimation {target: header; property: "comp_x"; from: layoutColumn.width; to: 0; duration: 600; easing.type: Easing.Linear
                        }
                    }
                }
            ]
        }
    }
}
