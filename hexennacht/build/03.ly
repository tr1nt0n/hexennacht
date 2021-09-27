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
                        r4
                        c'8
                        r8
                        r4.
                        c'8
                        r8
                        r2
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        r4
                        c'8
                        r8
                        r4.
                        c'8
                        r8
                        r2
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        r2
                        r8
                        c'8
                        r8
                        r2.
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    r2
                    r4.
                    r2.
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        r2
                        r4.
                        r2.
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
                            f'8.
                            [
                            cs''16
                            af'16
                            ]
                        }
                        a'4
                        e'4
                        ~
                        e'16
                        ef'4..
                        f'8
                        \times 4/5
                        {
                            bf'16
                            [
                            f'8.
                            f'16
                            ]
                        }
                        r2
                        r4.
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        r4.
                        \times 2/3
                        {
                            bf32
                            [
                            a32
                            bf32
                            bf32
                            c'32
                            g32
                            ]
                        }
                        cs'4
                        g4
                        ~
                        g16
                        af16
                        \times 2/3
                        {
                            bf4
                            ef'8
                            [
                            bf8
                            g8
                            d'8
                            ]
                        }
                        r2
                        r4.
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    r8
                    ef'16
                    d'8
                    ef'16
                    ef'16
                    fs'16
                    cs'4
                    fs'4
                    ~
                    fs'16
                    cs'16
                    \times 2/3
                    {
                        cs'8
                        [
                        ef'8
                        ]
                        af'4
                        ef'8
                        [
                        cs'8
                        ]
                    }
                    r2
                    r4.
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    r2
                    r4.
                    r2.
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        r2
                        r4.
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''2
                            ^ \markup \center-align { -31 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''8
                            ^ \markup \center-align { -31 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''4
                            ^ \markup \center-align { -31 }
                        }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        r2
                        r4.
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''2
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''8
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''4
                            ^ \markup \center-align { +14 }
                        }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        r2
                        r4.
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''2
                            ^ \markup \center-align { -31 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''8
                            ^ \markup \center-align { -31 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''4
                            ^ \markup \center-align { -31 }
                        }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        r2
                        r4.
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g2
                            ^ \markup \center-align { +16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g8
                            ^ \markup \center-align { +16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g4
                            ^ \markup \center-align { +16 }
                        }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        r2
                        r4.
                        r2.
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
