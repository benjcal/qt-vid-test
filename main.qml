import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 900
    height: 780
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        color: "gray"

        VidPLayer {
            anchors.centerIn: parent
            anchors.fill: parent
        }
    }


}
