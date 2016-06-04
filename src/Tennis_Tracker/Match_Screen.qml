import QtQuick 2.6



Rectangle {
    id:match_root
    property int mins: 0
    property string player1name: "\0"
    property string player2name: "\0"
    property string player3name: "\0"
    property string player4name: "\0"
    property alias match_timer: timer

    signal match_end

    FocusScreen{
        id: focus_panel
        anchors.fill: parent
        visible: false
        z: 5

        text_in: "Game Over!"

        button.onClicked: {
            //timer.stop()
            timer.restart()
            timer.stop()
            match_setup_win.visible = true
            match_setup_win.input_player1name = ""
            //console.log(match_setup_win.input_player1name)
            match_setup_win.input_player2name = ""
            match_setup_win.input_player3name = ""
            match_setup_win.input_player4name = ""
            scoreboard.clear_Score_Board();
            sb.player1_points = scoreboard.get_p1_points();
            sb.player2_points = scoreboard.get_p2_points();
            sb.game_s = scoreboard.get_game_score();
            sb.set_s = scoreboard.get_set_score();
            match_root.match_end()
        }
    }

    Court_Background{
        id: background

        property bool match_type: match_setup_win.doubles_Check //false is singles

        Match_Options_Window{
            id:match_setup_win
            height: 300
            width: 800
            anchors.horizontalCenter: background.horizontalCenter
            anchors.verticalCenter: background.verticalCenter
        }

        PlayerLocations{
            id: player_locs

            //player one
            loc_left_deuce_back.text: match_setup_win.input_player1name
            //player 2 or 3
            loc_right_deuce_back.text: background.match_type === false ? match_setup_win.input_player2name : match_setup_win.input_player3name
            //player 2 in doubles
            loc_left_ad_front.text: background.match_type === false ? "" : match_setup_win.input_player2name
            //player 4 in doubles
            loc_right_ad_front.text: background.match_type === false ? "" : match_setup_win.input_player4name
        }

        //Scoreboard object
        //todo: make the thing
        Scoreboard{
            id: sb
            height: 150
            width: 220
            color: "transparent"
            anchors.horizontalCenter: time_box.horizontalCenter
            anchors.verticalCenter: time_box.verticalCenter
            anchors.verticalCenterOffset: -125
            border.color: "white"
            border.width: 5
        }

        //time elapsed box
        Rectangle{
            id:time_box
            height: 75
            width: 150
            color: "transparent"
            anchors.horizontalCenter: win_smash.horizontalCenter
            anchors.horizontalCenterOffset: 225
            anchors.verticalCenter: win_smash.verticalCenter
            anchors.verticalCenterOffset: 300
            border.color: "white"
            border.width: 5


            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                id: timeText
                x:10
                y:10
                color: "white"
                font.pixelSize: 25
                text: "0:00"
            }

            Timer {
                id: timer
                interval: 60000
                repeat: true
                running: true

                onTriggered:
                {
                    mins++
                    timeText.text =  Math.floor(mins/60) + ":" + (( mins - ( 60 * Math.floor( mins/60 ) )) < 10 ? ("0" + ( mins - ( 60 * Math.floor( mins/60 ) ))) : ( mins - ( 60 * Math.floor( mins/60 ) )))
                }
            }
        }

        //End match/return button
        MyButton{
            id: end_match_butt
            height: 100
            width: 180
            color: "Lime"
            text: "End Match"
            text_size: 16
            radius: 0
            anchors.left: lose_smash.right
            anchors.leftMargin: 15
            anchors.verticalCenter: lose_smash.verticalCenter
            ma.onClicked:{
                //timer.stop()
                timer.restart()
                timer.stop()
                match_setup_win.visible = true
                match_root.match_end()
                match_setup_win.input_player1name = ""
                //console.log(match_setup_win.input_player1name)
                match_setup_win.input_player2name = ""
                match_setup_win.input_player3name = ""
                match_setup_win.input_player4name = ""
                scoreboard.clear_Score_Board();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();
            }

        }
        //win by label
        TextRect{
            id: win_label
            height: 100
            width: 240
            color: "transparent"
            text: "\n\tWon by:"
            text_color:"white"
            text_size: 25
            anchors.right: win_serve.left
            anchors.rightMargin: 10
            anchors.verticalCenter: win_serve.verticalCenter
        }

        //lose by label
        TextRect{
            id: lost_label
            height: 100
            width: 240
            color: "transparent"
            text: "\n\tLost by:"
            text_color:"white"
            text_size: 25
            anchors.right: lose_serve.left
            anchors.verticalCenter: lose_serve.verticalCenter
        }

        //top button row
        MyButton{
            id: win_serve
            height: 100
            width: 240
            color: "Lime"
            text: "Serve"
            text_size: 16
            radius: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -640
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -425
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                console.log(scoreboard.end_of_match());

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }

                console.log(scoreboard.get_p1_points());
            }
        }

        MyButton{
            id: win_ret
            height: 100
            width: 240
            color: "Lime"
            text: "Return"
            text_size: 16
            radius: 0
            anchors.left: win_serve.right
            anchors.leftMargin: 10
            anchors.verticalCenter: win_serve.verticalCenter
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p1_points());
            }
        }

        MyButton{
            id: win_for
            height: 100
            width: 240
            color: "Lime"
            text: "Forehand"
            text_size: 16
            radius: 0
            anchors.left: win_ret.right
            anchors.leftMargin: 10
            anchors.verticalCenter: win_ret.verticalCenter
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p1_points());
            }
        }

        MyButton{
            id: win_back
            height: 100
            width: 240
            color: "Lime"
            text: "Backhand"
            text_size: 16
            radius: 0
            anchors.left: win_for.right
            anchors.leftMargin: 10
            anchors.verticalCenter: win_for.verticalCenter
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p1_points());
            }
        }

        MyButton{
            id: win_volly
            height: 100
            width: 240
            color: "Lime"
            text: "Volly"
            text_size: 16
            radius: 0
            anchors.left: win_back.right
            anchors.leftMargin: 10
            anchors.verticalCenter: win_back.verticalCenter
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p1_points());
            }

        }

        MyButton{
            id: win_smash
            height: 100
            width: 240
            color: "Lime"
            text: "Smash"
            text_size: 16
            radius: 0
            anchors.left: win_volly.right
            anchors.leftMargin: 10
            anchors.verticalCenter: win_volly.verticalCenter
            ma.onClicked: {

                scoreboard.p1_won();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p1_points());
            }

        }

        //Bottom button row
        MyButton{
            id: lose_serve
            height: 100
            width: 240
            color: "Lime"
            text: "Serve"
            text_size: 16
            radius: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -640
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 425
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p2_points());
            }

        }

        MyButton{
            id: lose_ret
            height: 100
            width: 240
            color: "Lime"
            text: "Return"
            text_size: 16
            radius: 0
            anchors.left: lose_serve.right
            anchors.leftMargin: 10
            anchors.verticalCenter: lose_serve.verticalCenter
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p2_points());
            }


        }

        MyButton{
            id: lose_for
            height: 100
            width: 240
            color: "Lime"
            text: "Forhand"
            text_size: 16
            radius: 0
            anchors.left: lose_ret.right
            anchors.leftMargin: 10
            anchors.verticalCenter: lose_ret.verticalCenter
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p2_points());
            }


        }

        MyButton{
            id: lose_back
            height: 100
            width: 240
            color: "Lime"
            text: "Backhand"
            text_size: 16
            radius: 0
            anchors.left: lose_for.right
            anchors.leftMargin: 10
            anchors.verticalCenter: lose_for.verticalCenter
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();
                console.log(scoreboard.get_p2_points());
            }


        }

        MyButton{
            id: lose_volly
            height: 100
            width: 240
            color: "Lime"
            text: "Volly"
            text_size: 16
            radius: 0
            anchors.left: lose_back.right
            anchors.leftMargin: 10
            anchors.verticalCenter: lose_back.verticalCenter
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p2_points());
            }


        }

        MyButton{
            id: lose_smash
            height: 100
            width: 240
            color: "Lime"
            text: "Smash"
            text_size: 16
            radius: 0
            anchors.left: lose_volly.right
            anchors.leftMargin: 10
            anchors.verticalCenter: lose_volly.verticalCenter
            ma.onClicked: {

                scoreboard.p1_loss();
                sb.player1_points = scoreboard.get_p1_points();
                sb.player2_points = scoreboard.get_p2_points();
                sb.game_s = scoreboard.get_game_score();
                sb.set_s = scoreboard.get_set_score();

                if(scoreboard.end_of_match())
                {
                    focus_panel.visible = true;
                }
                console.log(scoreboard.get_p2_points());
            }


        }



    }
}
