import QtQuick 2.6
import QtCharts 2.0

Rectangle {
    id:root
    color: "dark green"

    signal close

    ChartView {
        id:pie_graph
        width: 400
        height: 300
        theme: ChartView.ChartThemeBrownSand
        antialiasing: true

        PieSeries {
            id: pieSeries
            PieSlice { label: "Serves"; value: 16.6  }
            PieSlice { label: "Returns"; value: 16.6  }
            PieSlice { label: "Forehand"; value: 16.6  }
            PieSlice { label: "Backhand"; value: 16.6  }
            PieSlice { label: "Volly"; value: 16.6 }
            PieSlice { label: "Smash"; value: 16.67}
        }
    }

    MyButton{
        id:close_butt


        ma.onClicked:
        {
            root.close()
        }
    }

}
