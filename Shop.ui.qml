import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 380
    height: 640

    title: qsTr("Il mio negozio")


    Image {
        x: (stackView.width/4) - 50
        y: 100
        width: 100
        height: 100
        source: "qrc:/images/profile.png"
        MouseArea {
            id: profile
            anchors.fill: parent
        }
    }

    Text {
        x: profile.parent.x
        y: profile.parent.y + profile.height + 10
        width: profile.width
        text: qsTr("Dettagli")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Image {
        x: (stackView.width*3/4) - 50
        y: 100
        width: 100
        height: 100
        source: "qrc:/images/promotions.png"
        MouseArea {
            id: promotions
            anchors.fill: parent
        }
    }

    Text {
        x: promotions.parent.x
        y: promotions.parent.y + promotions.height + 10
        width: promotions.width
        text: qsTr("Promozioni")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Image {
        x: (stackView.width/4) - 50
        y: 320
        width: 100
        height: 100
        source: "qrc:/images/announcements.png"
        MouseArea {
            id: messages
            anchors.fill: parent
        }
    }

    Text {
        x: messages.parent.x
        y: messages.parent.y + messages.height + 10
        width: messages.width
        text: qsTr("Comunicazioni")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Image {
        x: (stackView.width*3/4) - 50
        y: 320
        width: 100
        height: 100
        source: "qrc:/images/customers.png"
        MouseArea {
            id: customers
            anchors.fill: parent
        }
    }

    Text {
        x: customers.parent.x
        y: customers.parent.y + customers.height + 10
        width: customers.width
        text: qsTr("Clienti")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Connections {
        target: profile
        onClicked: stackView.push("Details.ui.qml")
    }

    Connections {
        target: promotions
        onClicked: stackView.push("Promotions.ui.qml")
    }

    Connections {
        target: messages
        onClicked: stackView.push("Messages.ui.qml")
    }

    Connections {
        target: customers
        onClicked: stackView.push("Customers.ui.qml")
    }

}
