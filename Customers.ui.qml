import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("I miei clienti")

    ScrollView {
        width: stackView.width
        height: stackView.height

        ListView {
            width: stackView.width
            model: ["Filippo Russo", "Elisa Morini", "Gianmarco Massafra", "Vanessa Mastroianni", "Filippo Pataro", "Davide Costa"]
            delegate: ItemDelegate {
                text: modelData
                width: stackView.width
                onClicked: stackView.push("CustomerDetail.ui.qml")
            }
        }
    }

}
