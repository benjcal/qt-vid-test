import QtQuick 2.0
import QtMultimedia 5.9

Video {
    id: video
    source: "/vids/oceans.mp4"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            video.play()
        }
    }

    focus: true
    Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
    Keys.onLeftPressed: video.seek(video.position - 3000)
    Keys.onRightPressed: video.seek(video.position + 3000)
    Keys.onEscapePressed: Qt.quit()
}
