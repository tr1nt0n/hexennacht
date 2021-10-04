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
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        g''16
                        g''16
                        fs''16
                        g''16
                        g''16
                        a''16
                        e''4
                        bf''4
                        ~
                        bf''16
                        e''8.
                        \times 4/5
                        {
                            f''16
                            [
                            g''16
                            c'''16
                            g''16
                            e''16
                            ]
                        }
                        \times 2/3
                        {
                            fs''16
                            [
                            cs'''16
                            b''16
                            a''16
                            f'''16
                            c'''16
                            ]
                        }
                        cs'''4
                        af''4
                        ~
                        af''16
                        g''4..
                        \times 4/5
                        {
                            a''16
                            [
                            d'''8.
                            a''16
                            ]
                        }
                        \times 2/3
                        {
                            bf''16
                            [
                            a''16
                            bf''8.
                            bf''16
                            ]
                        }
                        c'''4
                        g''4
                        ~
                        g''16
                        cs'''8.
                        g''16
                        af''8
                        bf''16
                        c'''8
                        f'''8
                        c'''8
                        a''4
                        e'''4
                        d'''16
                        c'''16
                        af'''8
                        ef'''16
                        e'''16
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \clef "bass"
                            bf,16
                            [
                            c16
                            f16
                            c16
                            a,16
                            ]
                        }
                        e4
                        d4
                        ~
                        d16
                        c8.
                        \times 2/3
                        {
                            af16
                            [
                            ef8.
                            e16
                            b,16
                            ]
                        }
                        \times 4/5
                        {
                            e,16
                            [
                            fs,8
                            b,16
                            fs,16
                            ]
                        }
                        fs,2
                        f,2
                        \times 4/7
                        {
                            fs,8.
                            [
                            fs,16
                            af,8
                            ef,16
                            ]
                        }
                        f,16
                        b,,16
                        c,8.
                        d,16
                        g,4
                        d,8
                        \times 4/7
                        {
                            b,,8
                            [
                            fs,16
                            e,8.
                            d,16
                            ]
                        }
                        r1.
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    g'16.
                    d'8.
                    cs'16.
                    ef'4
                    af'4
                    ~
                    af'16
                    ef'8.
                    \times 4/7
                    {
                        ef'8
                        [
                        d'16
                        ef'8.
                        ef'16
                        ]
                    }
                    \times 4/7
                    {
                        fs'8.
                        [
                        cs'16
                        fs'8
                        cs'16
                        ]
                    }
                    cs'4
                    ef'4
                    ~
                    ef'16
                    af'4..
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        ef'8
                        cs'4.
                        g'8
                    }
                    g'16
                    fs'16
                    ef'16
                    b'16
                    fs'16
                    g'16
                    d'4
                    \times 4/5
                    {
                        cs'8.
                        [
                        ef'16
                        af'16
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        ef'8
                        [
                        ef'8
                        d'8
                        ef'8
                        ef'8
                        fs'8
                        cs'8
                        ]
                    }
                    fs'8
                    cs'8
                    ~
                    cs'32
                    cs'8..
                    ef'8
                    af'16
                    ef'16
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
