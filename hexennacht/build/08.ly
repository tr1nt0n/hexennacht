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
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \bar ".|:"
            \time 4/4
            s1 * 1
            - \tweak padding 7.15
            ^ \markup \abs-fontsize #14 { "x8" }
            \bar ":|."
            \time 5/4
            s1 * 5/4
            \bar ".|:"
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r4
                                    c'4
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    [
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
                                    d'16
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    ]
                                    r16
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'''16
                                    \fff
                                    ^ \markup { \italic 45˚ }
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    [
                                    \(
                                    f'''16
                                    \revert Staff.Stem.stemlet-length
                                    bf'''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'''16
                                    \mp
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    c'''16
                                    b'''16
                                    \revert Staff.Stem.stemlet-length
                                    bf'''16
                                    \fff
                                    \)
                                    ]
                                    r16
                                    c'8.
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
                                    c'16
                                    [
                                    c'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    fs'''16
                                    \fff
                                    ^ \markup { \italic 45˚ }
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    bf'''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'''16
                                    \mp
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    b'''16
                                    \fff
                                    \)
                                    d'16
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    ]
                                    r4
                                    c'4
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
                                    c'16
                                    [
                                    c'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ]
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 5
                                    \startTextSpan
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \fff
                                    \)
                                    \stopTextSpan
                                    ]
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'2
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
                                        r32 * 3/2
                                        [
                                        af''32 * 25/16
                                        \ff
                                        - \open
                                        \(
                                        \glissando
                                        \boxed-markup "Overblow" 1
                                        aqf''32 * 7/4
                                        - \stopped
                                        \glissando
                                        gqs''32 * 65/32
                                        - \open
                                        \glissando
                                        af''32 * 79/32
                                        - \stopped
                                        \glissando
                                        a''32 * 49/16
                                        - \open
                                        \)
                                        r32 * 29/8
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'2
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
                                        r32 * 63/16
                                        [
                                        aqs''32 * 115/32
                                        - \stopped
                                        \(
                                        \glissando
                                        aqf''32 * 91/32
                                        - \open
                                        \glissando
                                        af''32 * 35/16
                                        - \stopped
                                        \glissando
                                        aqf''32 * 29/16
                                        - \open
                                        \)
                                        r32 * 13/8
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'2
                                                    ~
                                                    c'8
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
                                        r32 * 61/16
                                        [
                                        gqs''32 * 115/32
                                        - \stopped
                                        \(
                                        \glissando
                                        af''32 * 49/16
                                        - \open
                                        \glissando
                                        a''32 * 5/2
                                        - \stopped
                                        \glissando
                                        aqs''32 * 33/16
                                        - \open
                                        \glissando
                                        aqf''32 * 57/32
                                        - \stopped
                                        \glissando
                                        af''32 * 13/8
                                        - \open
                                        \)
                                        r32 * 25/16
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'2
                                                    ~
                                                    c'8
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
                                        r32 * 45/32
                                        [
                                        aqf''32 * 23/16
                                        - \stopped
                                        \(
                                        \glissando
                                        gqs''32 * 25/16
                                        - \open
                                        \glissando
                                        af''32 * 55/32
                                        - \stopped
                                        \glissando
                                        a''32 * 2
                                        - \open
                                        \glissando
                                        aqs''32 * 75/32
                                        - \stopped
                                        \glissando
                                        aqf''32 * 89/32
                                        - \open
                                        \glissando
                                        af''32 * 103/32
                                        - \stopped
                                        \)
                                        r32 * 113/32
                                        ]
                                    }
                                    \revert TupletNumber.text
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r8
                                    <af' eqf'''>8
                                    \ff
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five)) (lh . (thumb gis)) (rh . ()))}
                                    ~
                                    \boxed-markup "Overblow" 1
                                    <af' eqf'''>2
                                    ~
                                    <af' eqf'''>8
                                    r8
                                    r4
                                    r16
                                    <fqs' aqf'''>8.
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                                    ~
                                    <fqs' aqf'''>8
                                    r8
                                    <fs' bqf''>4
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                                    ~
                                    <fs' bqf''>8
                                    r8
                                    r4
                                    <gqs' f'''>4
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                                    ~
                                    <gqs' f'''>8.
                                    r16
                                    r16
                                    <e' cs'''>8.
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                                    ~
                                    <e' cs'''>2
                                    ~
                                    <e' cs'''>2
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r16
                                    <cqs, fs, c gqs>8.
                                    \ff
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                                    ~
                                    \boxed-markup "Overblow" 1
                                    <cqs, fs, c gqs>2
                                    ~
                                    <cqs, fs, c gqs>16
                                    r8.
                                    r4
                                    <cqs fs af>4
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}
                                    ~
                                    <cqs fs af>16
                                    r16
                                    r16
                                    <d eqf fqs>16
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                                    ~
                                    <d eqf fqs>4
                                    ~
                                    <d eqf fqs>16
                                    r8.
                                    r8.
                                    <cqs cqs'>16
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                                    ~
                                    <cqs cqs'>4
                                    ~
                                    <cqs cqs'>8
                                    r8
                                    <c d e>4
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
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
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            a''4
                            :32
                            \p
                            ~
                            \boxed-markup "Fluttering valves, Fluttertongue" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            :128
                            [
                            \revert Staff.Stem.stemlet-length
                            b'8.
                            :64
                            ]
                            r8
                            bf''8
                            :64
                            ~
                            bf''4
                            :32
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            bf''16
                            :128
                            [
                            \revert Staff.Stem.stemlet-length
                            cs''8.
                            :64
                            - \accent
                            \<
                            ~
                            ]
                            cs''4
                            :32
                            ~
                            cs''8
                            :64
                            r8
                            r8
                            c'''8
                            :64
                            - \accent
                            ~
                            c'''8
                            :64
                            \fff
                            r8
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \pitchedTrill
                                    eqf''8.
                                    \p
                                    \startTrillSpan eqs''
                                    r16
                                    \stopTrillSpan
                                    r16
                                    \pitchedTrill
                                    a''8.
                                    ~
                                    \startTrillSpan bf''
                                    a''4
                                    \glissando
                                    \pitchedTrill
                                    dqf''4
                                    \stopTrillSpan
                                    ~
                                    \startTrillSpan dqs''
                                    dqf''4
                                    \<
                                    ~
                                    dqf''16
                                    r8.
                                    \stopTrillSpan
                                    r16
                                    \pitchedTrill
                                    gqf''8.
                                    - \accent
                                    ~
                                    \startTrillSpan gqs''
                                    gqf''16
                                    \fff
                                    r8.
                                    \stopTrillSpan
                                    r4
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r8
                                    \clef "treble"
                                    bf''8
                                    :64
                                    \f
                                    ~
                                    \boxed-markup "Fluttertongue, switch rapidly between 1st-7th" 1
                                    bf''4
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf''16
                                    :128
                                    [
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    ef8.
                                    :64
                                    \p
                                    ~
                                    ]
                                    ef4
                                    :32
                                    ~
                                    ef8
                                    :64
                                    r8
                                    r8
                                    \clef "treble"
                                    bf''8
                                    :64
                                    \fff
                                    - \accent
                                    ~
                                    bf''8
                                    :64
                                    r8
                                    \clef "bass"
                                    e4
                                    :32
                                    - \accent
                                    ~
                                    e16
                                    :128
                                    r8.
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    af,8
                                    \mp
                                    ~
                                    af,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    ~
                                    ]
                                    g,2
                                    a,2
                                    ~
                                    a,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,8
                                    ~
                                    ]
                                    fs,2
                                    af,2
                                    f,2
                                    e,,4
                                    :32
                                    \p
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,,8.
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e,,16
                                    :128
                                    - \tenuto
                                    ~
                                    ]
                                    e,,2
                                    :32
                                    r4
                                    e,,4
                                    :32
                                    - \accent
                                    \<
                                    r8
                                    e,,8
                                    :64
                                    - \accent
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,,8.
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e,,16
                                    :128
                                    \fff
                                    - \accent
                                    ~
                                    ]
                                    e,,8
                                    :64
                                    r8
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
                                    \set Staff.shortInstrumentName =
                                    \markup { pno. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
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
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "bass"
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r8
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    \f
                                    - \accent
                                    ~
                                    <a,,, bf,,, b,,, c,, cs,,>4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ]
                                    r4
                                    r8
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    - \accent
                                    ]
                                    r2
                                    r8
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    [
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    - \accent
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ]
                                    r8
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a,,, bf,,, b,,, c,, cs,,>8.
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a,,, bf,,, b,,, c,, cs,,>16
                                    - \accent
                                    ]
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
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            \stopStaff \startStaff
                            r8
                            \clef "bass"
                            <g,, af,, b,, cs, d, ef,>8
                            :64
                            \mp
                            \<
                            ~
                            \boxed-markup "Circular scrape w/ plastic card" 1
                            <g,, af,, b,, cs, d, ef,>2.
                            :32
                            ~
                            <g,, af,, b,, cs, d, ef,>1
                            :32
                            ~
                            <g,, af,, b,, cs, d, ef,>2.
                            :32
                            ~
                            <g,, af,, b,, cs, d, ef,>2
                            :32
                            \ff
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r4
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,16
                                    \f
                                    [
                                    \(
                                    \boxed-markup "w/ drumsticks, pitches approx." 1
                                    a,16
                                    fs,16
                                    \revert Staff.Stem.stemlet-length
                                    b,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,16
                                    [
                                    c16
                                    cs16
                                    \revert Staff.Stem.stemlet-length
                                    ef16
                                    \)
                                    ]
                                    r4
                                    r4
                                    r8
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'''16
                                    [
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    af'''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''16
                                    [
                                    af'''16
                                    \revert Staff.Stem.stemlet-length
                                    g'''16
                                    \)
                                    ]
                                    r16
                                    r4
                                    r4
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,16
                                    [
                                    \(
                                    bf,16
                                    ef16
                                    \revert Staff.Stem.stemlet-length
                                    af,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    \)
                                    ]
                                    r8
                                    r8
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'''16
                                    [
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    fs'''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'''16
                                    [
                                    g'''16
                                    b'''16
                                    \revert Staff.Stem.stemlet-length
                                    d'''16
                                    ]
                                    e'''16
                                    \)
                                    r16
                                    r16
                                    \clef "bass"
                                    fs,16
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs16
                                    [
                                    af,16
                                    c16
                                    \revert Staff.Stem.stemlet-length
                                    cs16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d16
                                    [
                                    af,16
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    <f, f>8
                                    :64
                                    ~
                                    ]
                                    <f, f>4
                                    :32
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    :64
                                    \f
                                    ~
                                    \tweak Accidental.transparent ##t
                                    e'4
                                    :32
                                    r8
                                    \tweak Accidental.transparent ##t
                                    a8
                                    :64
                                    ~
                                    \tweak Accidental.transparent ##t
                                    a2
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    a8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    :64
                                    ~
                                    ]
                                    \tweak Accidental.transparent ##t
                                    e'4
                                    :32
                                    r2.
                                    r8
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    :64
                                    \tweak Accidental.transparent ##t
                                    e'4
                                    :32
                                    ~
                                    \tweak Accidental.transparent ##t
                                    e'16
                                    :128
                                    r8.
                                    r4
                                    \tweak Accidental.transparent ##t
                                    a4
                                    :32
                                    ~
                                    \tweak Accidental.transparent ##t
                                    a4
                                    :32
                                    r4
                                    r8
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    :64
                                    ~
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    :64
                                    r8
                                    r2.
                                    r8
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    :64
                                    ~
                                    \tweak Accidental.transparent ##t
                                    e'4
                                    :32
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
                            \clef "percussion"
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \times 4/7
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                ]
                            }
                            \times 2/3
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                ]
                            }
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \times 2/3
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/7
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                ]
                            }
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \times 6/9
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                ]
                            }
                            \times 2/3
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                ]
                            }
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            ]
                            \times 2/3
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 10/11
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                ]
                            }
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r2
                                    r8
                                    fs''8
                                    \ff
                                    - \tenuto
                                    _ \markup \italic { "Espressivo" }
                                    ~
                                    \(
                                    \boxed-markup "Crine, MSP, Slightly OP" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqs''16
                                    \)
                                    ]
                                    \times 4/6
                                    {
                                        bf''2
                                        - \tenuto
                                        ~
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        bqf''8
                                        - \tenuto
                                        ]
                                        \(
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af''16
                                        [
                                        fqs''16
                                        f''16
                                        eqf''16
                                        \revert Staff.Stem.stemlet-length
                                        cqs''16
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        ef''8.
                                        \)
                                        fqs''4
                                        - \tenuto
                                        \(
                                    }
                                    fs''2
                                    cqs''4
                                    \)
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''8.
                                    - \tenuto
                                    [
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    dqs''16
                                    \)
                                    ]
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''8
                                        - \tenuto
                                        [
                                        \(
                                        gqf''8
                                        \revert Staff.Stem.stemlet-length
                                        fs''8
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        gqs''4
                                        - \tenuto
                                        \(
                                        bf''16
                                        \)
                                    }
                                    \times 4/6
                                    {
                                        bqf''4
                                        - \tenuto
                                        ~
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bqf''16
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        af''16
                                        \)
                                        ]
                                    }
                                    \times 4/6
                                    {
                                        fqs''4
                                        - \tenuto
                                        ~
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fqs''16
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        f''16
                                        \)
                                        ]
                                    }
                                    eqf''4
                                    - \tenuto
                                    cqs''4
                                    - \tenuto
                                    ef''4
                                    - \tenuto
                                    fqs''4
                                    - \tenuto
                                    fs''4
                                    - \tenuto
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
                                        [
                                        \boxed-markup "Crine, Ord., OP" 1
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        g16
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        [
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        [
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        g8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                        \tweak style #'cross
                                        g8
                                        \mp
                                        - \upbow
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        g16
                                        \fff
                                        - \accent
                                        - \downbow
                                        ]
                                    }
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c4
                                        \fff
                                        - \accent
                                        - \downbow
                                        \boxed-markup "Crine, Ord., OP" 1
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
                                        \fff
                                        - \accent
                                        - \downbow
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c4
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        c8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c4
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        c8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c4
                                        \mp
                                        - \upbow
                                        \tweak style #'cross
                                        c8
                                        \fff
                                        - \accent
                                        - \downbow
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
                                        \fff
                                        - \accent
                                        - \downbow
                                    }
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    c,8
                                    \fff
                                    - \accent
                                    - \downbow
                                    [
                                    \boxed-markup "Crine, Ord., OP" 1
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c,8
                                    \mp
                                    - \upbow
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    c,8
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
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
                                    \fff
                                    - \accent
                                    - \downbow
                                    ]
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    f,8
                                    \mp
                                    ~
                                    \boxed-markup "MST" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,16
                                    ~
                                    ]
                                    a,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf,16
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,16
                                    ~
                                    ]
                                    g,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,8
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { MST, Norm. \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { MSP, OP }
                                    - \tweak padding 3
                                    \startTextSpan
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,16
                                    ~
                                    ]
                                    fs,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e,16
                                    ~
                                    ]
                                    e,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
                                    \ff
                                    \stopTextSpan
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,16
                                    - \marcato
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,16
                                    - \marcato
                                    ~
                                    ]
                                    af,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b,8
                                    - \marcato
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,16
                                    - \marcato
                                    ~
                                    ]
                                    a,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,8
                                    - \marcato
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,8
                                    - \marcato
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b,16
                                    - \marcato
                                    ]
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
