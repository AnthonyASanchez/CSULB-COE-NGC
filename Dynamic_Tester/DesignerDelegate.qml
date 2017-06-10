import QtQuick 2.0

//This is a MultiDelegate composed of multiple Components.
//The appropriate Component is chosen and loaded.
Item {
    function selectDelegate(shape) {
        switch(shape) {
        case "square":
            return squareDelegate;
        }
    }

    Loader {
        sourceComponent: selectDelegate(shape)
    }

    Component {
        id: squareDelegate
        Rectangle {
            x: sx - width/2
            y: sy - height/2
            transform: Rotation {
                origin.x: width / 2
                origin.y: height / 2
                angle: theta
            }
            width: size * 2
            height: size * 2
            color: Qt.rgba(r/255., g/255., b/255.)
            antialiasing: true
        }
    }
}
