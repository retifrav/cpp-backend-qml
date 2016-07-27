#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "backend.h" // don't forget to do that

// --- 1st option: add a context property

//int main(int argc, char *argv[])
//{
//    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl("qrc:/main.qml"));

//    // create an instance of our backend
//    Backend *backend = new Backend();
//    // and add it to the QML context
//    engine.rootContext()->setContextProperty("backend", backend);

//    return app.exec();
//}

// --- 2nd option: register a type

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    // it's important to do this before engine.load
    qmlRegisterType<Backend>("io.qt.Backend", 1, 0, "Backend");
    engine.load(QUrl("qrc:/main.qml"));

    return app.exec();
}
