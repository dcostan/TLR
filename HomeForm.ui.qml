import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 380
    height: 640

    title: qsTr("Benvenuto")

    Connections {
        target: pagamentiArea
        onClicked: stackView.push("QRscan.ui.qml")
    }

    Connections {
        target: negozioArea
        onClicked: stackView.push("Shop.ui.qml")
    }

    Rectangle {
        id: pagamentiRect
        x: 0
        y: 0
        width: stackView.width
        height: stackView.height/2
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#e0e0e0"
            }
        }

        MouseArea {
            id: pagamentiArea
            anchors.fill: parent
        }

        Text {
            id: text1
            x: 0
            y: parent.height/6
            width: parent.width
            height: 37
            text: qsTr("Pagamenti")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 30
        }

        Image {
            id: image1
            x: (parent.width/2) - 100
            y: parent.height/4
            width: 200
            height: 200
            source: "qrc:/images/pagamento.png"
        }
    }

    Rectangle {
        id: negozioRect
        x: 0
        y: pagamentiRect.height
        width: stackView.width
        height: stackView.height/2
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#e0e0e0"
            }
        }

        MouseArea {
            id: negozioArea
            anchors.fill: parent
        }

        Text {
            id: text2
            x: 0
            y: parent.height/6
            width: parent.width
            height: 37
            text: qsTr("Il mio negozio")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 30
        }

        Image {
            id: image2
            x: (parent.width/2) - 100
            y: parent.height/4
            width: 200
            height: 200
            source: "qrc:/images/negozio.png"
        }
    }
}
