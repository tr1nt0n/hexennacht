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
            \time 4/4
            s1 * 1
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
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
                        r4.
                        c'4.
                        r8
                        r2
                        r8
                        c'4
                        r8
                        r2.
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4.
                        c'4.
                        r8
                        r2
                        r8
                        c'4
                        r8
                        r2.
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        r4.
                        c'4
                        ~
                        c'16
                        r8.
                        r4
                        r1
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
                        r4.
                        c'4
                        ~
                        c'16
                        r8.
                        r4
                        r1
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
                    r4.
                    r2.
                    r1
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
                        r4.
                        r2.
                        r1
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
                        r4.
                        r2.
                        r1
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
                        r4.
                        r2.
                        r1
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r4
                        bf'8
                        b'16
                        b'16
                        cs''4
                        af'4
                        ~
                        af'16
                        d''4
                        ~
                        d''16
                        \times 4/7
                        {
                            af'8
                            [
                            a'16
                            b'16
                            e''16
                            b'16
                            af'16
                            ]
                        }
                        bf'16
                        f''8
                        ef''16
                        cs''4
                        a''4
                        \times 4/7
                        {
                            e''16
                            [
                            f''8
                            c''16
                            b'16
                            cs''16
                            fs''16
                            ]
                        }
                        r4.
                        r2
                        r2.
                        r4.
                        r2
                        r2.
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \times 2/3
                        {
                            \clef "bass"
                            d4
                            a4
                            g4
                        }
                        f2
                        cs'8
                        \times 4/7
                        {
                            af8.
                            [
                            a16
                            e8
                            ef16
                            ]
                        }
                        e32
                        a16
                        e16.
                        e32
                        ef32
                        e2
                        e4
                        fs32
                        cs32
                        g16
                        cs16.
                        d32
                        r4.
                        r2
                        r2.
                        r4.
                        r2
                        r2.
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \times 4/7
                    {
                        \set Staff.shortInstrumentName =
                        \markup { harp }
                        af'8
                        [
                        ef'16
                        d'16
                        ef'16
                        af'16
                        ef'16
                        ]
                    }
                    ef'4
                    ef'4
                    ~
                    ef'16
                    ef'4..
                    ef'4
                    ~
                    ef'16
                    fs'16
                    \times 4/7
                    {
                        cs'16
                        [
                        g'16
                        cs'16
                        d'8.
                        ef'16
                        ]
                    }
                    cs'16
                    fs'32
                    cs'32
                    a4
                    ef'8
                    \times 2/3
                    {
                        d'16
                        [
                        cs'8.
                        af'16
                        ef'16
                        ]
                    }
                    r4.
                    r2
                    r2.
                    r4.
                    r2
                    r2.
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
                        r4.
                        r2.
                        r1
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
                        r4.
                        r2.
                        r1
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
                    r4.
                    r16
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 9/8
                    {
                        c'4
                        c'8
                        [
                        c'8
                        ]
                    }
                    r8
                    r4
                    \times 4/7
                    {
                        c'2
                        c'8
                        c'4
                    }
                    r4
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
                        r4.
                        r16
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        ^ \markup \center-align { -17 }
                        r8
                        r4
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''4
                        ^ \markup \center-align { +34 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        r4
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r2
                        r4.
                        r16
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8.
                            ^ \markup \center-align { +16 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            ^ \markup \center-align { +16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            ^ \markup \center-align { +16 }
                            ]
                        }
                        r8
                        r4
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            ^ \markup \center-align { -33 }
                        }
                        r4
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
                        r4.
                        r16
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf4.
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        ^ \markup \center-align { -17 }
                        r8
                        r4
                        \times 4/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'4.
                            ^ \markup \center-align { +34 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            ^ \markup \center-align { +34 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            ^ \markup \center-align { +34 }
                            ]
                        }
                        r4
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
                        r4.
                        r16
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/7
                        {
                            af4
                            ^ \markup \center-align +33
                            af16
                            ^ \markup \center-align +33
                            [
                            af8
                            ^ \markup \center-align +33
                            ]
                        }
                        r8
                        r4
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'8
                            ^ \markup \center-align { -16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'2
                            ^ \markup \center-align { -16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'8
                            ^ \markup \center-align { -16 }
                        }
                        r4
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
                        r4.
                        r2.
                        r1
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
