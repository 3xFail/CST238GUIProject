import QtQuick 2.6

Rectangle {
    color:"transparent"
    anchors.centerIn: parent
    anchors.horizontalCenterOffset: -15

    signal rotate_players_point
    signal rotate_players_odd_game

    property alias loc_left_deuce_back: left_deuce_back
    property alias loc_right_deuce_back: right_deuce_back
    property alias loc_left_ad_back: left_ad_back
    property alias loc_right_ad_back: right_ad_back
    property alias loc_left_deuce_front: left_deuce_front
    property alias loc_right_deuce_front: right_deuce_front
    property alias loc_left_ad_front: left_ad_front
    property alias loc_right_ad_front: right_ad_front

    //back text box objects
    //back left deuce
    TextRect{
        id:left_deuce_back
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -600
        anchors.verticalCenterOffset: 70
    }
    //back right deuce
    TextRect{
        id:right_deuce_back
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "White"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 600
        anchors.verticalCenterOffset: -70
    }
    //back right ad
    TextRect{
        id:right_ad_back
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 600
        anchors.verticalCenterOffset: 70
    }
    //back left ad
    TextRect{
        id:left_ad_back
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -600
        anchors.verticalCenterOffset: -70
    }

    //front text box objects
    //net left deuce
    TextRect{
        id:left_deuce_front
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -220
        anchors.verticalCenterOffset: 70
    }
    //net left ad
    TextRect{
        id:left_ad_front
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: -220
        anchors.verticalCenterOffset: -70
    }
    //net right deuce
    TextRect{
        id:right_deuce_front
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 220
        anchors.verticalCenterOffset: -70
    }
    //net right ad position
    TextRect{
        id:right_ad_front
        height: 70
        width: 200
        visible: false
        color: "transparent"
        text_prop.anchors.verticalCenterOffset: 0
        text_color: "white"
        text_size: 16
        border.color: "white"
        border.width: 5
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 220
        anchors.verticalCenterOffset: 70
    }



}
