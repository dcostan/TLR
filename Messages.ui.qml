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

                CheckBox {
                    id: push
                    x: stackView.width/2 - width/2
                    y: write.x + write.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: qsTr("  Invia notifica push")
                }

                Button {
                    id: publicButton
                    x: stackView.width/2 - width/2
                    y: write.x + write.height + push.height + 10
                    text: qsTr("Pubblica")
                }

                Rectangle {
                    id: annRect
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
                    anchors.fill: annRect
                    cached: true
                    horizontalOffset: 3
                    verticalOffset: 3
                    radius: 7
                    samples: 16
                    color: "#80000000"
                    source: annRect
                }
            }

            Item {
                Text {
                    y: 30
                    width: stackView.width
                    text: qsTr("COSA NE PENSANO")
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    y: 60
                    width: stackView.width
                    text: qsTr("I TUOI CLIENTI")
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignHCenter
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
                             source: "qrc:/images/avatar.png"
                         }
                    }

                    Text {
                        x: 120
                        y: 50
                        width: 200
                        text: qsTr("Le salsiccie andrebbero cotte un po' di più")
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
            }

    }

}
