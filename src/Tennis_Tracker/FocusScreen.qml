import QtQuick 2.6

Rectangle {
    id:root
    color: "green"
    anchors.fill: parent

    signal close

    Image{
        id: ball_image
        source: "../../img/Mockups/tennis-ball-clipart-simple_tennis_ball_clip_art_11137.jpg"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        TextRect{
            id: text_box
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 30

            text_size: 20
            text: "This is a test"
            text_color: "White"
            text_prop.font.bold: true
        }
    }

    MyButton{
        id:close_butt
        height: 100
        width: 240
        color: "Lime"
        text: "Close"
        text_size: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 800
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 425

        ma.onClicked:
        {
            root.close()
        }
    }

}
