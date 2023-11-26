import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    width: 400
    height: 600
    title: qsTr("Hello World")

    property int defMargin: 10
    header:ToolBar{
        id:page_header
        height:40
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                    id:arrow
                    text: "<-"
                    font.pixelSize: 24
                    visible:stack_view.currentItem != page1
                    anchors.verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    if (stack_view.currentItem == page2) {
                        stack_view.replace(page1)

                    }
                    if (stack_view.currentItem == page3) {
                        stack_view.replace(page2)
                    }
                }

            }
            Text{
                id:header_page_text
                font.pixelSize: 24
                leftPadding: 10
                text: {
                    if (stack_view.currentItem == page1) {
                        return "It's first page"
                    }
                    if (stack_view.currentItem == page2) {
                        return "It's second page"
                    }
                    if (stack_view.currentItem == page3) {
                        return "It's third page"
                    }

                }
            }
        }
    }

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page1
    }

    My_Page {
        id: page1
        backgroundColor: "red"
        buttonText: "To_green"
        button2Text: "To_yellow"


        onButtonClicked: {
            stack_view.replace(page3)
        }
        onButton2Clicked: {
            stack_view.replace(page2)
        }
    }

    My_Page {
        id: page2
        backgroundColor: "yellow"
        buttonText: "To_red"
        button2Text: "To_green"

        onButtonClicked: {
            stack_view.replace(page1)
        }
        onButton2Clicked: {
            stack_view.replace(page3)
        }
    }
    My_Page {
        id: page3
        backgroundColor: "green"
        buttonText: "To_yellow"
        button2Text: "To_red"

        onButtonClicked: {
            stack_view.replace(page2)
        }
        onButton2Clicked: {
            stack_view.replace(page1)
        }
    }
}
