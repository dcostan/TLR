import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Page {
    width: 380
    height: 640

    title: qsTr("Promozioni mensili")

    Rectangle {
        width: stackView.width - 20
        height: 150
        color: "#dddddd"
        radius: 7
        y: 30
        x: stackView.width/2 - width/2


        Image {
            x: 20
            y: 30
            width: 70
            height: 70
            source: "qrc:/images/caffe.png"
        }

        Text {
            x: 120
            y: 30
            text: qsTr("Caffè + Brioche")
            font.pixelSize: 15
        }

        Text {
            x: 120
            y: 70
            text: qsTr("2 euro")
            font.pixelSize: 28
        }


        Image {
            x: parent.width - 50
            y: 20
            width: 30
            height: 30
            source: "qrc:/images/edit.png"
        }

        Text {
            x: parent.width - 165
            y: parent.height - 25
            text: qsTr("Passa a PRO per le statistiche")
            font.pixelSize: 10
            font.underline: true
        }

    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 250
        text: qsTr("Aggiungi promozione")
    }

    Connections {
        target: button
        onClicked: stackView.push("NewPromotion.ui.qml")
    }

}
