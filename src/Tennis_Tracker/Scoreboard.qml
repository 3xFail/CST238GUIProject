import QtQuick 2.6

Rectangle {

    property alias player1_points: player1_score.text
    property alias player2_points: player2_score.text
    property alias game_s: games_score.text
    property alias set_s: sets_score.text


    Text{
        id:player1_score
        text:scoreboard.get_p1_points();
        font.pointSize: 24
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -27
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -30
    }

    Text{
        id:dash
        text:" - ";
        font.pointSize: 24
        color: "white"
        anchors.left: player1_score.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -30
    }

    Text{
        id:player2_score
        text:scoreboard.get_p2_points();
        font.pointSize: 24
        color: "white"
        anchors.left: dash.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -30
    }
    Text{
        id: games_score
        text:scoreboard.get_game_score();
        font.pointSize: 18
        color: "white"
        anchors.top: player1_score.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 1
    }
    Text{
        id: sets_score
        text:scoreboard.get_set_score();
        font.pointSize: 18
        color: "white"
        anchors.top: games_score.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 1
    }
}
