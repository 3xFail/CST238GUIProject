import QtQuick 2.6




Rectangle{

    property alias text1: dia_one.text
    property alias text2: dia_two.text

    TextRect{
        id:dia_one
        visible: true
        text_color: "White"
        text_size: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

    }

    TextRect{
        id:dia_two
        visible:false
        text_color: "White"
        text_size: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

    }

    MyButton{
        id:dia_but
        text: "Next"
        onclicked:{
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
        anchors.right: parent.right
        anchors.bottom: parent.Bottom

    }
}
