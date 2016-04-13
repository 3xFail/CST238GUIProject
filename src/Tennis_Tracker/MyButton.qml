import QtQuick 2.6

Rectangle {
    //height and width will be defined outside
    id: button_rect
    radius: parent.width * .2
    property alias text: but_Text.text
    property alias text_size: but_Text.font.pointSize

    property color previouscolor: color
    property alias ma: but_ma


    Text{
        id: but_Text
        color: "Black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea{
        id: but_ma
        hoverEnabled: true
        anchors.fill: parent
        onEntered: {
            previouscolor = parent.color
            parent.color = "Yellow"
        }
        onExited: { parent.color = parent.previouscolor }

    }
}
