import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Page {
    width: 380
    height: 640

    title: qsTr("Fine")

    Text {
        width: stackView.width
        y: 60
        text: qsTr("Transazione effettuata")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Image {
        x: (stackView.width/2) - 100
        y: 120
        width: 200
        height: 200
        source: "qrc:/images/spunta.png"
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: 400
        text: qsTr("Esci")
    }

    Connections {
        target: button
        onClicked: stackView.pop(null)
    }

}
