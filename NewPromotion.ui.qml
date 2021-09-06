import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.1

Page {
    width: 380
    height: 640

    title: qsTr("Nuova promozione")

    Popup {
        id: popup
        x: stackView.width/2 - popup.width/2
        y: 80
        width: stackView.width - 20
        height: 400
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Text {
            width: popup.width - 20
            y: 40
            text: qsTr("ATTENZIONE")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Text {
            width: popup.width - 20
            y: 90
            text: qsTr("Questa è una funzione a pagamento")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 16
        }

        Text {
            width: popup.width - 20
            y: 120
            text: qsTr("Quanti nuovi utenti vuoi raggiungere?")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 16
        }

        TextField {
            id: wantedUsers
            x: popup.width/2 - 50
            y: 170
            width: 100
            placeholderText: "0"
            horizontalAlignment: Text.AlignHCenter
            validator: IntValidator { bottom: 0 }
            inputMethodHints: Qt.ImhDigitsOnly
        }

        Text {
            width: popup.width - 20
            y: 250
            text: qsTr("Costo dell’operazione: ") + parseInt(wantedUsers.text)/100 + " €"
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 16
        }

        Button {
            id: cancel
            x: popup.width/3 - width/2
            y: 300
            text: qsTr("Annulla")
        }
        Button {
            id: proced
            x: popup.width*2/3 - width/2
            y: 300
            text: qsTr("Conferma")
        }
    }

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent
        //other properties
        //ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        Flickable {
            contentHeight: 850
            width: parent.width
            Rectangle {
                id: rect
                width: stackView.width - 20
                height: 650
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

                ListView {
                    id: check
                    y: 70
                    height: 240
                    model: [ "Bronzo", "Argento", "Oro", "Platino", "Diamante" ]
                    delegate: CheckDelegate {
                        text: modelData
                        width: rect.width
                        checked: index == 0
                    }
                }

                CheckDelegate {
                    id: newCustomers
                    y: check.y + check.height
                    text: "Nuovi clienti"
                    width: rect.width
                    onCheckedChanged: {
                        if(checked)
                            popup.open()
                    }
                }

                Text {
                    width: stackView.width
                    y: 370
                    text: qsTr("La promozione raggiungerà 153 nuovi clienti")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                    font.italic: true
                    visible: newCustomers.checked
                }

                Text {
                    width: stackView.width
                    y: 440
                    text: qsTr("Descrizione promozione")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 22
                }

                TextArea {
                    y: 490
                    x: rect.width/2 - width/2
                    width: rect.width - 40
                    placeholderText: qsTr("Scrivi qui...")
                    wrapMode: Label.WordWrap
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
                y: 700
                text: qsTr("Crea promozione")
            }
        }

    }

    Connections {
        target: button
        onClicked: stackView.pop()
    }

    Connections {
        target: cancel
        onClicked: {
            newCustomers.checked = false
            popup.close()
        }
    }

    Connections {
        target: proced
        onClicked: popup.close()
    }

}
