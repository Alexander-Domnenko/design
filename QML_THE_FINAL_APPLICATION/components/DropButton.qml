// DropButton.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ComboBox {
    property alias comboBoxColor: customBackgroundRectangle.color
    property alias textColor: customContentText.color
    property alias textSize: customContentText.font.pixelSize
    property alias borderRadius: customBackgroundRectangle.radius
    property alias comboBoxWidth: customBackgroundRectangle.width
    property alias comboBoxHeight: customBackgroundRectangle.height
    property alias textAlignOffset: customContentText.anchors.verticalCenterOffset
    property alias customDisplayText: customContentText.text

    id: root
    currentIndex: -1

    delegate: ItemDelegate {
        id: delegateItem
        width: root.width

        contentItem: Text {
            text: modelData
            color: root.textColor
            font.pixelSize: root.textSize
            font.family: "Montserrat extrabold"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
            width: Math.min(root.width - 20, implicitWidth)
        }

        background: Rectangle {
            width: parent.width
            height: parent.height
            color: index === root.currentIndex ? "#3DD9A1" : "#DEDEDE"
            radius: root.borderRadius
        }
    }

    // Убран блок с индикатором
    indicator: Canvas {
        visible: false
    }

    contentItem: Item {
        width: root.background.width - root.indicator.width - 10
        height: root.background.height

        Text {
            id: customContentText
            anchors {
                centerIn: parent
                verticalCenterOffset: -1
            }
            text: root.currentIndex !== -1 ? root.customDisplayText : "ВИД РАБОТЫ"
            font.pixelSize: root.textSize
            font.family: "Montserrat extrabold"
            color: root.textColor
        }
    }

    background: Rectangle {
        id: customBackgroundRectangle
        implicitWidth: 102
        implicitHeight: 41
        width: root.comboBoxWidth
        height: root.comboBoxHeight
        color: root.down ? Qt.darker(root.palette.base, 1.2) : root.comboBoxColor
        radius: root.borderRadius
    }

    popup: Popup {
        y: root.height - 1
        width: root.width
        implicitHeight: contentItem.implicitHeight
        padding: 0

        contentItem: ListView {
            implicitHeight: contentHeight
            model: root.popup.visible ? root.delegateModel : null
            clip: true
            currentIndex: root.highlightedIndex

            ScrollIndicator.vertical: ScrollIndicator { }
        }

        background: Rectangle {
            color: "#DEDEDE"
            radius: root.borderRadius
            clip: true
        }
    }
    Layout.alignment: Qt.AlignHCenter
    Layout.preferredWidth: parent.width - 20
}



