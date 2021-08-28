import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9
import QtQuick.Dialogs 1.1

Page {
    width: 380
    height: 640

    title: qsTr("Riepilogo")

    Popup {
        id: popup
        x: stackView.width/2 - popup.width/2
        y: 100
        width: stackView.width - 20
        height: 200
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Text {
            width: popup.width
            y: 40
            text: qsTr("Come vuoi pagare?")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Button {
            id: analogPay
            x: popup.width/3 - analogPay.width/2
            y: 100
            text: qsTr("Al banco")
        }
        Button {
            id: digitalPay
            x: popup.width*2/3 - digitalPay.width/2
            y: 100
            text: qsTr("Con l’app")
        }
    }

    Text {
        width: stackView.width
        y: 60
        text: qsTr("FBBRSS72M12P453G")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        width: stackView.width
        y: 90
        text: qsTr("Utente: argento")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        width: stackView.width
        y: 120
        text: qsTr("Codice Utente: 1a2b3c")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        id: total
        width: stackView.width
        y: 180
        text: qsTr("TOTALE: 120.00 €")
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        width: stackView.width
        y: 250
        text: qsTr("Buoni sconto disponibili")
        font.underline: true
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    ListView {
        id: buoni
        width: stackView.width
        height: 100
        x: 0
        y: 300
        model: ["Nesuno sconto", "Sconto del 10%", "Sconto del 15%"]
        delegate: RadioDelegate {
            text: modelData
            width: stackView.width
            checked: index == 0
            onCheckedChanged: {
                if(checked && index == 0)
                    total.text = qsTr("TOTALE: 120.00 €")
                else if(checked && index == 1)
                    total.text = qsTr("TOTALE: 108.00 €")
                else if(checked && index == 2)
                    total.text = qsTr("TOTALE: 102.00 €")
            }
        }
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 500
        text: qsTr("Paga")
    }

    Connections {
        target: button
        onClicked: popup.open()
    }

    Connections {
        target: analogPay
        onClicked: {
            popup.close()
            stackView.push("TransactionCompleted.ui.qml")
        }
    }

    Connections {
        target: digitalPay
        onClicked: {
            popup.close()
            stackView.push("TransactionCompleted.ui.qml")
        }
    }


}
