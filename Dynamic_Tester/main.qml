import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    minimumWidth: 820
    minimumHeight: 400
    title: qsTr("Dynamic Tester")
    MainForm {
        anchors.fill: parent
        exitButton.onClicked: Qt.quit();
        newSquareButton.onClicked: {
            designer.constraints.shapesModel.append
            ({
                 shape: "square",
                 r: 255,
                 g: 0,
                 b: 0,
                 sx: 128,
                 sy: 128,
                 theta: 0,
                 size: 5
            });

            var newSquare = designer.constraints.shapesModel.get(designer.constraints.shapesModel.count - 1);
            designer.selection.selected = newSquare;
            designer.selection.updateSelected();
            designer.canvas.requestPaint();
        }
    }
}