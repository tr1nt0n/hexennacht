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
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r4.
                        r2
                        r2.
                        r2
                        c'2
                        r2.
                        r2
                        r4.
                        c'1
                        ~
                        c'8
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4.
                        r2
                        r2.
                        r2
                        c'2
                        r2.
                        r2
                        r4.
                        c'1
                        ~
                        c'8
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r4.
                        r2
                        r4.
                        c'4.
                        r1
                        r2.
                        r2
                        r2.
                        c'2.
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        \clef "bass"
                        r4.
                        r2
                        r2.
                        r1
                        r2.
                        c'2
                        r1
                        c'2
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r2..
                    r2.
                    cs''2
                    ~
                    cs''8
                    r4.
                    r2.
                    r2
                    r4
                    b'4
                    ~
                    b'16
                    bf''8.
                    r8
                    cs''4..
                    r8.
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
                        r2..
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        a''8.
                        r8
                        dqf''4..
                        r2
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        \clef "bass"
                        r2..
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        r8
                        ef4..
                        bf''2
                        ~
                        bf''16
                        r8
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        \clef "bass"
                        bf,4
                        bf,4
                        ~
                        bf,16
                        b,4..
                        e,4
                        ~
                        e,16
                        af,4
                        g,4..
                        a,4
                        ~
                        a,16
                        fs,4..
                        af,4
                        f,4
                        ~
                        f,16
                        f,4..
                        g,4
                        ~
                        g,16
                        ef,4
                        e,4..
                        fs,4
                        ~
                        fs,16
                        g,4
                        ~
                        g,16
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
                    \set Staff.shortInstrumentName =
                    \markup { harp }
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
                        \times 2/3
                        {
                            \set Staff.shortInstrumentName =
                            \markup { mar. }
                            c'4
                            c'4
                            c'4
                        }
                        r4.
                        r2.
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/5
                        {
                            c'4.
                            c'8
                            [
                            c'8
                            ]
                        }
                        r2.
                        r8
                        c'8
                        c'2
                        c'8
                        r8
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
                        r4
                        \tweak Accidental.transparent ##t
                        e'8
                        r2
                        r8
                        \tweak Accidental.transparent ##t
                        a8
                        r1
                        r4
                        \tweak Accidental.transparent ##t
                        e'8
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        e'8
                        r8
                        r2
                        r2
                        \tweak Accidental.transparent ##t
                        a8
                        \tweak Accidental.transparent ##t
                        a8
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        e'8
                        r8
                        r4
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \times 2/3
                    {
                        \set Staff.shortInstrumentName =
                        \markup { perc. 2 }
                        \clef "percussion"
                        \tweak Accidental.transparent ##t
                        c'4
                        \tweak Accidental.transparent ##t
                        c'4
                        \tweak Accidental.transparent ##t
                        c'4
                    }
                    r4.
                    r2.
                    r1
                    r2.
                    r2
                    r4
                    \tweak Accidental.transparent ##t
                    c'2.
                    \tweak Accidental.transparent ##t
                    c'4
                    \tweak Accidental.transparent ##t
                    c'4
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \times 4/5
                        {
                            \set Staff.shortInstrumentName =
                            \markup { vln. 1 }
                            e''4.
                            ^ \markup \center-align +33
                            e''8
                            ^ \markup \center-align +33
                            [
                            e''8
                            ^ \markup \center-align +33
                            ]
                        }
                        r4.
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                        \times 15/18
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''4
                            ^ \markup \center-align { D+41 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''1
                            ^ \markup \center-align { D+41 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''4
                            ^ \markup \center-align { D+41 }
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''4
                        ^ \markup \center-align { -16 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''8
                        ^ \markup \center-align { -16 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''8
                        ^ \markup \center-align { -16 }
                        r4.
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                        \times 30/21
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''2
                            ^ \markup \center-align { +2 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''8
                            ^ \markup \center-align { +2 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''4
                            ^ \markup \center-align { +2 }
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \times 4/7
                        {
                            \set Staff.shortInstrumentName =
                            \markup { vla. }
                            \clef "alto"
                            b2
                            ^ \markup \center-align +33
                            b8
                            ^ \markup \center-align +33
                            b4
                            ^ \markup \center-align +33
                        }
                        r4.
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 4:5
                        \times 15/12
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'2
                            ^ \markup \center-align { E♭+41 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'4
                            ^ \markup \center-align { E♭+41 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'4
                            ^ \markup \center-align { E♭+41 }
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \times 2/3
                        {
                            \set Staff.shortInstrumentName =
                            \markup { vc. }
                            \clef "bass"
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'2
                            ^ \markup \center-align { +14 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8
                            ^ \markup \center-align { +14 }
                        }
                        r4.
                        r2.
                        r1
                        r2.
                        r2
                        r4
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                        \times 15/18
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        \clef "bass"
                        b,2
                        ~
                        b,8
                        b,2..
                        c2
                        ~
                        c8
                        f,2
                        a,2..
                        af,2
                        ~
                        af,8
                        bf,2..
                        g,4.
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
