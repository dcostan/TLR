import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("I miei clienti")

    ScrollView {
        width: stackView.width
        height: stackView.height - rect.height

        ListView {
            width: stackView.width
            model: ["- Platino (3 utenti)", "Filippo Russo", "Elisa Morini", "Gianmarco Massafra", "- Argento (3 utenti)", "Vanessa Mastroianni", "Filippo Pataro", "Davide Costa"]
            delegate: ItemDelegate {
                text: modelData
                width: stackView.width
                enabled: !(index == 0 || index == 4)
                font.bold: index == 0 || index == 4
                onClicked: stackView.push("CustomerDetail.ui.qml")
            }
        }
    }

    Rectangle {
        id: rect
        width: stackView.width
        height: 70
        color: "#3f51b5"
        y: stackView.height - height

        Button {
            id: theshold
            x: stackView.width/2 - width/2
            y: 10
            text: qsTr("Cambia le soglie")
        }

    }

    Connections {
        target: theshold
        onClicked: stackView.push("Theshold.ui.qml")
    }

}
