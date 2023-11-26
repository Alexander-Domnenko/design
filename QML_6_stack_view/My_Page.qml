import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


Page{

    id:root
    property alias backgroundColor:back_fon.color
    property alias buttonText:batton_nav.text
    property alias button2Text:batton2_nav.text
    signal buttonClicked();
    signal button2Clicked();
    background: Rectangle{
    id:back_fon
    }
    Button {
        id:batton_nav
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClicked()
        }
    }
    Button {
        id:batton2_nav
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.button2Clicked()
        }
    }
}
