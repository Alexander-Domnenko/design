import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    minimumWidth: 300
    minimumHeight: layoutColumn.implicitHeight
    visible: true
    title: qsTr("Pain again")
    color:"snow"
    ColumnLayout{
        id: layoutColumn
        anchors.fill:parent
        spacing:0
        RowLayout{
            My_comp{
                id: header
                Layout.maximumHeight: 60
                comp_text: "Header 1"
            }
        }
        RowLayout{
            My_comp{
                id: body
                Layout.margins: 10
                comp_text: "Some content 1"
                color:"lightGray"
            }
        }
        RowLayout{
            Layout.maximumHeight: 60
            My_comp{
                id: btn_1
                comp_text: "item 1"
                comp_opacity: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comp_text = "Header 1"
                        body.comp_text = "Item 1 Content"
                        btn_1.comp_opacity = 1
                        btn_2.comp_opacity = 0.5
                        btn_3.comp_opacity = 0.5
                    }
                }

            }
            My_comp{
                id: btn_2
                comp_text: "item 2"
                comp_opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comp_text = "Header 2"
                        body.comp_text = "Item 2 Content"
                        btn_1.comp_opacity = 0.5
                        btn_2.comp_opacity = 1
                        btn_3.comp_opacity = 0.5
                    }
                }

            }
            My_comp{
                id: btn_3
                comp_text: "item 3"
                comp_opacity: 0.5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comp_text = "Header 3"
                        body.comp_text = "Item 3 Content"
                        btn_1.comp_opacity = 0.5
                        btn_2.comp_opacity = 0.5
                        btn_3.comp_opacity = 1
                    }
                }

            }
        }
    }
}
