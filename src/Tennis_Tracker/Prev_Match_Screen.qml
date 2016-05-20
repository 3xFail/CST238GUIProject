import QtQuick 2.6
import QtQuick.Controls 1.4

Rectangle {
    id:root
    color: "green"
       anchors.fill: parent

    signal close


       ListModel {
           id: libModel
           ListElement {
               score: "0-0 0-0"
               win_lost: "W"
               stroke: "Serve"
           }
           ListElement {
               score: "15-0 0-0"
               win_lost: "W"
               stroke: "Volley"
           }
           ListElement {
               score: "30-0 0-0"
               win_lost: "L"
               stroke: "Backhand"
           }
       }

       TableView {
           id: match_stat_table
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.horizontalCenterOffset: 100
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: -60

           height: 860
           width: 1700

           TableViewColumn {
               role: "score"
               title: "Score"
               width: 100
           }
           TableViewColumn {
               role: "win_lose"
               title: "Win/Lost"
               width: 50
           }
           TableViewColumn {
               role: "stroke"
               title: "Stroke"
               width: 150
           }

           model: libModel
       }

       Text{
           color: "#fbf8f8"
           anchors.top: match_stat_table.bottom
           anchors.topMargin: 25
           anchors.right: close_butt.left
           anchors.rightMargin: 1050
           text:"Previous Matches"
           font.family: "Harlow Solid Italic"
           style: Text.Outline
           font.pointSize: 40
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
