import QtQuick 2.6

Rectangle{

    property alias text1: dia_one.text
    property alias text2: dia_two.text
    color: "Transparent"

    TextRect{
        id:dia_one
        visible: true
        text_color: "White"
        text_size: 12
        color: "Transparent"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    TextRect{
        id:dia_two
        visible:false
        text_color: "White"
        text_size: 12
        color: "Transparent"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    MyButton{
        id:dia_but
        text: "Next"
        height: parent.height* .2
        width: parent.width * .3
        ma.onClicked:{
            //insert code here
            if(dia_one.visible)
            {
                dia_one.visible = false
                dia_two.visible = true
            }
            else
            {
                dia_two.visible = false
                dia_one.visible = true
            }
        }
        color: "Lime"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
