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
                        <f'' dqf'''>8
                        \p
                        - \tenuto
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three four)) (lh . (b)) (rh . (d ees)))}
                        ^ \markup {
                            \italic
                                45
                            }
                        r8
                        r4.
                        <bqs' cs'''>8
                        - \tenuto
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                        r8
                        r2
                        <bf' aqs'' f'''>2..
                        :32
                        \ff
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four)) (lh . (b)) (rh . (ees)))}
                        r2..
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4
                        b''8
                        \p
                        - \tenuto
                        \boxed-markup "Norm." 1
                        r8
                        r4.
                        f''8
                        - \tenuto
                        r8
                        r2
                        c''2..
                        :32
                        \ff
                        - \marcato
                        r2..
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        r8
                        <af' eqf'''>8
                        \p
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five)) (lh . (thumb gis)) (rh . ()))}
                        r8
                        r2.
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        \ff
                        [
                        \(
                        \boxed-markup "Overblow" 1
                        fs'8
                        \revert Staff.Stem.stemlet-length
                        c''8
                        \)
                        ]
                        d'4
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        \)
                        [
                        \revert Staff.Stem.stemlet-length
                        c''8
                        ]
                        r2..
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
                        r2.
                        <cqs, fs, c gqs>2..
                        \ff
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                        r2..
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
                    \override Staff.Stem.stemlet-length = 0.75
                    a''8
                    :64
                    \mf
                    ~
                    [
                    \boxed-markup "Fluttering valves, fluttertongue" 1
                    a''32
                    :256
                    \revert Staff.Stem.stemlet-length
                    b'16.
                    :256
                    ]
                    r16
                    bf''16
                    :128
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    bf''8
                    :64
                    ~
                    [
                    bf''32
                    :256
                    \revert Staff.Stem.stemlet-length
                    cs''16.
                    :256
                    ~
                    ]
                    cs''8.
                    :64
                    r16
                    r2..
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
                        r2..
                        r2..
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
                        f,4
                        \p
                        \<
                        ~
                        \boxed-markup "Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        f,16
                        [
                        \revert Staff.Stem.stemlet-length
                        g,16
                        ~
                        ]
                        g,4
                        \f
                        \>
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8
                        \p
                        ]
                        r2..
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
                        bf,4
                        \p
                        \<
                        af,8
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8.
                        \f
                        \>
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ~
                        ]
                        af,4
                        \p
                        r2..
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
                            [
                            \(
                            cs''16
                            \revert Staff.Stem.stemlet-length
                            af'16
                            \)
                            ]
                        }
                        a'4
                        \p
                        - \tenuto
                        \<
                        \(
                        e'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e'16
                        [
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \mf
                        ~
                        ]
                        ef'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        [
                        \revert Staff.Stem.stemlet-length
                        f'8
                        \)
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'16
                            \f
                            - \tenuto
                            [
                            \(
                            f'8.
                            \revert Staff.Stem.stemlet-length
                            f'16
                            \)
                            ]
                        }
                        r2..
                        r2..
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r4
                        r8
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf32
                            - \tenuto
                            [
                            \(
                            a32
                            bf32
                            bf32
                            c'32
                            \revert Staff.Stem.stemlet-length
                            g32
                            \)
                            ]
                        }
                        cs'4
                        - \tenuto
                        \(
                        g8
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g8.
                        [
                        \revert Staff.Stem.stemlet-length
                        af16
                        \)
                        ]
                        \times 2/3
                        {
                            bf4
                            - \tenuto
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            ef'8
                            [
                            bf8
                            g8
                            \revert Staff.Stem.stemlet-length
                            d'8
                            \)
                            ]
                        }
                        r2..
                        r2..
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
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    \mf
                    - \tenuto
                    \<
                    [
                    \(
                    \revert Staff.Stem.stemlet-length
                    d'16
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [
                    ef'16
                    ef'16
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    \)
                    ]
                    cs'4
                    \f
                    - \tenuto
                    \>
                    \(
                    fs'8
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    fs'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    cs'16
                    \p
                    \)
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8
                        \f
                        - \tenuto
                        [
                        \(
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        ]
                        af'4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        \)
                        ]
                    }
                    r2..
                    r2..
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
                        r2..
                        r2..
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
                        \tweak Accidental.transparent ##t
                        a4.
                        :32
                        \ff
                        - \accent
                        \>
                        ~
                        \tweak Accidental.transparent ##t
                        a4
                        :32
                        \tweak Accidental.transparent ##t
                        e'4
                        :32
                        \p
                        - \accent
                        r2..
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
                    r2.
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    \ff
                    - \accent
                    [
                    \tweak Accidental.transparent ##t
                    c'8
                    \mp
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    \ff
                    - \accent
                    ]
                    \tweak Accidental.transparent ##t
                    c'8
                    \mp
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/4
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        \ff
                        - \accent
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        \mp
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        \ff
                        - \accent
                        ]
                    }
                    r2..
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
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''2
                            ^ \markup \center-align { -31 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''8
                            \mf
                            ^ \markup \center-align { -31 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            f''4
                            \!
                            ^ \markup \center-align { -31 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            f''4
                            :32
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "Slight O.P." 1
                            f''4
                            :32
                            \fff
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \>
                            ~
                            f''4
                            :32
                            \!
                            ^ \markup \center-align +33
                        }
                        r2..
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
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''2
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''8
                            \mf
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            ef''4
                            \!
                            ^ \markup \center-align { +14 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            :32
                            ^ \markup \center-align { -16 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "Slight O.P." 1
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            :32
                            \fff
                            ^ \markup \center-align { -16 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                            fs''4
                            :32
                            \!
                            ^ \markup \center-align { -16 }
                        }
                        r2..
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
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''2
                            ^ \markup \center-align { -31 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''8
                            \mf
                            ^ \markup \center-align { -31 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-down  }
                            d''4
                            \!
                            ^ \markup \center-align { -31 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            a'4
                            :32
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "Slight O.P." 1
                            a'4
                            :32
                            \fff
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \>
                            ~
                            a'4
                            :32
                            \!
                            ^ \markup \center-align +33
                        }
                        r2..
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
                        r4
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g2
                            ^ \markup \center-align { +16 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g8
                            \mf
                            ^ \markup \center-align { +16 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            g4
                            \!
                            ^ \markup \center-align { +16 }
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            :32
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "Slight O.P." 1
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            :32
                            \fff
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                            a'4
                            :32
                            \!
                            ^ \markup \center-align { +14 }
                        }
                        r2..
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
                        cs,4
                        \p
                        \<
                        ~
                        \boxed-markup "Norm., ST" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        cs,16
                        [
                        \revert Staff.Stem.stemlet-length
                        b,16
                        ~
                        ]
                        b,4
                        \f
                        \>
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8
                        \p
                        ]
                        r2..
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
