import QtQuick 2.6

Rectangle {
    //height and width will be defined outside
    color: "Grey"
    radius: parent.width * .2
    property alias text: but_Text.text
    property alias text_size: but_Text.font.pointSize
    Text{
        id: but_Text
        color: "Black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea{
        hoverEnabled: true
        anchors.fill: parent
        onEntered: { parent.color = "Yellow" }
        onExited: { parent.color = "Grey"}
    }
}
