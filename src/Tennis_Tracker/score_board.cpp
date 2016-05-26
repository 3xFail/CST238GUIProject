#include "score_board.h"

Match::Match()
{
    match_size = 3;
    play_AD = false;
    duece = false;
    p1AD = false;
    p2AD = false;
    //player point scores
    P1PS = LOVE;
    P2PS = LOVE;
    //player game scores
    P1GS = LOVE;
    P2GS = LOVE;
    //player set scores
    P1SS = LOVE;
    P2SS = LOVE;
}
Match::Match(short length, bool ad_play):match_size(length), play_AD(ad_play)
{
    duece = false;
    p1AD = false;
    p2AD = false;
    //player point scores
    P1PS = LOVE;
    P2PS = LOVE;
    //player game scores
    P1GS = LOVE;
    P2GS = LOVE;
    //player set scores
    P1SS = LOVE;
    P2SS = LOVE;
}
Match::Match(const Match & passin)
{
    *this = passin;
}
Match & Match::operator=(const Match & passin)
{
    duece = passin.duece;
    p1AD = passin.p1AD;
    p2AD = passin.p2AD;
    //player point scores
    P1PS = passin.P1PS;
    P2PS = passin.P2PS;
    //player game scores
    P1GS = passin.P1GS;
    P2GS = passin.P2GS;
    //player set scores
    P1SS = passin.P1SS;
    P2SS = passin.P2SS;
    return *this;
}
Match::~Match()
{

}

//point win or loss
void Match::p1_won()
{
    if (!end_of_match())
    {
        if (play_AD)
        {
            //duece case
            if (get_p1_ad())
            {
                P1PS = LOVE;
                P2PS = LOVE;
                if (P1GS <= 4)
                {
                    P1GS++;
                }
                else if (P1GS >= 5 && P2GS <= (P1GS - 2))
                {
                    P1GS = LOVE;
                    P2GS = LOVE;
                    P1SS++;
                }
                else
                {
                    P1GS++;
                }
            }
            else if (check_duece())
            {
                p1AD = true;
            }
            else
            {
                //handles anything less then gamepoint
                if (P1PS != FORT)
                {
                    if (P1PS == LOVE)
                    {
                        P1PS = FIFT;
                    }
                    else if (P1PS == FIFT)
                    {
                        P1PS = THIR;
                    }
                    else if (P1PS == THIR)
                    {
                        P1PS = FORT;
                    }
                }
                //game point
                else if (P1PS == FORT)
                {
                    P1PS = LOVE;
                    P2PS = LOVE;
                    if (P1GS <= 4)
                    {
                        P1GS++;
                    }
                    else if (P1GS >= 5 && P2GS <= (P1GS - 2))
                    {

                        P1GS = LOVE;
                        P2GS = LOVE;
                        P1SS++;
                    }
                    else
                    {
                        P1GS++;
                    }
                }
            }
        }
        else
        {
            //handles anything less then gamepoint
            if (P1PS != FORT)
            {
                if (P1PS == LOVE)
                {
                    P1PS = FIFT;
                }
                else if (P1PS == FIFT)
                {
                    P1PS = THIR;
                }
                else if (P1PS == THIR)
                {
                    P1PS = FORT;
                }
            }
            //game point
            else if (P1PS == FORT)
            {
                P1PS = LOVE;
                P2PS = LOVE;
                if (P1GS <= 4)
                {
                    P1GS++;
                }
                else if (P1GS >= 5 && P2GS <= (P1GS - 2))
                {
                    P1GS = LOVE;
                    P2GS = LOVE;
                    P1SS++;
                }
                else
                {
                    P1GS++;
                }
            }
        }
    }
    else
    {
        std::cout << "\nGame Over!\n";
    }

}

void Match::p1_loss()
{
    if (!end_of_match())
    {
        if (play_AD)
        {
            //duece case
            if (get_p2_ad())
            {
                P1PS = LOVE;
                P2PS = LOVE;
                p2AD = false;
                if (P2PS <= 4)
                {
                    P2GS++;
                }
                else if (P2PS >= 5 && P1GS <= (P2PS - 2))
                {
                    P1GS = LOVE;
                    P2GS = LOVE;
                    P2SS++;
                }
                else
                {
                    P2GS++;
                }
            }
            else if (check_duece())
            {
                p2AD = true;
            }
            else
            {
                //handles anything less then gamepoint
                if (P2PS != FORT)
                {
                    if (P2PS == LOVE)
                    {
                        P2PS = FIFT;
                    }
                    else if (P2PS == FIFT)
                    {
                        P2PS = THIR;
                    }
                    else if (P2PS == THIR)
                    {
                        P2PS = FORT;
                    }
                }
                //game point
                else if (P2PS == FORT)
                {
                    P1PS = LOVE;
                    P2PS = LOVE;
                    if (P2PS <= 4)
                    {
                        P2GS++;
                    }
                    else if (P2PS >= 5 && P1GS <= (P2PS - 2))
                    {
                        P1GS = LOVE;
                        P2GS = LOVE;
                        P2SS++;
                    }
                    else
                    {
                        P2GS++;
                    }
                }
            }
        }
        else
        {
            //handles anything less then gamepoint
            if (P2PS != FORT)
            {
                if (P2PS == LOVE)
                {
                    P2PS = FIFT;
                }
                else if (P2PS == FIFT)
                {
                    P2PS = THIR;
                }
                else if (P2PS == THIR)
                {
                    P2PS = FORT;
                }
                else
                {
                    P2GS++;
                }
            }
            //game point
            else if (P2PS == FORT)
            {
                P1PS = LOVE;
                P2PS = LOVE;

                if (P2GS <= 4)
                {
                    P2GS++;
                }
                else if (P2GS >= 5 && P1GS <= (P2GS - 2))
                {
                    P1GS = LOVE;
                    P2GS = LOVE;
                    P2SS++;
                }
                else
                {
                    P2GS++;
                }
            }
        }
    }
    else
    {
        std::cout << "\nGame Over!\n";
    }
}

//check win
bool Match::end_of_match()
{
    bool temp;
    if (P1SS == match_size || P2SS == match_size)
    {
        temp = true;
    }
    else
        temp = false;

    return temp;
}

bool Match::check_duece()
{
    if (P1PS == 40 && P1PS == P2PS)
        duece = true;
    return duece;
}
//getter for match size
short Match::get_match_size()
{
    return match_size;
}

//getter for AD
bool Match::get_play_ad()
{
    return play_AD;
}

bool Match::get_p1_ad()
{
    return p1AD;
}
bool Match::get_p2_ad()
{
    return p2AD;
}
short Match::get_p1_points()
{
    return P1PS;
}
short Match::get_p2_points()
{
    return P2PS;
}
short Match::get_p1_games()
{
    return P1GS;
}
short Match::get_p2_games()
{
    return P2GS;
}
short Match::get_p1_set()
{
    return P1SS;
}
short Match::get_p2_set()
{
    return P2SS;
}

void Match::set_play_ad(bool play)
{
    play_AD = play;
}

void Match::set_length(short length)
{
    match_size = length;
}

void Match::clear_Score_Board()
{
    duece = false;
    p1AD = false;
    p2AD = false;
    //player point scores
    P1PS = LOVE;
    P2PS = LOVE;
    //player game scores
    P1GS = LOVE;
    P2GS = LOVE;
    //player set scores
    P1SS = LOVE;
    P2SS = LOVE;
}

QString Match::get_game_score()
{
    return (QString::number(P1GS) + " - " + QString::number(P2GS));
}

QString Match::get_set_score()
{
    return (QString::number(P1SS) + " - " + QString::number(P2SS));
}
