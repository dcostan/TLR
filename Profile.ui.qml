import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Page {
    width: 380
    height: 640

    title: qsTr("Profilo")

    Connections {
        target: button
        onClicked: stackView.pop()
    }

    Connections {
        target: theshold
        onClicked: stackView.push("Theshold.ui.qml")
    }

    Image {
        x: (stackView.width/4) - 50
        y: 20
        width: 100
        height: 100
        source: "qrc:/images/barlogo.png"
    }

    Text {
        x: (stackView.width/2)
        y: 45
        text: qsTr("Unosso Bar")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    Text {
        x: (stackView.width/2)
        y: 80
        text: qsTr("Le mie soglie")
        font.pixelSize: 12
        font.underline: true

        MouseArea {
            id: theshold
            anchors.fill: parent
        }
    }

    TextField {
        width: stackView.width - 120
        x: stackView.width/2 - width/2 + 50
        y: 150
        text: qsTr("via della Resistenza")
        font.italic: true

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -100; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("Indirizzo")
            font.pixelSize: 16
        }
    }

    TextField {
        width: stackView.width - 120
        x: stackView.width/2 - width/2 + 50
        y: 200
        text: qsTr("8:00 - 23:00")
        font.italic: true

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -100; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("Orario")
            font.pixelSize: 16
        }
    }

    TextField {
        width: stackView.width - 120
        x: stackView.width/2 - width/2 + 50
        y: 250
        text: qsTr("0497263965")
        font.italic: true

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -100; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("Telefono")
            font.pixelSize: 16
        }
    }

    TextArea {
        width: stackView.width - 120
        x: stackView.width/2 - width/2 + 50
        y: 300
        text: qsTr("Colazioni, aperitivi e pranzi espressi in un locale storico del '900 con area esterna e vista sui navigli.")
        font.italic: true
        wrapMode: Label.WordWrap

        Text {
            anchors {
                top: parent.top; bottom: parent.bottom
                left: parent.left; leftMargin: -100; bottomMargin: 7
            }
            verticalAlignment: Text.AlignVCenter
            color: parent.color
            text: qsTr("Descrizione")
            font.pixelSize: 16
        }
    }

    Text {
        id: imagelabel
        width: stackView.width
        y: 430
        x: stackView.width/5
        text: qsTr("Immagini")
        font.pixelSize: 18
    }

    Button {
        x: imagelabel.x + 100
        y: 420
        text: qsTr("Aggiungi")
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 500
        text: qsTr("Salva")
    }


}
