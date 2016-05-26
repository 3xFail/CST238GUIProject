import QtQuick 2.6

Rectangle {
    id:root
    color: "green"
    anchors.fill: parent

    signal close
    //property string foucus_point_text: ball_image.text_box.text


    Image{
        id: ball_image
        source: "/../../img/16637-illustration-of-a-tennis-ball-pv.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        TextRect{
            id: text_box
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -60
            color: "White"

            text_size: 40
            text: "Back Hands"
            text_color: "Black"
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
