import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("Nuova promozione")

    Rectangle {
        id: rect
        width: stackView.width - 20
        height: 400
        radius: 7
        y: 30
        x: stackView.width/2 - width/2

        Text {
            width: stackView.width
            y: 30
            text: qsTr("Seleziona status")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
        }

        ComboBox {
            width: rect.width - 40
            x: rect.width/2 - width/2
            y: 70
            model: ["Bronzo", "Argento", "Oro", "Platino", "Diamante"]
        }

        Text {
            width: stackView.width
            y: 150
            text: qsTr("Descrizione promozione")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 22
        }

        TextArea {
            y: 200
            x: rect.width/2 - width/2
            width: rect.width - 40
            placeholderText: qsTr("Scrivi qui...")
        }

    }

    DropShadow {
        anchors.fill: rect
        cached: true
        horizontalOffset: 3
        verticalOffset: 3
        radius: 7
        samples: 16
        color: "#80000000"
        source: rect
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 450
        text: qsTr("Crea promozione")
    }

    Connections {
        target: button
        onClicked: stackView.pop()
    }

}
