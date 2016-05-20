import QtQuick 2.6
import QtQuick.Controls 1.4

Rectangle {
    id:root
    color: "green"
       anchors.fill: parent


    signal close

       ListModel {
           id: libraryModel
           ListElement {
               //id: serve_element
               stroke: "Serve"
               last_match: "3"
               last_3_match: "3"
               total: "9"
           }
           ListElement {
               stroke: "Return"
               last_match: "2"
           }
           ListElement {
               stroke: "Forehand"
               last_match: "1"
           }
           ListElement {
               stroke: "Backhand"
               last_match: "1"
           }
           ListElement {
               stroke: "Volley"
               last_match: "1"
           }
           ListElement {
               stroke: "Smash"
               last_match: "1"
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
               role: "stroke"
               title: "Stroke"
               width: 150
           }
           TableViewColumn {
               role: "last_match"
               title: "Last Match"
               width: 150
           }
           TableViewColumn {
               role: "last_3_match"
               title: "Last 3 Matches"
               width: 150
           }
           TableViewColumn {
               role: "total"
               title: "Total"
               width: 150
           }
           model: libraryModel
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
