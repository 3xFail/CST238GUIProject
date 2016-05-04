import QtQuick 2.6

Rectangle {
    id:root
    color: "green"
       anchors.fill: parent

    signal close



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
