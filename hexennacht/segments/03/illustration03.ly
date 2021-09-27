%! abjad.LilyPondFile._get_format_pieces()
\version "2.20.0"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 2/4
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \tempo 4=69
            \time 7/8
            s1 * 7/8
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r4
                        ^ \markup { 0 }
                        c'8
                        ^ \markup { 1 }
                        r8
                        ^ \markup { 2 }
                        r4.
                        ^ \markup { 3 }
                        c'8
                        ^ \markup { 4 }
                        r8
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        c'2..
                        ^ \markup { 7 }
                        r2..
                        ^ \markup { 8 }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4
                        ^ \markup { 0 }
                        c'8
                        ^ \markup { 1 }
                        r8
                        ^ \markup { 2 }
                        r4.
                        ^ \markup { 3 }
                        c'8
                        ^ \markup { 4 }
                        r8
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        c'2..
                        ^ \markup { 7 }
                        r2..
                        ^ \markup { 8 }
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        ^ \markup { 0 }
                        r8
                        ^ \markup { 1 }
                        c'8
                        ^ \markup { 2 }
                        r8
                        ^ \markup { 3 }
                        r2.
                        ^ \markup { 4 }
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        ^ \markup { 5 }
                        [
                        e'8
                        ^ \markup { 6 }
                        \revert Staff.Stem.stemlet-length
                        bf'8
                        ^ \markup { 7 }
                        ]
                        c'4
                        ^ \markup { 8 }
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        ^ \markup { 9 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bf'8
                        ^ \markup { 10 }
                        ]
                        r2..
                        ^ \markup { 11 }
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        c'2..
                        ^ \markup { 3 }
                        r2..
                        ^ \markup { 4 }
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r2
                    ^ \markup { 0 }
                    r4.
                    ^ \markup { 1 }
                    r2.
                    ^ \markup { 2 }
                    \override Staff.Stem.stemlet-length = 0.75
                    a''8
                    ^ \markup { 3 }
                    ~
                    [
                    a''32
                    ^ \markup { 4 }
                    \revert Staff.Stem.stemlet-length
                    b'16.
                    ^ \markup { 5 }
                    ]
                    r16
                    ^ \markup { 6 }
                    bf''16
                    ^ \markup { 7 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    bf''8
                    ^ \markup { 8 }
                    ~
                    [
                    bf''32
                    ^ \markup { 9 }
                    \revert Staff.Stem.stemlet-length
                    cs''16.
                    ^ \markup { 10 }
                    ~
                    ]
                    cs''8.
                    ^ \markup { 11 }
                    r16
                    ^ \markup { 12 }
                    r2..
                    ^ \markup { 13 }
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tpt. }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r2..
                        ^ \markup { 3 }
                        r2..
                        ^ \markup { 4 }
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        f,4
                        ^ \markup { 3 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f,16
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,16
                        ^ \markup { 5 }
                        ~
                        ]
                        g,4
                        ^ \markup { 6 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8
                        ^ \markup { 7 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8
                        ^ \markup { 8 }
                        ]
                        r2..
                        ^ \markup { 9 }
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        bf,4
                        ^ \markup { 3 }
                        af,8
                        ^ \markup { 4 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8.
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ^ \markup { 6 }
                        ~
                        ]
                        af,4
                        ^ \markup { 7 }
                        r2..
                        ^ \markup { 8 }
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \times 4/5
                        {
                            \set Staff.shortInstrumentName =
                            \markup { pno. }
                            \override Staff.Stem.stemlet-length = 0.75
                            f'8.
                            \mf
                            - \tenuto
                            ^ \markup { 0 }
                            [
                            \(
                            cs''16
                            ^ \markup { 1 }
                            \revert Staff.Stem.stemlet-length
                            af'16
                            ^ \markup { 2 }
                            \)
                            ]
                        }
                        a'4
                        \p
                        - \tenuto
                        ^ \markup { 3 }
                        \<
                        \(
                        e'4
                        ^ \markup { 4 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \mf
                        ^ \markup { 6 }
                        ~
                        ]
                        ef'4
                        ^ \markup { 7 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f'8
                        ^ \markup { 9 }
                        \)
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'16
                            \f
                            - \tenuto
                            ^ \markup { 10 }
                            [
                            \(
                            f'8.
                            ^ \markup { 11 }
                            \revert Staff.Stem.stemlet-length
                            f'16
                            ^ \markup { 12 }
                            \)
                            ]
                        }
                        r2..
                        ^ \markup { 13 }
                        r2..
                        ^ \markup { 14 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r4
                        ^ \markup { 0 }
                        r8
                        ^ \markup { 1 }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf32
                            - \tenuto
                            ^ \markup { 2 }
                            [
                            \(
                            a32
                            ^ \markup { 3 }
                            bf32
                            ^ \markup { 4 }
                            bf32
                            ^ \markup { 5 }
                            c'32
                            ^ \markup { 6 }
                            \revert Staff.Stem.stemlet-length
                            g32
                            ^ \markup { 7 }
                            \)
                            ]
                        }
                        cs'4
                        - \tenuto
                        ^ \markup { 8 }
                        \(
                        g8
                        ^ \markup { 9 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g8.
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af16
                        ^ \markup { 11 }
                        \)
                        ]
                        \times 2/3
                        {
                            bf4
                            - \tenuto
                            ^ \markup { 12 }
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            ef'8
                            ^ \markup { 13 }
                            [
                            bf8
                            ^ \markup { 14 }
                            g8
                            ^ \markup { 15 }
                            \revert Staff.Stem.stemlet-length
                            d'8
                            ^ \markup { 16 }
                            \)
                            ]
                        }
                        r2..
                        ^ \markup { 17 }
                        r2..
                        ^ \markup { 18 }
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    r8
                    ^ \markup { 0 }
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    \mf
                    - \tenuto
                    ^ \markup { 1 }
                    \<
                    [
                    \(
                    \revert Staff.Stem.stemlet-length
                    d'16
                    ^ \markup { 2 }
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    ^ \markup { 3 }
                    [
                    ef'16
                    ^ \markup { 4 }
                    ef'16
                    ^ \markup { 5 }
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ^ \markup { 6 }
                    \)
                    ]
                    cs'4
                    \f
                    - \tenuto
                    ^ \markup { 7 }
                    \>
                    \(
                    fs'8
                    ^ \markup { 8 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    fs'8.
                    ^ \markup { 9 }
                    [
                    \revert Staff.Stem.stemlet-length
                    cs'16
                    \p
                    ^ \markup { 10 }
                    \)
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8
                        \f
                        - \tenuto
                        ^ \markup { 11 }
                        [
                        \(
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        ^ \markup { 12 }
                        ]
                        af'4
                        ^ \markup { 13 }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        ^ \markup { 14 }
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        ^ \markup { 15 }
                        \)
                        ]
                    }
                    r2..
                    ^ \markup { 16 }
                    r2..
                    ^ \markup { 17 }
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { mar. }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r2..
                        ^ \markup { 3 }
                        r2..
                        ^ \markup { 4 }
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        a4.
                        ^ \markup { 3 }
                        ~
                        a4
                        ^ \markup { 4 }
                        e'4
                        ^ \markup { 5 }
                        r2..
                        ^ \markup { 6 }
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { perc. 2 }
                    \clef "percussion"
                    r2
                    ^ \markup { 0 }
                    r4.
                    ^ \markup { 1 }
                    r2.
                    ^ \markup { 2 }
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8
                    ^ \markup { 3 }
                    [
                    c'8
                    ^ \markup { 4 }
                    \revert Staff.Stem.stemlet-length
                    c'8
                    ^ \markup { 5 }
                    ]
                    c'8
                    ^ \markup { 6 }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/4
                    {
                        c'8
                        ^ \markup { 7 }
                        [
                        c'8
                        ^ \markup { 8 }
                        c'8
                        ^ \markup { 9 }
                        c'8
                        ^ \markup { 10 }
                        ]
                    }
                    r2..
                    ^ \markup { 11 }
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 1 }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''2
                            ^ \markup \center-align { -31 }
                            ^ \markup { 3 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''8
                            ^ \markup \center-align { -31 }
                            ^ \markup { 4 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''4
                            ^ \markup \center-align { -31 }
                            ^ \markup { 5 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            f''4
                            ^ \markup \center-align +33
                            ^ \markup { 6 }
                            f''4
                            ^ \markup \center-align +33
                            ^ \markup { 7 }
                            f''4
                            ^ \markup \center-align +33
                            ^ \markup { 8 }
                        }
                        r2..
                        ^ \markup { 9 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''2
                            ^ \markup \center-align { +14 }
                            ^ \markup { 3 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''8
                            ^ \markup \center-align { +14 }
                            ^ \markup { 4 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 5 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            ^ \markup \center-align { -16 }
                            ^ \markup { 6 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            ^ \markup \center-align { -16 }
                            ^ \markup { 7 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            ^ \markup \center-align { -16 }
                            ^ \markup { 8 }
                        }
                        r2..
                        ^ \markup { 9 }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vla. }
                        \clef "alto"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''2
                            ^ \markup \center-align { -31 }
                            ^ \markup { 3 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''8
                            ^ \markup \center-align { -31 }
                            ^ \markup { 4 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''4
                            ^ \markup \center-align { -31 }
                            ^ \markup { 5 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            a'4
                            ^ \markup \center-align +33
                            ^ \markup { 6 }
                            a'4
                            ^ \markup \center-align +33
                            ^ \markup { 7 }
                            a'4
                            ^ \markup \center-align +33
                            ^ \markup { 8 }
                        }
                        r2..
                        ^ \markup { 9 }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vc. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g2
                            ^ \markup \center-align { +16 }
                            ^ \markup { 3 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g8
                            ^ \markup \center-align { +16 }
                            ^ \markup { 4 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g4
                            ^ \markup \center-align { +16 }
                            ^ \markup { 5 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 6 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 7 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 8 }
                        }
                        r2..
                        ^ \markup { 9 }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        cs,4
                        ^ \markup { 3 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cs,16
                        ^ \markup { 4 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b,16
                        ^ \markup { 5 }
                        ~
                        ]
                        b,4
                        ^ \markup { 6 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8
                        ^ \markup { 7 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8
                        ^ \markup { 8 }
                        ]
                        r2..
                        ^ \markup { 9 }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
