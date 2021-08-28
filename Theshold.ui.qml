import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("Le mie soglie")

    ScrollView {
        width: stackView.width
        height: stackView.heigth

        Item {
            y: 0
            Text {
                width: stackView.width
                y: 20
                text: qsTr("BENVENUTO")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("0")
                enabled: false
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Item {
            y: 100
            Text {
                width: stackView.width
                y: 20
                text: qsTr("BRONZO")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("50")
                enabled: false
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Item {
            y: 200
            Text {
                width: stackView.width
                y: 20
                text: qsTr("ARGENTO")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("150")
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Item {
            y: 300
            Text {
                width: stackView.width
                y: 20
                text: qsTr("ORO")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("300")
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Item {
            y: 400
            Text {
                width: stackView.width
                y: 20
                text: qsTr("PLATINO")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("500")
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Item {
            y: 500
            Text {
                width: stackView.width
                y: 20
                text: qsTr("DIAMANTE")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 22
                font.bold: true
            }

            Text {
                x: stackView.width/2 - 55
                y: 60
                text: qsTr("da")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            TextField {
                y: 50
                x: stackView.width/2 - width/2
                width: 50
                text: qsTr("700")
                inputMethodHints: Qt.ImhDigitsOnly
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                x: stackView.width/2 + 35
                y: 60
                text: qsTr("token")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }
        }

        Button {
            id: button
            x: stackView.width/2 - button.width/2
            y: 650
            text: qsTr("Salva")
        }

    }

    Connections {
        target: button
        onClicked: stackView.pop()
    }

}
