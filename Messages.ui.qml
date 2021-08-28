import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("I miei annunci")

    TextArea {
        id: write
        width: stackView.width - 120
        x: stackView.width/2 - width/2 + 25
        y: 50
        placeholderText: qsTr("Scrivi in bacheca...")
        wrapMode: Label.WordWrap

        Image {
            anchors {
                top: parent.top
                left: parent.left; leftMargin: -70; bottomMargin: 7
            }
            width: 60
            height: 60
            source: "qrc:/images/barlogo.png"
        }
    }

    Button {
        id: publicButton
        x: stackView.width/2 - width/2
        y: write.x + write.height
        text: qsTr("Pubblica")
    }

    Rectangle {
        id: rect
        width: stackView.width - 20
        height: 150
        radius: 7
        y: publicButton.y + 150
        x: stackView.width/2 - width/2

        Image {
            x: 20
            y: 40
            width: 70
            height: 70
            source: "qrc:/images/barlogo.png"
        }

        Text {
            x: 120
            y: 50
            width: 200
            text: qsTr("Orario continuato per tutto il mese")
            wrapMode: Label.WordWrap
            font.pixelSize: 16
        }

        Text {
            x: parent.width - 80
            y: parent.height - 40
            text: qsTr("03/06/2021")
            font.pixelSize: 10
        }


        Image {
            x: parent.width - 50
            y: 20
            width: 20
            height: 20
            source: "qrc:/images/edit.png"
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
