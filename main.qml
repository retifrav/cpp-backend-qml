import QtQuick 2.7
import QtQuick.Controls 2.0
// that's for the 2nd option only
import io.qt.Backend 1.0

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

    // that's for the 2nd option only
    Backend {
        id: backend
    }

    Text {
        id: someTxt
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 1 / 3
        font.pointSize: 36
        text: "just some text"
    }

    Button {
        id: btn
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 2 / 3
        text: "Do some"
        onClicked: {
            // here we call our C++ backend
            someTxt.text = backend.doSome();
        }
    }

    // we can also connect to signals from C++ backend like this
    Connections {
        target: backend
        onSomeThing: {
            console.log(smthing);
        }
    }
}
