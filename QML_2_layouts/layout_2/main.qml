import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    minimumWidth: 300
    minimumHeight: layoutColumn.implicitHeight
    visible: true
    title: qsTr("Pain")
    color:"snow"
    ColumnLayout{
        id: layoutColumn
        anchors.fill:parent
        spacing:0
        RowLayout{
            My_comp{
                Layout.maximumHeight: 60
                comp_text: "Header"
            }
        }
        RowLayout{
            My_comp{
                Layout.margins: 10
                comp_text: "Content"
                color:"lightGray"
            }
        }
        RowLayout{
            My_comp{
                Layout.maximumHeight: 60
                comp_text: "1"
            }
            My_comp{
                Layout.maximumHeight: 60
                comp_text: "2"
            }
            My_comp{
                Layout.maximumHeight: 60
                comp_text: "3"
            }
        }
    }
}
