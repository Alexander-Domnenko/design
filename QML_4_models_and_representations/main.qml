import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Pain")
    property int defMargin: 8
    Page{

        id: page
        anchors.fill: parent
        spacing: defMargin*2

        header: PageHeader {

        }

        footer: PageMessageEditor {
            onNewMessage: {
                var newMsg = {};
                newMsg.text = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                listModel.append(newMsg);
            }
        }
        background:PageBackground{

        }

        ListView{
            id: listView
            anchors.fill:parent
            model:listModel
            spacing: defMargin
            ScrollBar.vertical: ScrollBar {}
            delegate: MyComp{

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: defMargin*2
                input_text:  model.text
                input_time: model.time

            }
        }
        ListModel {
            id: listModel

            ListElement {
                text: "Ivan";
                time: "13:09";

            }

        }
    }
}
