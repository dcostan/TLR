import QtQuick 2.9
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Page {
    width: 380
    height: 640

    title: qsTr("Nuova transazione")

    Connections {
        target: button
        onClicked: stackView.push("InsertMoney.ui.qml")
    }

    Text {
        width: stackView.width
        y: 30
        text: qsTr("Scansiona codice QR")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Item {
        id: cameraItem
        width: 300
        height: 300

        x: stackView.width/2 - 150
        y: 70

        Camera {
            id: camera

            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

            exposure {
                exposureCompensation: -1.0
                exposureMode: Camera.ExposurePortrait
            }

            flash.mode: Camera.FlashOff

            imageCapture {
                onImageCaptured: {
                    photoPreview.source = preview  // Show the preview in an Image
                }
            }
        }

        VideoOutput {
            source: camera
            anchors.fill: parent
            orientation: 270
            fillMode: VideoOutput.PreserveAspectCrop
            focus : visible // to receive focus and capture key events when visible
        }

        Image {
            id: photoPreview
        }
    }

    Text {
        width: stackView.width
        y: cameraItem.y + 320
        text: qsTr("oppure")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    TextField {
        id: textField
        x: stackView.width/2 - 150
        y: cameraItem.y + 370
        width: 300
        placeholderText: qsTr("Inserisci codice utente")
    }

    Button {
        id: button
        x: stackView.width/2 - button.width/2
        y: cameraItem.y + 420
        text: qsTr("Conferma")
    }


}
