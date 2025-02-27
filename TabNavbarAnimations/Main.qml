import QtQuick
import QtQuick.Layouts

Window {
    visible: true
    width: 640
    height: 800
    color: "#202020"
    title: "Project - Neon Tabbar"

    RowLayout {
        anchors.centerIn: parent
        spacing: 20

        Tabbar {
            rectColor: "#8338ec"
            itemText: "Home"
        }
        Tabbar {
            rectColor: "#3a86ff"
            itemText: "About"
        }
        Tabbar {
            rectColor: "#ff006e"
            itemText: "Help"
        }
    }

}
