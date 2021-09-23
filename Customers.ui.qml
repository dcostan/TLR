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
            model: ["- Oro (3 utenti)", "Fabrizio Dughiero", "Martina Nespoli", "- Argento (8 utenti)", "Vanessa Mastroianni", "Filippo Pataro", "Davide Costa", "Patrizia Cannavò", "Filippo Russo", "Cesare Cobelli", "Matteo Bianchi", "Francesco Ferri", "- Bronzo (4 utenti)", "Elisa Rubele", "Emma dal Zovo", "Aldo Moretto", "Gino Vassoi"]
            delegate: ItemDelegate {
                text: modelData
                width: stackView.width
                enabled: !(index == 0 || index == 3 || index == 12)
                font.bold: index == 0 || index == 3 || index == 12
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
