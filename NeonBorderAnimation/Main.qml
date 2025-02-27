import QtQuick
import Qt5Compat.GraphicalEffects
import QtQuick.Shapes
import QtQuick.Controls.Material

Window {
    visible: true
    width: 640
    height: 800
    color: "#202020"

    property int innerWidth: 400
    property int innerHeight: 600

    Shape {
        id: outerShape
        anchors.centerIn: parent
        width: innerWidth + 5
        height: innerHeight + 5

        property real angle: 0
        property real diag: Math.sqrt((width/2) * (width/2) + (height/2) * (height/2))

        NumberAnimation on angle {
            from: 0
            to: 360
            duration: 2500
            loops: Animation.Infinite
        }

        ShapePath {
            strokeWidth: 0
            fillGradient: LinearGradient {
                x1: outerShape.width/2 + outerShape.diag * Math.cos((outerShape.angle + 180) * Math.PI / 180)
                y1: outerShape.height/2 + outerShape.diag * Math.sin((outerShape.angle + 180) * Math.PI / 180)
                x2: outerShape.width/2 + outerShape.diag * Math.cos(outerShape.angle * Math.PI / 180)
                y2: outerShape.height/2 + outerShape.diag * Math.sin(outerShape.angle * Math.PI / 180)
                GradientStop { position: 0; color: "#12c2e9" }
                GradientStop { position: 0.33; color: "#c471ed" }
                GradientStop { position: 1; color: "#f64f59" }
            }
            PathRectangle {
                x: 0; y: 0; width: outerShape.width; height: outerShape.height; radius: 5
            }
        }
    }

    Shape {
        id: innerShape
        anchors.centerIn: parent
        width: innerWidth
        height: innerHeight

        ShapePath {
            strokeWidth: 0
            fillColor: "#363636"
            PathRectangle {
                x: 0; y: 0; width: innerWidth; height: innerHeight; radius: 5
            }
        }
    }
}
