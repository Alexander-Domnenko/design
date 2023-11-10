import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    minimumWidth: layoutColumn.implicitWidth
    minimumHeight: layoutColumn.implicitHeight
    visible: true
    title: qsTr("Pain")
    ColumnLayout{
        id: layoutColumn
        anchors.fill: parent
        My_comp{
        }
        My_comp{
        }
        My_comp{
        }
    }
}
