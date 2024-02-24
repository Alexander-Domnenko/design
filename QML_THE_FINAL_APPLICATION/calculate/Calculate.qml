import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "../components"

Rectangle {
    width: 360
    height: 640
    color: "#242424"

    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 20
        height: parent.height - 60

        ResultRing {
            id: resultRing
            resultColor: "#DEDEDE"
            resultFontSize: 16
            ringColor: "#3DD9A1"
        }

        RowLayout {
            spacing: 130

            CustomComboBox {
                id: workTypeComboBox
                comboBoxWidth: 115
                comboBoxHeight: 35
                comboBoxColor: "#DEDEDE"
                textColor: "#242424"
                textSize: 12
                borderRadius: 30
                model: ["3D", "2D", "ПРОЕКТ", "МОНТАЖ"]
                Layout.alignment: Qt.AlignLeft
            }

            CustomButton {
                id: shareBttn
                buttonColor: "#DEDEDE"
                textColor: "#242424"
                text: "ПОДЕЛИТЬСЯ"
                buttonWidth: 90
                buttonHeight: 35
                textSize: 12
                textStyle: "Montserrat medium"
                onClicked: {
                    console.log("share");
                }
                Layout.alignment: Qt.AlignRight
            }
        }

        CustomTextField {
            id: wastedHours
            placeholder: "Затрачено часов"
            width: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            onTextChanged: {
                wastedHoursValue = parseFloat(text);
            }
        }

        CustomTextField {
            id: hourCost
            placeholder: "Ставка на один час"
            width: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            onTextChanged: {
                hourCostValue = parseFloat(text);
            }
        }

        ListModel {
            id: addedFields
        }

        Repeater {
            model: addedFields

            CustomTextField {
                placeholder: model.text
                width: parent.width - 20
                Layout.alignment: Qt.AlignHCenter
                onTextChanged: {
                    if (model.text === "% НАЛОГОВ") {
                        taxValue = parseFloat(text);
                    } else if (model.text === "ВРЕМЯ ОТДЫХА") {
                        breakTimeValue = parseFloat(text);
                    } else if (model.text === "КОЭФФ. СЛОЖНОСТИ") {
                        complexityValue = parseFloat(text);
                    }
                }
            }
        }

        DropButton {
            id: addBttn
            comboBoxWidth: parent.width - 20
            comboBoxHeight: 40
            comboBoxColor: "#DEDEDE"
            textColor: "#242424"
            customDisplayText: "ДОБАВИТЬ ПОЛЕ"
            textSize: 16
            borderRadius: 30
            model: ["% НАЛОГОВ", "ВРЕМЯ ОТДЫХА", "КОЭФФ. СЛОЖНОСТИ"]
            Layout.alignment: Qt.AlignHCenter
            onCurrentIndexChanged: {
                if (currentIndex !== -1) {
                    var option = model[currentIndex];
                    var isUnique = true;
                    for (var i = 0; i < addedFields.count; ++i) {
                        if (addedFields.get(i).text === option) {
                            isUnique = false;
                            break;
                        }
                    }
                    if (isUnique) {
                        addedFields.append({text: option});
                    }
                }
            }
        }

        CustomButton {
            text: "ПОСЧИТАТЬ"
            buttonWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            textSize: 18
            onClicked: {
                resultRing.resultValue = calculateTotalCost().toFixed(2) + " RUB";
            }
        }
    }

    property real wastedHoursValue: 0
    property real hourCostValue: 0
    property real taxValue: 0
    property real breakTimeValue: 0
    property real complexityValue: 0

    function calculateTotalCost() {
        var totalHours = wastedHoursValue;
        var totalCost = totalHours * hourCostValue;

        for (var i = 0; i < addedFields.count; ++i) {
            var item = addedFields.get(i);
            if (item.text === "% НАЛОГОВ") {
                totalCost += totalCost * taxValue / 100;
            } else if (item.text === "ВРЕМЯ ОТДЫХА") {
                totalCost -= breakTimeValue * hourCostValue;
            } else if (item.text === "КОЭФФ. СЛОЖНОСТИ") {
                totalCost *= complexityValue;
            }
        }

        return totalCost;
    }
}
