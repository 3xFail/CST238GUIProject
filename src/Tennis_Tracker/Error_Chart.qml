import QtQuick 2.6
import QtCharts 2.0

Rectangle {

    ChartView {
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

}
