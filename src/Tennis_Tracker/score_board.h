#ifndef SCORE_BOARD_H
#define SCORE_BOARD_H

#include <QObject>
#include <iostream>


#define LOVE 0
#define FIFT 15
#define THIR 30
#define FORT 40

class Match: public QObject
{
    Q_OBJECT
    public:
        Match();
        Match(short lenght, bool ad_play);
        Match(const Match & passin);
        Match & operator=(const Match & passin);
        ~Match();
        Q_INVOKABLE void clear_Score_Board();

        //point win or loss
        Q_INVOKABLE void p1_won();
        Q_INVOKABLE void p1_loss();

        //check win
        Q_INVOKABLE bool end_of_match();

        //check duece
        Q_INVOKABLE bool check_duece();

        //getter for match size
        Q_INVOKABLE short get_match_size();

        //getter for AD
        Q_INVOKABLE bool get_play_ad();

        //getters for ad flags
        Q_INVOKABLE bool get_p1_ad();
        Q_INVOKABLE bool get_p2_ad();

        //getters for all the score elements
        Q_INVOKABLE QString get_p1_points();
        Q_INVOKABLE QString get_p2_points();
        Q_INVOKABLE short get_p1_games();
        Q_INVOKABLE short get_p2_games();
        Q_INVOKABLE short get_p1_set();
        Q_INVOKABLE short get_p2_set();

        Q_INVOKABLE void set_play_ad(bool play);
        Q_INVOKABLE void set_length(short length);

        Q_INVOKABLE QString get_game_score();
        Q_INVOKABLE QString get_set_score();

    private:
        // point flags
        bool duece;
        bool p1AD;
        bool p2AD;
        //player point scores
        short P1PS;
        short P2PS;
        //player game scores
        short P1GS;
        short P2GS;
        //player set scores
        short P1SS;
        short P2SS;
        //match size
        short match_size;
        //AD flag
        bool play_AD;

};


#endif // SCORE_BOARD_H
