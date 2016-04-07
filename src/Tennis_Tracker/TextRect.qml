import QtQuick 2.0

Rectangle {
    id:rect_rect

    property alias text: r_text.text
    property alias text_size: r_text.font.pointSize
    property alias text_color: r_text.color

    Text{
        id:r_text
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -30

    }
}
