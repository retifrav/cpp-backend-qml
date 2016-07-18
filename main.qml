import QtQuick 2.7
import QtQuick.Controls 2.0

ApplicationWindow {
    visible: true
    title: "C++ backend for QML"
    // and some silly resizing restrictions
    width: 600
    minimumWidth: 600
    maximumWidth: 600
    height: 350
    minimumHeight: 350
    maximumHeight: 350

    Text {
        id: someTxt
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 1 / 3
        font.pointSize: 36
        text: "just some text"
    }

    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 2 / 3
        text: "Do some"
        onClicked: {
            // here we call our C++ backend
            someTxt.text = backend.doSome()
        }
    }
}
