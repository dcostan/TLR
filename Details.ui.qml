import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Dettagli negozio")

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 550
            width: parent.width

            Image {
                x: (stackView.width/2) - width/2
                y: 20
                width: 80
                height: 80
                source: "qrc:/images/barlogo.png"
            }

            Text {
                y: 120
                width: stackView.width
                text: qsTr("TeLoRaccomandano")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }

            ProgressBar {
                x: stackView.width/2 - width/2
                y: 155
                width: 200
                value: 0.93
            }

            Text {
                y: 180
                width: stackView.width
                text: qsTr("il 93% degli utenti")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }



            Text {
                x: 20
                y: 255
                text: qsTr("Panoramica")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            ListView {
                id: list
                y: 280
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: [ ["posizione", "via della Resistenza, Padova, Italia"], ["time", "<font color='green'>Aperto</font> - Chiude alle ore 23"], ["telefono", "049 7263965"], ["internet", "www.tagstore.com"]]
                delegate: ItemDelegate {
                    width: stackView.width
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Image {
                            x: 30
                            y: parent.height/2 - height/2
                            width: 20
                            height: 20
                            source: "qrc:/images/" + modelData[0] + ".png"
                        }
                        Text {
                            x: 65
                            y: parent.height/2 - height/2
                            text: modelData[1]
                            font.pixelSize: 13
                        }
                        Rectangle {
                            x: stackView.width - width
                            y: parent.height - 2
                            width: index !== list.count-1 ? stackView.width-15 : stackView.width
                            border.color: list.bgcolor
                            height: 2
                            border.width: 1
                            Rectangle {
                                y: 0
                                width: parent.width
                                color: "#ffffff"
                                height: 1
                            }
                        }
                    }
                }
                Rectangle {
                    x: stackView.width - width
                    y: -2
                    width: stackView.width
                    border.color: list.bgcolor
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }

            }

            Button {
                id: edit
                x: stackView.width/2 - width/2
                y: 500
                text: qsTr("Modifica")
            }

        }
    }

    Connections {
        target: edit
        onClicked: stackView.push("Profile.ui.qml")
    }
}
