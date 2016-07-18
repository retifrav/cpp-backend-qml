#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "backend.h" // don't forget to do that

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));

    // create an instance of our backend
    Backend *backend = new Backend();
    // and add it to the QML context
    engine.rootContext()->setContextProperty("backend", backend);

    return app.exec();
}
