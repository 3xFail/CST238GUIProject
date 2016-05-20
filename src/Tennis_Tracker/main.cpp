#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "score_board.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //todo: create a scoreboard option
    Match sb;

    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("Scoreboard", &sb);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
