    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
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
                        \set Staff.instrumentName =
                        \markup { Flute }
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r1
                        r1
                        r8.
                        fs'''16
                        \ff
                        ~
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'''16
                        [
                        g'''16
                        e'''16
                        \revert Staff.Stem.stemlet-length
                        f''16
                        \)
                        ]
                        c'4
                        \mp
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 1
                        \startTextSpan
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        [
                        c'16
                        \ffff
                        \)
                        \stopTextSpan
                        \revert Staff.Stem.stemlet-length
                        d'8
                        \mp
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        ]
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 1
                        \startTextSpan
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        [
                        d'16
                        \ffff
                        \)
                        \stopTextSpan
                        \revert Staff.Stem.stemlet-length
                        c'8
                        \mp
                        ^ \markup { 0 }
                        ]
                        \times 4/7
                        {
                            bf''8
                            \ff
                            [
                            \(
                            ef'''16
                            e'''16
                            fs''16
                            g''16
                            bf''16
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        \mp
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        [
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 1
                        \startTextSpan
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \ffff
                        \)
                        \stopTextSpan
                        ]
                        d'4
                        \mp
                        ^ \markup { 0 }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Oboe }
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r1
                        r1
                        r1
                        r4
                        r16
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \new Score
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \new RhythmicStaff
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                        ~
                                        c'16
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #left
                            r32 * 41/32
                            [
                            af''32 * 45/32
                            \mp
                            - \stopped
                            \<
                            \(
                            \glissando
                            aqf''32 * 57/32
                            - \open
                            \glissando
                            gqs''32 * 77/32
                            \ff
                            - \stopped
                            \)
                            r32 * 25/8
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \new Score
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \new RhythmicStaff
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            r32 * 117/32
                            [
                            af''32 * 99/32
                            - \stopped
                            \>
                            \(
                            \glissando
                            a''32 * 69/32
                            - \open
                            \glissando
                            aqs''32 * 13/8
                            \mp
                            \!
                            - \stopped
                            \)
                            r32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Bass Clarinet }
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r1
                        r1
                        r4
                        r8
                        <e' cs'''>8
                        \fff
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                        ~
                        <e' cs'''>4
                        <gqs' f'''>4
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                        ~
                        <gqs' f'''>4
                        r8.
                        <fs' bqf''>16
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                        ~
                        <fs' bqf''>4
                        <fqs' aqf'''>4
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Bassoon }
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        \clef "bass"
                        r1
                        r1
                        r4
                        r8
                        <cqs cqs'>8
                        \fff
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                        ~
                        <cqs cqs'>4
                        <d eqf fqs>4
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                        ~
                        <d eqf fqs>4
                        r8.
                        <cqs fs af>16
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}
                        ~
                        <cqs fs af>4
                        <cqs, fs, c gqs>4
                        - \accent
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    \set Staff.instrumentName =
                    \markup { French Horn }
                    \set Staff.shortInstrumentName =
                    \markup { hrn. }
                    r1
                    r1
                    r1
                    r8
                    b'8
                    :64
                    \mf
                    \>
                    ~
                    \boxed-markup "Rapid hand changes, fluttering valves, fluttertongue" 1
                    b'4
                    :32
                    ~
                    b'8.
                    :64
                    \p
                    r16
                    r4
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Trumpet in C }
                        \set Staff.shortInstrumentName =
                        \markup { tpt. }
                        r1
                        r1
                        r1
                        r8
                        \pitchedTrill
                        a''8
                        \mf
                        \>
                        ~
                        \startTrillSpan bf''
                        a''4
                        ~
                        a''16
                        \p
                        \stopTrillSpan
                        r8.
                        r4
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Tenor Trombone }
                        \set Staff.shortInstrumentName =
                        \markup { tbn. }
                        \clef "bass"
                        r1
                        r1
                        r1
                        r8
                        ef8
                        :64
                        \mf
                        ~
                        \boxed-markup "Rapidly switch between 1st and 7th, fluttertongue" 1
                        ef16
                        :128
                        r16
                        r16
                        \clef "treble"
                        bf''16
                        :128
                        \f
                        ~
                        bf''4
                        :32
                        ~
                        bf''8
                        :64
                        r8
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Tuba }
                        \set Staff.shortInstrumentName =
                        \markup { tb. }
                        \clef "bass"
                        r1
                        r4
                        bf,4
                        :32
                        \mp
                        \<
                        \boxed-markup "Fluttertongue" 1
                        af,4
                        :32
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,16
                        :128
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8.
                        :64
                        \f
                        \>
                        ~
                        ]
                        af,4
                        :32
                        e,4
                        :32
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,16
                        :128
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        :64
                        \mp
                        \<
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,16
                        :128
                        [
                        \revert Staff.Stem.stemlet-length
                        c,8.
                        :64
                        \f
                        \>
                        ~
                        ]
                        c,4
                        :32
                        bf,4
                        :32
                        \mp
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,16
                        :128
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        :64
                        ~
                        ]
                        bf,4
                        :32
                        \f
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Piano }
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r1
                        r1
                        r1
                        r1
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r1
                        r1
                        r16
                        <a,,, bf,,, b,,,>8.
                        ^ \ff
                        - \accent
                        ~
                        <a,,, bf,,, b,,,>4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <a,,, bf,,, b,,,>16
                        [
                        \revert Staff.Stem.stemlet-length
                        <a,,, bf,,, b,,, cs,,>8.
                        ^ \mf
                        ~
                        ]
                        <a,,, bf,,, b,,, cs,,>4
                        r8
                        <a,,, bf,,, b,,,>8
                        ^ \ff
                        - \accent
                        <a,,, bf,,, b,,, cs,,>4
                        - \accent
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <a,,, bf,,, b,,, cs,,>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <a,,, bf,,, b,,,>8
                        ^ \mf
                        ~
                        ]
                        <a,,, bf,,, b,,,>4
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.instrumentName =
                    \markup { Harp }
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    \clef "bass"
                    r1
                    r8.
                    <fs, g, af, b, cs>16
                    :128
                    \ff
                    ~
                    \boxed-markup "Circular scrape w/ plastic card" 1
                    <fs, g, af, b, cs>2.
                    :32
                    <fs, g, af, b, cs>1
                    :32
                    <fs, g, af, b, cs>1
                    :32
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Marimba }
                        \set Staff.shortInstrumentName =
                        \markup { mar. }
                        r1
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        \f
                        [
                        \(
                        \boxed-markup "Pitches approx., w/ drumsticks" 1
                        \revert Staff.Stem.stemlet-length
                        g'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''16
                        [
                        bf'''16
                        ef'''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''16
                        [
                        af'''16
                        g'''16
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        \)
                        ]
                        r4
                        r16
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''16
                        [
                        \(
                        af'''16
                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        [
                        af'''16
                        c'''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''16
                        [
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        \)
                        ]
                        r8
                        r4
                        r2
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''16
                        [
                        \(
                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        [
                        af'''16
                        c'''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        \)
                        ]
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \staff-line-count 3
                        \set Staff.instrumentName =
                        \markup { Ratchets }
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        r1
                        r1
                        r2.
                        \tweak Accidental.transparent ##t
                        e'4
                        :32
                        \f
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        :64
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        :64
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        :64
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        e'8
                        :64
                        ]
                        \tweak Accidental.transparent ##t
                        c'16
                        :128
                        r8.
                        r4
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \staff-line-count 1
                    \set Staff.instrumentName =
                    \markup { Percussion 2 }
                    \set Staff.shortInstrumentName =
                    \markup { perc. 2 }
                    \clef "percussion"
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
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    - \accent
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    - \accent
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    - \accent
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        ]
                    }
                    \tweak Accidental.transparent ##t
                    c'8.
                    - \accent
                    \times 4/7
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        \tweak Accidental.transparent ##t
                        c'8
                        ]
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    - \accent
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    - \accent
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    c'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    c'8
                    ]
                    \times 2/3
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        ]
                    }
                    \times 4/5
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        \tweak Accidental.transparent ##t
                        c'8
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        [
                        \tweak Accidental.transparent ##t
                        c'8
                        - \accent
                        ]
                    }
                    \tweak Accidental.transparent ##t
                    c'8.
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violin 1 }
                        \set Staff.shortInstrumentName =
                        \markup { vln. 1 }
                        r1
                        r4
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/9
                        {
                            cqs''2.
                            \mf
                            - \tenuto
                            _ \markup {
                                \italic
                                    espressivo
                                }
                            \<
                            \boxed-markup "Slight OP" 1
                            ef''4.
                            - \tenuto
                        }
                        fqs''4
                        \ff
                        - \tenuto
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fqs''8
                        [
                        \revert Staff.Stem.stemlet-length
                        fs''8
                        - \tenuto
                        \>
                        ]
                        \(
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            cqs''8
                            [
                            ef''8
                            \revert Staff.Stem.stemlet-length
                            dqs''8
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            f''4
                            \mf
                            - \tenuto
                            \(
                            gqf''16
                            \)
                        }
                        fs''2
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''8
                        [
                        \revert Staff.Stem.stemlet-length
                        gqs''8
                        \ff
                        - \tenuto
                        ]
                        \(
                        \times 4/6
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf''8
                            ~
                            [
                            bf''32
                            \)
                            \revert Staff.Stem.stemlet-length
                            bqf''32
                            - \tenuto
                            \>
                            ]
                            \(
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af''32
                            [
                            fqs''32
                            f''32
                            eqf''32
                            \revert Staff.Stem.stemlet-length
                            cqs''32
                            \mf
                            \)
                            ]
                        }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \times 4/7
                        {
                            \set Staff.instrumentName =
                            \markup { Violin 2 }
                            \set Staff.shortInstrumentName =
                            \markup { vln. 2 }
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
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            [
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \ff
                            - \downbow
                            - \accent
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
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            - \upbow
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
                            g16
                            \ff
                            - \downbow
                            - \accent
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
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            - \upbow
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
                            g16
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
                            \ff
                            - \downbow
                            - \accent
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            [
                            \tweak style #'cross
                            g8
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
                            \ff
                            - \downbow
                            - \accent
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            [
                            \tweak style #'cross
                            g8
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
                            - \upbow
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            [
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \ff
                            - \downbow
                            - \accent
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
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            [
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \ff
                            - \downbow
                            - \accent
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
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g8
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \ff
                            - \downbow
                            - \accent
                            ]
                        }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \times 2/3
                        {
                            \set Staff.instrumentName =
                            \markup { Viola }
                            \set Staff.shortInstrumentName =
                            \markup { vla. }
                            \clef "alto"
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
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                            \tweak style #'cross
                            c8
                            \ff
                            - \downbow
                            - \accent
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            - \upbow
                            \tweak style #'cross
                            c8
                            \ff
                            - \downbow
                            - \accent
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            - \upbow
                            \tweak style #'cross
                            c8
                            \ff
                            - \downbow
                            - \accent
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            \ff
                            - \downbow
                            - \accent
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
                            - \upbow
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            \ff
                            - \downbow
                            - \accent
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
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            - \upbow
                            \tweak style #'cross
                            c8
                            \ff
                            - \downbow
                            - \accent
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c4
                            - \upbow
                            \tweak style #'cross
                            c8
                            \ff
                            - \downbow
                            - \accent
                            ~
                        }
                        \times 2/3
                        {
                            \tweak style #'cross
                            c8
                            \tweak style #'cross
                            c4
                            \mp
                            - \upbow
                        }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violoncello }
                        \set Staff.shortInstrumentName =
                        \markup { vc. }
                        \clef "bass"
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
                        - \downbow
                        - \accent
                        [
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
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        [
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
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        c,8
                        \ff
                        - \downbow
                        - \accent
                        ]
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Contrabass }
                        \set Staff.shortInstrumentName =
                        \markup { cb. }
                        \clef "bass"
                        r1
                        r4
                        f,4
                        \mp
                        \<
                        ~
                        \boxed-markup "Slight OP" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        f,16
                        [
                        \revert Staff.Stem.stemlet-length
                        g,8.
                        ~
                        ]
                        g,4
                        \f
                        \>
                        af,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,16
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8.
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b,16
                        \mp
                        \<
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8.
                        ~
                        ]
                        a,4
                        \f
                        \>
                        a,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a,16
                        \mp
                        \<
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8.
                        ~
                        ]
                        f,4
                        b,4
                        \f
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
