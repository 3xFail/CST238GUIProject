#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "score_board.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Match sb;

    engine.rootContext()->setContextProperty("scoreboard", &sb);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
