import QtQuick 2.6


Rectangle {
    id:match_root
    property int mins: 0
    property string player1name: "\0"
    property string player2name: "\0"
    property string player3name: "\0"
    property string player4name: "\0"

    signal match_end

    Court_Background{
        id: background

        Match_Options_Window{
            id:match_setup_win
            height: 300
            width: 800
            anchors.horizontalCenter: background.horizontalCenter
            anchors.verticalCenter: background.verticalCenter
        }

        //Scoreboard object
        //todo: make the thing
        TextRect{
            height: 150
            width: 220
            color: "transparent"
            text: "*ScoreBoard Here*"
            text_color: "white"
            text_size: 18
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
                timer.stop()
                timer.restart()
                match_setup_win.visible = true
                match_root.match_end()
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

        }


    }
}
