import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle{

    property string input_player1name: player1_input.text
    property string input_player2name: player2_input.text
    property string input_player3name: player3_input.text
    property string input_player4name: player4_input.text

    id:match_setup_win
    height: 600
    color: "#e0e0e0"
    border.color: "black"
    border.width: 5
    width: 800
    visible: true

    //match type checkbox label
    Text{
        id:match_type_label
        text:"Match type:"
        font.pixelSize: 18
        anchors.top: match_setup_win.top
        anchors.topMargin : 15
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.horizontalCenterOffset: -200
    }

    //check boxes
    Row{
        id:check_box_row
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.top: match_setup_win.top
        anchors.topMargin : 15
        spacing: 40

        CheckBox{
            id:singles_check
            checked: true
            style: CheckBoxStyle{
                label: Text{
                    text: "Singles"
                    font.pixelSize: 18
                }
                indicator: Rectangle {
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 3
                    border.color: control.activeFocus ? "darkblue" : "gray"
                    border.width: 1
                    Rectangle {
                        visible: control.checked
                        color: "#555"
                        border.color: "#333"
                        radius: 1
                        anchors.margins: 4
                        anchors.fill: parent
                    }
                }
            }

        }
        CheckBox{
            id: doubles_check
            style: CheckBoxStyle{
                label: Text{
                    text: "Doubles"
                    font.pixelSize: 18
                }
                indicator: Rectangle {
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 3
                    border.color: control.activeFocus ? "darkblue" : "gray"
                    border.width: 1
                    Rectangle {
                        visible: control.checked
                        color: "#555"
                        border.color: "#333"
                        radius: 1
                        anchors.margins: 4
                        anchors.fill: parent
                    }
                }
            }
        }
    }

    //player one label
    Text{
        id: player1_label
        text: "Tracked Player:"
        //font.bold: true
        font.pixelSize: 18
        visible: true
        anchors.right: player1_back.left
        anchors.rightMargin: 3
        anchors.verticalCenter: player1_back.verticalCenter
    }

    Rectangle{
        id:player1_back
        color: "white"
        radius: 10
        width: parent.width/2.5
        height: 20
        anchors.top: check_box_row.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: check_box_row.horizontalCenter

        TextInput{
            id: player1_input
            color: "#151515"
            selectionColor: "green"
            font.pixelSize: 16
            //font.bold: true
            width: parent.width
            maximumLength: 30
            anchors.centerIn: parent
            focus: true

        }
    }

    //player two label
    Text{
        id: player2_label
        text: {
            if (singles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = "Opponent:"
            }
            else if (doubles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = "Tracked partner:"
            }
        }
        visible: true
        anchors.right: player2_back.left
        anchors.rightMargin: 3
        anchors.verticalCenter: player2_back.verticalCenter
    }
    //player2 name input
    Rectangle{
        id:player2_back
        color: "white"
        radius: 10
        width: parent.width/2.5
        height: 20
        anchors.top: player1_back.bottom
        anchors.topMargin: 7
        anchors.horizontalCenter: player1_back.horizontalCenter

        TextInput{
            id: player2_input
            color: "#151515"
            selectionColor: "green"
            font.pixelSize: 16
            //font.bold: true
            width: parent.width
            maximumLength: 30
            anchors.centerIn: parent
            focus: true

        }
    }

    //player three label
    Text{
        id: player3_label
        visible: {
            if(doubles_check.checked)
                true
        }
        text: {
            if (doubles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = "Opponent 1:"
            }
            else if (singles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = ""
            }
        }

        anchors.right: player3_back.left
        anchors.rightMargin: 3
        anchors.verticalCenter: player3_back.verticalCenter

    }

    //player3 name input
    Rectangle{
        id:player3_back
        color: "white"
        radius: 10
        width: parent.width/2.5
        height: 20
        anchors.top: player2_back.bottom
        anchors.topMargin: 7
        anchors.horizontalCenter: player2_back.horizontalCenter
        visible: {
            if(doubles_check.checked)
                true
            else
                false
        }

        TextInput{
            id: player3_input
            color: "#151515"
            selectionColor: "green"
            font.pixelSize: 16
            //font.bold: true
            width: parent.width
            maximumLength: 30
            anchors.centerIn: parent
            focus: true
            visible: {
                if(doubles_check.checked)
                    true
                else
                    false
            }

        }
    }

    //player four label
    Text{
        id: player4_label
        visible: {
            if(doubles_check.checked)
                true
        }
        text: {
            if (doubles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = "Opponent 2:"
            }
            else if (singles_check.checked)
            {
                //font.bold = true
                font.pixelSize = 18
                text.replace = ""
            }
        }
        anchors.right: player4_back.left
        anchors.rightMargin: 3
        anchors.verticalCenter: player4_back.verticalCenter
    }

    //player4 name input
    Rectangle{
        id:player4_back
        color: "white"
        radius: 10
        width: parent.width/2.5
        height: 20
        anchors.top: player3_back.bottom
        anchors.topMargin: 7
        anchors.horizontalCenter: player3_back.horizontalCenter
        visible: {
            if(doubles_check.checked)
                true
            else
                false
        }

        TextInput{
            id: player4_input
            color: "#151515"
            selectionColor: "green"
            font.pixelSize: 16
            //font.bold: true
            width: parent.width
            maximumLength: 30
            anchors.centerIn: parent
            focus: true
            visible: {
                if(doubles_check.checked)
                    true
                else
                    false
            }

        }
    }

    //match length checkbox label
    Text{
        id:match_length_label
        text:"Match Length:"
        font.pixelSize: 18
        anchors.top: player4_label.bottom
        anchors.topMargin : 15
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.horizontalCenterOffset: -200
    }

    //match length checkbox row
    Row{
        id: match_lenght_row
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.top: player4_back.bottom
        anchors.topMargin : 15
        spacing: 20
        CheckBox{
            id:proset_check
            checked: false
            style: CheckBoxStyle{
                label: Text{
                    text: "Pro Set"
                    font.pixelSize: 18
                }
                indicator: Rectangle {
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 3
                    border.color: control.activeFocus ? "darkblue" : "gray"
                    border.width: 1
                    Rectangle {
                        visible: control.checked
                        color: "#555"
                        border.color: "#333"
                        radius: 1
                        anchors.margins: 4
                        anchors.fill: parent
                    }
                }
            }
        }

        CheckBox{
            id:threesets_check
            checked: true
            style: CheckBoxStyle{
                label: Text{
                    text: "3 Sets"
                    font.pixelSize: 18
                }
                indicator: Rectangle {
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 3
                    border.color: control.activeFocus ? "darkblue" : "gray"
                    border.width: 1
                    Rectangle {
                        visible: control.checked
                        color: "#555"
                        border.color: "#333"
                        radius: 1
                        anchors.margins: 4
                        anchors.fill: parent
                    }
                }
            }
        }

        CheckBox{
            id:fivesets_check
            checked: false
            style: CheckBoxStyle{
                label: Text{
                    text: "5 Sets"
                    font.pixelSize: 18
                }
                indicator: Rectangle {
                    implicitWidth: 16
                    implicitHeight: 16
                    radius: 3
                    border.color: control.activeFocus ? "darkblue" : "gray"
                    border.width: 1
                    Rectangle {
                        visible: control.checked
                        color: "#555"
                        border.color: "#333"
                        radius: 1
                        anchors.margins: 4
                        anchors.fill: parent
                    }
                }
            }
        }

    }

    //ad checkbox label
    Text{
        id:ad_label
        text:"Play AD:"
        font.pixelSize: 18
        anchors.top: match_length_label.bottom
        anchors.topMargin : 15
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.horizontalCenterOffset: -200
    }

    //ad check box
    CheckBox{
        id:ad_check
        checked: false
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.top: match_lenght_row.bottom
        anchors.topMargin : 15
        style: CheckBoxStyle{
            label: Text{
                text: "Yes"
                font.pixelSize: 18
            }
            indicator: Rectangle {
                implicitWidth: 16
                implicitHeight: 16
                radius: 3
                border.color: control.activeFocus ? "darkblue" : "gray"
                border.width: 1
                Rectangle {
                    visible: control.checked
                    color: "#555"
                    border.color: "#333"
                    radius: 1
                    anchors.margins: 4
                    anchors.fill: parent
                }
            }
        }
    }

    //accept button
    MyButton{
        id: okay_butt
        height: 50
        width: 100
        radius: 10
        color: "white"
        text: "Start Match"
        text_size: 12
        anchors.bottom: match_setup_win.bottom
        anchors.bottomMargin: 15
        anchors.horizontalCenter: match_setup_win.horizontalCenter
        anchors.horizontalCenterOffset: 325
        ma.onClicked: {

            //assign input if its not empty to the right property

            //clear the input area


            match_setup_win.visible = false
        }

    }

}
