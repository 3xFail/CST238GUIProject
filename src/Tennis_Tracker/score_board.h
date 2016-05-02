#ifndef SCORE_BOARD_H
#define SCORE_BOARD_H

#include <QObject>
#include <iostream>

#define LOVE 0
#define FIFT 15
#define THIR 30
#define FORT 40

class Match
{
    public:
        Match();
        Match(short lenght, bool ad_play);
        Match(const Match & passin);
        Match & operator=(const Match & passin);
        ~Match();

        //point win or loss
        void p1_won();
        void p1_loss();

        //check win
        bool end_of_match();

        //check duece
        bool check_duece();

        //getter for match size
        short get_match_size();

        //getter for AD
        bool get_play_ad();

        //getters for ad flags
        bool get_p1_ad();
        bool get_p2_ad();

        //getters for all the score elements
        short get_p1_points();
        short get_p2_points();
        short get_p1_games();
        short get_p2_games();
        short get_p1_set();
        short get_p2_set();



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
