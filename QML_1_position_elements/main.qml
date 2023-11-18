import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Pain")
    Item {
        anchors.fill: parent
        id: root
        My_comp {
            id: header
            width: parent.width
            height: 75
            comp_text: "Header"

        }

        My_comp {
            id: content
            width: parent.width
            height: parent.height * 0.6
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: footer.top
            anchors.margins: 10
            comp_text: "Content"
            color: "lightGray"
        }



        My_comp{
            id: footer
            height: 75
            anchors.bottom: parent.bottom
            My_comp {
                id: element_footer_1
                width: parent.width / 3
                comp_text: "1"
                anchors.left: parent.left
            }

            My_comp {
                id: element_footer_2
                width: parent.width / 3
                comp_text: "2"
                anchors.left: element_footer_1.right
            }

            My_comp {
                id: element_footer_3
                width: parent.width / 3
                anchors.left: element_footer_2.right
                comp_text: "3"
            }
        }



    }
}
