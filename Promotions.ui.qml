import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("Promozioni mensili")

    Rectangle {
        id: promo1
        width: stackView.width/2 - 20
        height: 250
        radius: 7
        y: 30
        x: stackView.width/4 - width/2

        Text {
            y: 11
            width: parent.width
            text: qsTr("BRONZO")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 11
        }

        Rectangle {
            x: parent.width/2 - width/2
            y: 35
            width: parent.width - 20
            border.color: "#d9d9d9"
            height: 2
            border.width: 1
            Rectangle {
                y: 1
                width: parent.width
                color: "#ffffff"
                height: 1
            }
        }

        Image {
            x: parent.width/2 - width/2
            y: 45
            width: 90
            height: 90
            source: "qrc:/images/sweatshirt.png"
        }

        Text {
            x: 20
            y: 155
            width: parent.width - 30
            text: qsTr("Sconto del 25% sul brand Nike")
            wrapMode: Label.WordWrap
            font.pixelSize: 16
            font.bold: true
        }

        Text {
            y: parent.height - 30
            width: parent.width
            text: qsTr("Scade il 03/06/2021")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
        }

        MouseArea {
            id: click1
            anchors.fill: parent
        }

    }

    DropShadow {
        anchors.fill: promo1
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 7
        samples: 16
        color: "#80000000"
        source: promo1
    }

    Rectangle {
        id: promo2
        width: stackView.width/2 - 20
        height: 250
        radius: 7
        y: 30
        x: stackView.width*3/4 - width/2
        visible: false

        Text {
            y: 11
            width: parent.width
            text: qsTr("AREGNTO - ORO")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 11
        }

        Rectangle {
            x: parent.width/2 - width/2
            y: 35
            width: parent.width - 20
            border.color: "#d9d9d9"
            height: 2
            border.width: 1
            Rectangle {
                y: 1
                width: parent.width
                color: "#ffffff"
                height: 1
            }
        }

        Image {
            x: parent.width/2 - width/2
            y: 45
            width: 90
            height: 90
            source: "qrc:/images/tshirt.png"
        }

        Text {
            x: 20
            y: 155
            width: parent.width - 30
            text: qsTr("T-shirt prendi due paghi uno")
            wrapMode: Label.WordWrap
            font.pixelSize: 16
            font.bold: true
        }

        Text {
            y: parent.height - 30
            width: parent.width
            text: qsTr("Scade il 27/09/2021")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 10
        }

        MouseArea {
            id: click2
            anchors.fill: parent
        }

    }

    DropShadow {
        id: dropPromo2
        anchors.fill: promo2
        cached: true
        horizontalOffset: 0
        verticalOffset: 0
        radius: 7
        samples: 16
        color: "#80000000"
        source: promo2
        visible: false
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 350
        text: qsTr("Aggiungi promozione")
    }

    Connections {
        target: button
        onClicked: {
            stackView.push("NewPromotion.ui.qml")
            promo2.visible = true
            dropPromo2.visible = true
        }
    }

}
