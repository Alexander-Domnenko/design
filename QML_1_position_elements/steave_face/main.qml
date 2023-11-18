import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 600
    visible: true
    title: qsTr("Pain")
    color: "#E89859"
    Item{
        anchors.fill: parent

        HairstyleComp {
            id: rect2
        }
        MyComp {
            id: rect3
            anchors.top: rect2.bottom
        }
        MyComp {
            id: rect4
            anchors.top: rect2.bottom
            anchors.right:parent.right
        }
        MyComp {
            id: rect5
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: 160
        }
        MyComp {
            anchors.bottom: rect11.top
            anchors.horizontalCenter: parent.horizontalCenter
            width:150
            compColor2:"#C2713C"
        }

        EyesComp {
            id: rect7
            anchors.left: rect3.right
            compColorEyes: "#FFFFFF"
        }
        EyesComp {
            id: rect8
            anchors.right: rect4.left
            compColorEyes: "#FFFFFF"
        }
        EyesComp {anchors.left: rect7.right}
        EyesComp {anchors.right: rect8.left}

        MouthComp {
            id: rect11
            anchors.bottom: rect5.bottom
            anchors.right:rect5.left
        }
        MouthComp {
            anchors.bottom: rect5.bottom
            anchors.left:rect5.right
        }
    }
}
