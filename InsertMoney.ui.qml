import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 380
    height: 640

    title: qsTr("Inserire importo")

    Text {
        width: stackView.width
        y: 30
        text: qsTr("Fabio Rossi")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
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

    TextField {
        id: textField
        x: stackView.width/2 - 50
        y: 200
        width: 100
        leftPadding: currencyLabel.width + currencyLabel.anchors.leftMargin + 2
        validator: RegExpValidator {
            regExp: /([+-]?[0-9]+(\.[0-9]{2})?)/
        }
        inputMethodHints: Qt.ImhDigitsOnly
        placeholderText: qsTr("0.00")
        horizontalAlignment: Text.AlignHCenter

        Text {
            id: currencyLabel
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -15; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("€")
            font.pixelSize: 18
        }
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 250
        text: qsTr("Continua")
    }

    Connections {
        target: button
        onClicked: stackView.push("Recap.ui.qml")
    }

}
