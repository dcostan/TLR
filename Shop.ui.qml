import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Page {
    width: 380
    height: 640

    title: qsTr("Il mio negozio")

    Image {
        x: (stackView.width/2) - 75
        y: 20
        width: 150
        height: 150
        source: "qrc:/images/barlogo.png"
    }

    Image {
        x: (stackView.width/4) - 50
        y: 200
        width: 100
        height: 100
        source: "qrc:/images/profile.png"
        MouseArea {
            id: profile
            anchors.fill: parent
        }
    }

    Image {
        x: (stackView.width*3/4) - 50
        y: 200
        width: 100
        height: 100
        source: "qrc:/images/promotions.png"
        MouseArea {
            id: promotions
            anchors.fill: parent
        }
    }

    Image {
        x: (stackView.width/4) - 50
        y: 360
        width: 100
        height: 100
        source: "qrc:/images/announcements.png"
        MouseArea {
            id: messages
            anchors.fill: parent
        }
    }

    Image {
        x: (stackView.width*3/4) - 50
        y: 360
        width: 100
        height: 100
        source: "qrc:/images/customers.png"
        MouseArea {
            id: customers
            anchors.fill: parent
        }
    }

    Connections {
        target: profile
        onClicked: stackView.push("Profile.ui.qml")
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
