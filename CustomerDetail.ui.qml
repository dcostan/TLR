import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("I miei clienti")

    Rectangle {
         width: 75
         height: 75
         x: 30
         y: 50
         color: "yellow"
         radius: width*0.5

         Image {
             anchors.centerIn: parent
             width: 65
             height: 65
             source: "qrc:/images/avatar.png"
         }
    }

    Text {
        x: 130
        y: 50
        text: qsTr("FILIPPO RUSSO")
        font.pixelSize: 28
    }

    Text {
        x: 140
        y: 100
        text: qsTr("Token accumulati: 531")
        font.pixelSize: 15
    }

    Text {
        width: stackView.width
        y: 200
        text: qsTr("Cronologia recensioni")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 22
    }

    Rectangle {
        id: rect
        width: stackView.width - 20
        height: 150
        radius: 7
        y: 250
        x: stackView.width/2 - width/2

        Text {
            x: 50
            y: 50
            width: stackView.width - 100
            text: qsTr("Mi sono trovato davvero bene in questo bar, lo consiglio!")
            wrapMode: Label.WordWrap
            font.pixelSize: 16
        }

        Text {
            x: parent.width - 80
            y: parent.height - 40
            text: qsTr("01/02/2021")
            font.pixelSize: 10
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

}
