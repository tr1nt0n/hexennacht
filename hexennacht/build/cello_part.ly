\version "2.20.0"
\language "english"

\include "parts-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily"

\score {
    \removeWithTag #'voice1
    \removeWithTag #'voice2
    \removeWithTag #'voice3
    \removeWithTag #'voice4
    \removeWithTag #'voice5
    \removeWithTag #'voice6
    \removeWithTag #'voice7
    \removeWithTag #'voice8
    \removeWithTag #'voice9
    \removeWithTag #'voice10
    \removeWithTag #'voice11
    \removeWithTag #'voice12
    \removeWithTag #'voice13
    \removeWithTag #'voice14
    \removeWithTag #'voice15
    \removeWithTag #'voice16
    \removeWithTag #'voice17
    \removeWithTag #'voice19
        {
            \include "01.ly"
            \include "02.ly"
            \include "03.ly"
            \include "04.ly"
            \include "05.ly"
            \include "06.ly"
            \include "ghost1.ly"
            \include "08.ly"
            \include "09.ly"
        }
}
