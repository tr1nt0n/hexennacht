\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/hexennacht/hexennacht/build/hexennacht-stylesheet.ily"
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 2/4
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 5/8
            s1 * 5/8
            \tempo 4=60
            \time 2/4
            s1 * 1/2
        }
        \tag #'group1
        {
            \context ChoirStaff = "Staff Group"
            <<
                \tag #'group2
                {
                    \context PianoStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "flute staff"
                            {
                                \context Voice = "flute voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { fl. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \ffff
                                    - \marcato
                                    \)
                                    \stopTextSpan
                                    ]
                                    r16
                                    d'16
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    \ffff
                                    - \marcato
                                    \)
                                    \stopTextSpan
                                    ]
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { ob. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    b''4
                                    \fff
                                    - \marcato
                                    \boxed-markup "Overblow" 1
                                    f''8
                                    - \marcato
                                    ~
                                    f''8
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bass clarinet staff"
                            {
                                \context Voice = "bass clarinet voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { bcl. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    <fs' bqf''>8
                                    - \marcato
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                                    ~
                                    <fs' bqf''>8
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { bsn. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    <d eqf fqs>8
                                    - \marcato
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d eqf fqs>8
                                    [
                                    ef32
                                    :256
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    a32
                                    :256
                                    b,32
                                    :256
                                    \mp
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    a32
                                    :256
                                    \!
                                    \)
                                    ]
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice5
                {
                    \context Staff = "horn staff"
                    {
                        \context Voice = "horn voice"
                        {
                            \set Staff.shortInstrumentName =
                            \markup { hrn. }
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            \stopStaff \startStaff
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
                            r8
                            \!
                            r4
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group3
                {
                    \context PianoStaff = "sub group 2"
                    <<
                        \tag #'voice6
                        {
                            \context Staff = "trumpet staff"
                            {
                                \context Voice = "trumpet voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { tpt. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \pitchedTrill
                                    eqf''8
                                    \p
                                    \<
                                    ~
                                    [
                                    \startTrillSpan eqs''
                                    eqf''32
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    \pitchedTrill
                                    a''16.
                                    \mp
                                    - \tweak circled-tip ##t
                                    \>
                                    \stopTrillSpan
                                    ]
                                    \startTrillSpan bf''
                                    r8
                                    \!
                                    \stopTrillSpan
                                    r4
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenor trombone staff"
                            {
                                \context Voice = "tenor trombone voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { tbn. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
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
                                    r8
                                    \!
                                    r4
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { tb. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
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
                                    r8
                                    \!
                                    r4
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context PianoStaff = "sub group 3"
                    <<
                        \tag #'voice9
                        {
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
                                        _ \markup { \italic Dolcissimo }
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
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
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
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice11
                {
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
                                _ \markup { \italic Dolcissimo }
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
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 5/16
                            R1 * 5/16
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group5
                {
                    \context PianoStaff = "sub group 4"
                    <<
                        \tag #'voice12
                        {
                            \context Staff = "marimba staff"
                            {
                                \context Voice = "marimba voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { mar. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
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
                                    ef64
                                    af,64
                                    f,64
                                    e64
                                    ef64
                                    b,64
                                    ef64
                                    c64
                                    \revert Staff.Stem.stemlet-length
                                    e64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,64
                                    [
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
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { ratch. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "percussion"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice14
                {
                    \context Staff = "percussion 2 staff"
                    {
                        \context Voice = "percussion 2 voice"
                        {
                            \set Staff.shortInstrumentName =
                            \markup { perc. 2 }
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            \clef "percussion"
                            r1 * 1/4
                            R1 * 1/4
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            \stopStaff \startStaff
                            \staff-line-count 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \ff
                            - \accent
                            [
                            \boxed-markup "Bass Drum" 1
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \ff
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            [
                            \staff-line-count 3
                            \tweak Accidental.transparent ##t
                            e'16.
                            \p
                            \boxed-markup "Gongs, scrape w/ triangle beater" 1
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a32
                            ]
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group6
                {
                    \context PianoStaff = "sub group 5"
                    <<
                        \tag #'voice15
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { vln. 1 }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    \tweak style #'cross
                                    g8
                                    \mp
                                    - \upbow
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g8
                                    \ff
                                    - \accent
                                    - \downbow
                                    ]
                                    \tweak style #'cross
                                    g8
                                    \mp
                                    - \upbow
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice16
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { vln. 2 }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { vla. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "alto"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { vc. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
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
                                    \tweak style #'cross
                                    c,8
                                    \mp
                                    - \upbow
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c,8
                                    \ff
                                    - \accent
                                    - \downbow
                                    ]
                                    \tweak style #'cross
                                    c,8
                                    \mp
                                    - \upbow
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        e'16
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        [
                                        ~
                                        \boxed-markup "Flaut." 1
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        e'16
                                        \mf
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        \tweak style #'harmonic
                                        e'16
                                        \!
                                        ^ \markup \center-align { -16 }
                                        ]
                                    }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    \ff
                                    - \accent
                                    ~
                                    [
                                    \boxed-markup "Slight OP" 1
                                    a,32
                                    \revert Staff.Stem.stemlet-length
                                    f,8..
                                    - \accent
                                    ]
                                    b,8
                                    - \accent
                                    r8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}
