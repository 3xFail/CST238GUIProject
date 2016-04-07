import QtQuick 2.6
import QtQuick.Controls 1.4

Rectangle {
    height: parent.height
    width: parent.width

    Court_Background{
        id:background
        anchors.fill: parent
        Text{
            color: "#fbf8f8"
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.top
            anchors.topMargin: 75
            text:"Tennis Tracker"
            font.family: "Harlow Solid Italic"
            style: Text.Outline
            font.pointSize: 40
        }

       MyButton{
           id: start_match_but
           height: 100
           width: 240
           text: "Start a match"
           text_size: 16
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.horizontalCenterOffset: -550
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: -150
       }

       MyButton{
           id:match_catalog_but
           height: 100
           width: 240
           text: "Previous matches"
           text_size: 16
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.horizontalCenterOffset: -550
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: 150
       }

       MyButton{
           id: focus_but
           height: 100
           width: 240
           text: "Focus Point"
           text_size: 16
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.horizontalCenterOffset: 550
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: -150
       }

       MyButton{
           id:error_but
           height: 100
           width: 240
           text: "Errors Chart"
           text_size: 16
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.horizontalCenterOffset: 550
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: 150
       }

       TextRect{
           height: 200
           width: 630
           color: "Transparent"
           text: "Hello and welcome to Tennis Tracker!\nMade by Ryan Williams for CST238\n\nPlease select a option to continue\n"
           text_size: 12
           text_color: "White"
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.verticalCenter: parent.verticalCenter
           anchors.verticalCenterOffset: -125
       }
    }

}
