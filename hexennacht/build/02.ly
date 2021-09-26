    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 2/4
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 2/4
            s1 * 1/2
            \tempo 4=60
            \time 2/4
            s1 * 1/2
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
                        r2
                        r4.
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        [
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ffff
                        - \marcato
                        \)
                        \stopTextSpan
                        ]
                        r16
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        [
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        d'16
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \ffff
                        - \marcato
                        \)
                        \stopTextSpan
                        ]
                        r2
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r2
                        r4.
                        b''4
                        \fff
                        - \marcato
                        \boxed-markup "Overblow" 1
                        f''4
                        - \marcato
                        r2
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        <e' cs'''>16
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                        - \tweak circled-tip ##t
                        \<
                        ~
                        [
                        <e' cs'''>32
                        ~
                        <e' cs'''>16
                        \mf
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        <e' cs'''>32
                        \!
                        ]
                        <gqs' f'''>4
                        \fff
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                        <fs' bqf''>4
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                        r2
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
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        <c d e>16
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                        - \tweak circled-tip ##t
                        \<
                        ~
                        [
                        \boxed-markup "Norm." 1
                        <c d e>32
                        ~
                        <c d e>16
                        \mf
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        <c d e>32
                        \!
                        ]
                        <cqs cqs'>4
                        \fff
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                        <d eqf fqs>4
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                        r2
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
                    \override Staff.Stem.stemlet-length = 0.75
                    a''8
                    :64
                    \p
                    \<
                    ~
                    [
                    \boxed-markup "Fluttering valves, fluttertongue" 1
                    a''32
                    :256
                    \revert Staff.Stem.stemlet-length
                    b'16.
                    :256
                    \mp
                    - \tweak circled-tip ##t
                    \>
                    ]
                    r4
                    \!
                    r2
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
                        \override Staff.Stem.stemlet-length = 0.75
                        \pitchedTrill
                        eqf''8
                        \p
                        \<
                        ~
                        [
                        \startTrillSpan eqs''
                        eqf''32
                        \stopTrillSpan
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        a''16.
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        ]
                        \startTrillSpan bf''
                        r4
                        \!
                        \stopTrillSpan
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
                        r2
                        r4.
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''8
                        :64
                        \ff
                        - \tweak circled-tip ##t
                        \>
                        ~
                        [
                        \boxed-markup "Fluttertongue, switch rapidly between 1st and 7th" 1
                        bf''32
                        :256
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        ef16.
                        :256
                        ]
                        r4
                        \!
                        r2
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
                        \override Staff.Stem.stemlet-length = 0.75
                        e,,8
                        \p
                        \<
                        ~
                        [
                        e,,32
                        \revert Staff.Stem.stemlet-length
                        e,,16.
                        \mp
                        - \tweak circled-tip ##t
                        \>
                        ]
                        r4
                        \!
                        r2
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \times 2/3
                        {
                            \set Staff.shortInstrumentName =
                            \markup { pno. }
                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            \p
                            - \tenuto
                            _ \markup {
                                \italic
                                    Dolcissimo
                                }
                            \<
                            [
                            \(
                            cs'16
                            \revert Staff.Stem.stemlet-length
                            ef'16
                            \)
                            ]
                        }
                        af'8
                        \mf
                        - \tenuto
                        \>
                        ~
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        [
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        \)
                        [
                        c'8
                        \mp
                        - \tenuto
                        \(
                        g'16
                        \revert Staff.Stem.stemlet-length
                        f'16
                        \)
                        ]
                        r2
                        r2
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'32
                        - \tenuto
                        [
                        \(
                        b16
                        \revert Staff.Stem.stemlet-length
                        g'32
                        \)
                        ]
                        d'4
                        - \tenuto
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            ef'16
                            - \tenuto
                            [
                            \(
                            bf16
                            a16
                            b16
                            \revert Staff.Stem.stemlet-length
                            e'16
                            \)
                            ]
                        }
                        r2
                        r2
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    r4
                    r8
                    \times 4/5
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        g'32
                        \pp
                        - \tenuto
                        _ \markup {
                            \italic
                                Dolcissimo
                            }
                        \<
                        [
                        \(
                        d'32
                        d'16
                        \revert Staff.Stem.stemlet-length
                        cs'32
                        \)
                        ]
                    }
                    d'4
                    - \tenuto
                    \times 4/5
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16.
                        \mf
                        - \tenuto
                        [
                        \(
                        ef'32
                        \revert Staff.Stem.stemlet-length
                        b32
                        \)
                        ]
                    }
                    r2
                    r2
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
                        \override Staff.Stem.stemlet-length = 0.75
                        f,64
                        \fff
                        [
                        \(
                        \boxed-markup "w/ drumsticks, pitches approx." 1
                        a,64
                        fs,64
                        b,64
                        af,64
                        c64
                        cs64
                        ef64
                        af,64
                        cs64
                        f,64
                        cs64
                        c64
                        a,64
                        bf,64
                        \revert Staff.Stem.stemlet-length
                        ef64
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af,64
                        [
                        f,64
                        e64
                        ef64
                        b,64
                        ef64
                        c64
                        e64
                        g,64
                        a,64
                        fs,64
                        cs64
                        af,64
                        c64
                        cs64
                        \revert Staff.Stem.stemlet-length
                        d64
                        \)
                        ]
                        r2
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
                        r2
                        r2
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
                    \staff-line-count 1
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    \ff
                    - \accent
                    [
                    \boxed-markup "Bass Drum" 1
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    \mp
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    \ff
                    - \accent
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    \mp
                    ]
                    r2
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
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        g16
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        g16
                        \mf
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        g16
                        \!
                        ^ \markup \center-align +33
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \ff
                        - \downbow
                        - \accent
                        [
                        \boxed-markup "OP" 1
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \ff
                        - \accent
                        - \downbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        ]
                        r2
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r2
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs''16
                        ^ \markup \center-align { -16 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs''16
                        \mf
                        ^ \markup \center-align { -16 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs''16
                        \!
                        ^ \markup \center-align { -16 }
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            [
                            \boxed-markup "OP" 1
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            ]
                            ~
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g16
                            [
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            - \upbow
                            ]
                        }
                        r2
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
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        a'16
                        \mf
                        ^ \markup \center-align +33
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        a'16
                        \!
                        ^ \markup \center-align +33
                        ]
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            \ff
                            - \downbow
                            - \accent
                            \boxed-markup "OP" 1
                            \tweak style #'cross
                            c8
                            \mp
                            - \upbow
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \ff
                            - \downbow
                            - \accent
                        }
                        r2
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
                        r8.
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        a'16
                        ^ \markup \center-align { +14 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        a'16
                        \mf
                        ^ \markup \center-align { +14 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        a'16
                        \!
                        ^ \markup \center-align { +14 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        [
                        \boxed-markup "OP" 1
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \ff
                        - \accent
                        - \downbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        r2
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
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        \ff
                        - \accent
                        ~
                        [
                        \boxed-markup "Slight OP" 1
                        a,32
                        \revert Staff.Stem.stemlet-length
                        f,16.
                        - \accent
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f,8
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8
                        - \accent
                        ]
                        r2
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
