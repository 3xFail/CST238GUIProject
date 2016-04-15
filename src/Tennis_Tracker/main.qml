import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.2

/**********************************************
*Name:  Ryan Williams
*
*Lab:   2
*
*Project Name: Tennis Tracker
***********************************************/
Window {
    visible: true
    id:main_Window
    width: Screen.width
    height: Screen.height
    visibility: "Maximized"
    title: qsTr("Tennis Tracker Pro")


    Match_Screen{
        id: match_screen
        visible: false
        anchors.fill: parent
        onMatch_end: {
            splash.visible = true
            match_screen.visible = false
        }
    }

    Splash_Screen{
        id:splash
        visible: true
        anchors.fill: parent
        onStart_match:{
            match_screen.visible = true
            splash.visible = false
        }
    }

}
