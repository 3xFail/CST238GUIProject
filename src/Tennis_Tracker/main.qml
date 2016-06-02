import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.2

/**********************************************
*Name:  Ryan Williams
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
            match_screen.match_timer.restart()
            splash.visible = false
        }
        onError_chart: {
            error_chart.visible = true
            splash.visible = false
        }
        onFocus_scr: {
            focus_screen.visible = true
            splash.visible = false
        }
        onMatch_catalog:{
            prev_match.visible = true
            splash.visible = false
        }
    }

    Error_Chart{
        id:error_chart
        visible: false
        anchors.fill: parent
        //need close button
        onClose:{
            splash.visible = true
            error_chart.visible = false
        }

    }

    FocusScreen{
        id:focus_screen
        visible: false
        anchors.fill: parent
        onClose:{
            splash.visible = true
            focus_screen.visible = false
        }
    }

    Prev_Match_Screen{
        id: prev_match
        visible: false
        anchors.fill: parent
        onClose:{
            splash.visible = true
            prev_match.visible = false
        }
    }

}
