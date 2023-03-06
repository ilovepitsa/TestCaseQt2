import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 300
    height: 200
    visible: true
    color: "#946363"
    title: qsTr("Hello World")
    property string text: ""

    Column {
        id: column
        x: 0
        y: 0
        width: 300
        height: 200


        Row {
            id: row
            width: 300
            height: 100

            Label {
                id: label
                x: 25
                y: 50
                text: qsTr("Введите имя:")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Normal
            }

            TextField {
                id: textField
                x: 78
                y: 50
                width: 100
                height: 16
                leftPadding: 15
                placeholderText: qsTr("")
            }

            Button {
                id: button
                y: 45
                width: 100
                height: 26
                text: qsTr("Применить")
                rightPadding: 10
                leftPadding: 10
                leftInset: 0
                onClicked: {
                    labelHello.text="Привет, "+ textField.getText(0,100)
                }
            }
        }
        Label {
            id: labelHello
            x: 100
            y: 120
            width: 100
            text: qsTr("")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }
    }

}
