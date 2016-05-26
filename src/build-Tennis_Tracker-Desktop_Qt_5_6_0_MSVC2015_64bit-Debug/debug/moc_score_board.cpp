/****************************************************************************
** Meta object code from reading C++ file 'score_board.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.6.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../Tennis_Tracker/score_board.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'score_board.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.6.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Match_t {
    QByteArrayData data[23];
    char stringdata0[252];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Match_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Match_t qt_meta_stringdata_Match = {
    {
QT_MOC_LITERAL(0, 0, 5), // "Match"
QT_MOC_LITERAL(1, 6, 17), // "clear_Score_Board"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 6), // "p1_won"
QT_MOC_LITERAL(4, 32, 7), // "p1_loss"
QT_MOC_LITERAL(5, 40, 12), // "end_of_match"
QT_MOC_LITERAL(6, 53, 11), // "check_duece"
QT_MOC_LITERAL(7, 65, 14), // "get_match_size"
QT_MOC_LITERAL(8, 80, 11), // "get_play_ad"
QT_MOC_LITERAL(9, 92, 9), // "get_p1_ad"
QT_MOC_LITERAL(10, 102, 9), // "get_p2_ad"
QT_MOC_LITERAL(11, 112, 13), // "get_p1_points"
QT_MOC_LITERAL(12, 126, 13), // "get_p2_points"
QT_MOC_LITERAL(13, 140, 12), // "get_p1_games"
QT_MOC_LITERAL(14, 153, 12), // "get_p2_games"
QT_MOC_LITERAL(15, 166, 10), // "get_p1_set"
QT_MOC_LITERAL(16, 177, 10), // "get_p2_set"
QT_MOC_LITERAL(17, 188, 11), // "set_play_ad"
QT_MOC_LITERAL(18, 200, 4), // "play"
QT_MOC_LITERAL(19, 205, 10), // "set_length"
QT_MOC_LITERAL(20, 216, 6), // "length"
QT_MOC_LITERAL(21, 223, 14), // "get_game_score"
QT_MOC_LITERAL(22, 238, 13) // "get_set_score"

    },
    "Match\0clear_Score_Board\0\0p1_won\0p1_loss\0"
    "end_of_match\0check_duece\0get_match_size\0"
    "get_play_ad\0get_p1_ad\0get_p2_ad\0"
    "get_p1_points\0get_p2_points\0get_p1_games\0"
    "get_p2_games\0get_p1_set\0get_p2_set\0"
    "set_play_ad\0play\0set_length\0length\0"
    "get_game_score\0get_set_score"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Match[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      19,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    0,  109,    2, 0x02 /* Public */,
       3,    0,  110,    2, 0x02 /* Public */,
       4,    0,  111,    2, 0x02 /* Public */,
       5,    0,  112,    2, 0x02 /* Public */,
       6,    0,  113,    2, 0x02 /* Public */,
       7,    0,  114,    2, 0x02 /* Public */,
       8,    0,  115,    2, 0x02 /* Public */,
       9,    0,  116,    2, 0x02 /* Public */,
      10,    0,  117,    2, 0x02 /* Public */,
      11,    0,  118,    2, 0x02 /* Public */,
      12,    0,  119,    2, 0x02 /* Public */,
      13,    0,  120,    2, 0x02 /* Public */,
      14,    0,  121,    2, 0x02 /* Public */,
      15,    0,  122,    2, 0x02 /* Public */,
      16,    0,  123,    2, 0x02 /* Public */,
      17,    1,  124,    2, 0x02 /* Public */,
      19,    1,  127,    2, 0x02 /* Public */,
      21,    0,  130,    2, 0x02 /* Public */,
      22,    0,  131,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Short,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Short,
    QMetaType::Short,
    QMetaType::Short,
    QMetaType::Short,
    QMetaType::Short,
    QMetaType::Short,
    QMetaType::Void, QMetaType::Bool,   18,
    QMetaType::Void, QMetaType::Short,   20,
    QMetaType::QString,
    QMetaType::QString,

       0        // eod
};

void Match::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Match *_t = static_cast<Match *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->clear_Score_Board(); break;
        case 1: _t->p1_won(); break;
        case 2: _t->p1_loss(); break;
        case 3: { bool _r = _t->end_of_match();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 4: { bool _r = _t->check_duece();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 5: { short _r = _t->get_match_size();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 6: { bool _r = _t->get_play_ad();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 7: { bool _r = _t->get_p1_ad();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 8: { bool _r = _t->get_p2_ad();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: { short _r = _t->get_p1_points();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 10: { short _r = _t->get_p2_points();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 11: { short _r = _t->get_p1_games();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 12: { short _r = _t->get_p2_games();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 13: { short _r = _t->get_p1_set();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 14: { short _r = _t->get_p2_set();
            if (_a[0]) *reinterpret_cast< short*>(_a[0]) = _r; }  break;
        case 15: _t->set_play_ad((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 16: _t->set_length((*reinterpret_cast< short(*)>(_a[1]))); break;
        case 17: { QString _r = _t->get_game_score();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 18: { QString _r = _t->get_set_score();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject Match::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Match.data,
      qt_meta_data_Match,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Match::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Match::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Match.stringdata0))
        return static_cast<void*>(const_cast< Match*>(this));
    return QObject::qt_metacast(_clname);
}

int Match::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 19)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 19;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 19)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 19;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
