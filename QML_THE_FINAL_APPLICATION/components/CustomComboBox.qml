// CustomComboBox.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

ComboBox {
    property alias comboBoxColor: customBackgroundRectangle.color
    property alias textColor: customContentText.color
    property alias textSize: customContentText.font.pixelSize
    property alias borderRadius: customBackgroundRectangle.radius
    property alias comboBoxWidth: customBackgroundRectangle.width
    property alias comboBoxHeight: customBackgroundRectangle.height
    property alias textAlignOffset: customContentText.anchors.verticalCenterOffset

    // Добавлено свойство для placeholder'а
    property string placeholderText: "ВИД РАБОТЫ"

    id: root

    // Изначально ни один элемент не выбран
    currentIndex: -1

    delegate: ItemDelegate {
        id: delegateItem
        width: root.width

        contentItem: Text {
            text: modelData
            color: root.textColor
            font.pixelSize: root.textSize
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            elide: Text.ElideRight

            // Добавлено ограничение максимальной ширины текста
            width: Math.min(root.width - 20, implicitWidth)
        }

        background: Rectangle {
            width: parent.width
            height: parent.height
            color: index === root.currentIndex ? "#3DD9A1" : root.palette.base
            radius: root.borderRadius
        }
    }

    indicator: Canvas {
        id: canvas
        x: root.width - width
        y: (root.availableHeight - height) / 2.5
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: root
            onPressedChanged: canvas.requestPaint()
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = "black"
            context.fill();
        }
    }

    contentItem: Item {
        width: root.background.width - root.indicator.width - 10
        height: root.background.height

        // Изначально отображается "ВИД РАБОТЫ"
        Text {
            id: customContentText
            anchors {
                centerIn: parent
                verticalCenterOffset: -4 // Подстройка вертикального выравнивания
            }
            text: root.currentIndex !== -1 ? root.displayText : root.placeholderText
            font.pixelSize: root.textSize
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
            color: root.palette.base
            radius: root.borderRadius
            clip: true
        }
    }
}
