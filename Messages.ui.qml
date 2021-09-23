import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Page {
    width: 380
    height: 640

    title: qsTr("Comunicazioni")

    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Annunci")
        }
        TabButton {
            text: qsTr("Consigli")
        }
    }

    SwipeView {
        id: swipeView
        y: bar.height
        width: stackView.width
        currentIndex: bar.currentIndex
            Item {
                Text {
                    y: 30
                    x: stackView.width/2 - width/2
                    width: stackView.width - 40
                    text: qsTr("Qui puoi mandare avvisi ai tuoi clienti")
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                }

                TextArea {
                    id: write
                    width: stackView.width - 120
                    x: stackView.width/2 - width/2 + 25
                    y: 100
                    placeholderText: qsTr("Scrivi in bacheca...")
                    wrapMode: Label.WordWrap

                    Image {
                        anchors {
                            left: parent.left; leftMargin: -70; bottomMargin: 7
                        }
                        y: -10
                        width: 60
                        height: 60
                        source: "qrc:/images/barlogo.png"
                    }
                }

                CheckBox {
                    id: push
                    x: stackView.width/2 - width/2
                    y: write.y + write.height + 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: qsTr("  Invia notifica push")
                }

                Button {
                    id: publicButton
                    x: stackView.width/2 - width/2
                    y: write.y + write.height + push.height + 20
                    text: qsTr("Pubblica")
                }

                Rectangle {
                    id: annRect
                    width: stackView.width - 20
                    height: 150
                    radius: 7
                    y: publicButton.y + 150
                    x: stackView.width/2 - width/2
                    visible: false

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
                    id: dropAnnRect
                    anchors.fill: annRect
                    cached: true
                    horizontalOffset: 3
                    verticalOffset: 3
                    radius: 7
                    samples: 16
                    color: "#80000000"
                    source: annRect
                    visible: false
                }
            }

            Item {
                Text {
                    y: 30
                    x: stackView.width/2 - width/2
                    width: stackView.width - 40
                    text: qsTr("Ecco i consigli dei clienti che hanno acquistato nel tuo negozio")
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                }

                Rectangle {
                    id: consRect
                    width: stackView.width - 20
                    height: 150
                    radius: 7
                    y: 120
                    x: stackView.width/2 - width/2

                    Rectangle {
                         width: 75
                         height: 75
                         x: 20
                         y: 40
                         color: "yellow"
                         radius: width*0.5

                         Image {
                             anchors.centerIn: parent
                             width: 65
                             height: 65
                             source: "qrc:/images/dughierocapodelmondo.png"
                         }
                    }

                    Text {
                        x: 120
                        y: 50
                        width: 200
                        text: qsTr("Sarebbe interessante avere a disposizione un reparto di calzature sportive.")
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
                    anchors.fill: consRect
                    cached: true
                    horizontalOffset: 3
                    verticalOffset: 3
                    radius: 7
                    samples: 16
                    color: "#80000000"
                    source: consRect
                }

                Rectangle {
                    id: consRect2
                    width: stackView.width - 20
                    height: 150
                    radius: 7
                    y: 290
                    x: stackView.width/2 - width/2

                    Rectangle {
                         width: 75
                         height: 75
                         x: 20
                         y: 40
                         color: "grey"
                         radius: width*0.5

                         Image {
                             anchors.centerIn: parent
                             width: 65
                             height: 65
                             source: "qrc:/images/immanuelnazionale.png"
                         }
                    }

                    Text {
                        x: 120
                        y: 50
                        width: 200
                        text: qsTr("Perchè non aprire una sezione di maglie tecniche per fare sport")
                        wrapMode: Label.WordWrap
                        font.pixelSize: 16
                    }

                    Text {
                        x: parent.width - 80
                        y: parent.height - 40
                        text: qsTr("14/02/2021")
                        font.pixelSize: 10
                    }

                }

                DropShadow {
                    anchors.fill: consRect2
                    cached: true
                    horizontalOffset: 3
                    verticalOffset: 3
                    radius: 7
                    samples: 16
                    color: "#80000000"
                    source: consRect2
                }
            }

    }

    Connections {
        target: publicButton
        onClicked: {
            dropAnnRect.visible = true
            annRect.visible = true
        }
    }

}
