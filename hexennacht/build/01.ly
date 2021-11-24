    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=69
            \time 4/4
            s1 * 1
            \time 2/4
            s1 * 1/2
            \time 3/16
            s1 * 3/16
            \time 5/4
            s1 * 5/4
            \tempo 4=105
            \time 5/4
            s1 * 5/4
            \time 3/8
            s1 * 3/8
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \tempo 4=130
            \time 6/4
            s1 * 3/2
            \tempo 4=105
            \time 9/4
            s1 * 9/4
            \time 9/4
            s1 * 9/4
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic
                \abs-fontsize
                    #12
                    {
                        Accel.
                    } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 6.75
            \startTextSpan
            \tempo 4=130
            \time 9/4
            s1 * 9/4
            \stopTextSpan
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
                                    \set Staff.instrumentName =
                                    \markup { Flute }
                                    \set Staff.shortInstrumentName =
                                    \markup { fl. }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r8
                                    \times 2/3
                                    {
                                        cs'''32
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        ef'''32
                                        fs'''32
                                        g'''32
                                        e'''32
                                        f''32
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    c'32
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    ]
                                    r4
                                    \times 4/5
                                    {
                                        bf''8
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        ef'''16
                                        e'''16
                                        fs''16
                                        \)
                                        ]
                                    }
                                    d'4
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    d'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    \pp
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
                                    ]
                                    r2
                                    r1
                                    \times 4/7
                                    {
                                        g''16
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        bf''32
                                        f'''32
                                        fs'''32
                                        c''32
                                        af''32
                                        \)
                                        ]
                                    }
                                    c'8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    d'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    \pp
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
                                    ]
                                    r1.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        c'''16
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        d'''16
                                        e'''16
                                        b''8
                                        \)
                                        ]
                                    }
                                    c'8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    \pp
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
                                    ]
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''32
                                    \ff
                                    ^ \markup {
                                        \italic
                                            45˚
                                        }
                                    [
                                    \(
                                    e''32
                                    d'''32
                                    f'''32
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    d'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    \pp
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
                                    ]
                                    \times 2/3
                                    {
                                        cs'''16
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        g''16
                                        a''16
                                        cs'''16
                                        ef'''8
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    \ffff
                                    - \marcato
                                    ^ \markup {
                                        \italic
                                            0˚
                                        }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    [
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \ffff
                                    - \marcato
                                    ^ \markup {
                                        \italic
                                            0˚
                                        }
                                    ]
                                    \times 2/3
                                    {
                                        fs'''16
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        g'''16
                                        e'''16
                                        f''16
                                        bf''16
                                        ef'''16
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    \ffff
                                    - \marcato
                                    ^ \markup {
                                        \italic
                                            0˚
                                        }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    c'4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    [
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    ]
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    d'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    \ffff
                                    - \marcato
                                    ^ \markup {
                                        \italic
                                            0˚
                                        }
                                    ]
                                    \times 2/3
                                    {
                                        e'''32
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        fs''32
                                        g''32
                                        bf''32
                                        f'''32
                                        fs'''32
                                        \)
                                        ]
                                    }
                                    c'8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    \pp
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
                                    [
                                    c''16
                                    \ff
                                    ^ \markup {
                                        \italic
                                            45˚
                                        }
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    af''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''16
                                    [
                                    d'''16
                                    e'''16
                                    \revert Staff.Stem.stemlet-length
                                    b''16
                                    \)
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    ]
                                    \times 2/3
                                    {
                                        f''16
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        e''16
                                        d'''16
                                        f'''16
                                        cs'''16
                                        g''16
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    ]
                                    d'4
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { 90˚ \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { 0˚ }
                                    - \tweak padding 4
                                    \startTextSpan
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \ffff
                                    - \marcato
                                    \stopTextSpan
                                    \)
                                    ]
                                    \times 4/5
                                    {
                                        a''32
                                        \ff
                                        ^ \markup {
                                            \italic
                                                45˚
                                            }
                                        [
                                        \(
                                        cs'''32
                                        ef'''32
                                        fs'''16
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    \ffff
                                    - \marcato
                                    ^ \markup {
                                        \italic
                                            0˚
                                        }
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    \fermata
                                    ^ \markup {
                                        \italic
                                            90˚
                                        }
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
                                        \set Staff.instrumentName =
                                        \markup { Oboe }
                                        \set Staff.shortInstrumentName =
                                        \markup { ob. }
                                        \once \override Beam.grow-direction = #right
                                        r32 * 117/32
                                        [
                                        af''32 * 99/32
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        aqf''32 * 69/32
                                        - \open
                                        \glissando
                                        gqs''32 * 13/8
                                        - \stopped
                                        \)
                                        r32 * 47/32
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
                                        \once \override Beam.grow-direction = #left
                                        r32 * 5/4
                                        [
                                        af''32 * 43/32
                                        \mp
                                        - \open
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        a''32 * 51/32
                                        - \stopped
                                        \glissando
                                        aqs''32 * 65/32
                                        - \open
                                        \glissando
                                        aqf''32 * 85/32
                                        - \stopped
                                        \)
                                        r32 * 25/8
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4
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
                                        r32 * 15/4
                                        [
                                        af''32 * 21/8
                                        \ff
                                        - \open
                                        r32 * 13/8
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
                                                    c'4
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
                                        r32 * 43/32
                                        [
                                        aqf''32 * 49/32
                                        \mp
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        gqs''32 * 17/8
                                        - \open
                                        \)
                                        r32 * 3
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r8.
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
                                        af''32 * 115/32
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 49/16
                                        - \open
                                        \glissando
                                        aqs''32 * 5/2
                                        - \stopped
                                        \glissando
                                        aqf''32 * 33/16
                                        - \open
                                        \glissando
                                        af''32 * 57/32
                                        - \stopped
                                        \glissando
                                        aqf''32 * 13/8
                                        - \open
                                        \)
                                        r32 * 25/16
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
                                        gqs''32 * 23/16
                                        \mf
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        af''32 * 25/16
                                        - \open
                                        \glissando
                                        a''32 * 55/32
                                        - \stopped
                                        \glissando
                                        aqs''32 * 2
                                        - \open
                                        \glissando
                                        aqf''32 * 75/32
                                        - \stopped
                                        \glissando
                                        af''32 * 89/32
                                        - \open
                                        \glissando
                                        aqf''32 * 103/32
                                        - \stopped
                                        \)
                                        r32 * 113/32
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2.
                                    r2
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
                                        r32 * 43/32
                                        [
                                        gqs''32 * 49/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        af''32 * 17/8
                                        - \stopped
                                        \)
                                        r32 * 3
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
                                        r32 * 117/32
                                        [
                                        a''32 * 11/32
                                        \mp
                                        - \open
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \(
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
                                                    c'4
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
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a''32 * 11/4
                                        [
                                        \glissando
                                        aqs''32 * 69/32
                                        - \stopped
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        aqf''32 * 13/8
                                        - \open
                                        \)
                                        ]
                                        r32 * 47/32
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4
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
                                        r32 * 43/32
                                        [
                                        af''32 * 49/32
                                        \mf
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        aqf''32 * 17/8
                                        - \open
                                        \)
                                        \glissando
                                        r32 * 3
                                        \!
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
                                                    c'4
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
                                        r32 * 15/4
                                        [
                                        gqs''32 * 21/8
                                        \mp
                                        - \stopped
                                        r32 * 13/8
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2
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
                                                    c'2.
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
                                        r32 * 51/32
                                        [
                                        af''32 * 51/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 27/16
                                        - \stopped
                                        \glissando
                                        aqs''32 * 29/16
                                        - \open
                                        \glissando
                                        aqf''32 * 65/32
                                        - \stopped
                                        \glissando
                                        af''32 * 73/32
                                        - \open
                                        \glissando
                                        aqf''32 * 21/8
                                        - \stopped
                                        \glissando
                                        gqs''32 * 97/32
                                        - \open
                                        \glissando
                                        af''32 * 111/32
                                        - \stopped
                                        \)
                                        r32 * 31/8
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
                                                    c'2.
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
                                        r32 * 15/4
                                        [
                                        a''32 * 115/32
                                        \mf
                                        - \open
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        aqs''32 * 103/32
                                        - \stopped
                                        \glissando
                                        aqf''32 * 11/4
                                        - \open
                                        \glissando
                                        af''32 * 37/16
                                        - \stopped
                                        \glissando
                                        aqf''32 * 2
                                        - \open
                                        \glissando
                                        gqs''32 * 7/4
                                        - \stopped
                                        \glissando
                                        af''32 * 13/8
                                        - \open
                                        \glissando
                                        a''32 * 49/32
                                        - \stopped
                                        \)
                                        r32 * 47/32
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r1.
                                    r8
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
                                        aqs''32 * 99/32
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        aqf''32 * 69/32
                                        - \open
                                        \glissando
                                        af''32 * 13/8
                                        - \stopped
                                        \)
                                        r32 * 47/32
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
                                                    c'4
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
                                        r32 * 43/32
                                        [
                                        aqf''32 * 49/32
                                        \ff
                                        - \open
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        gqs''32 * 17/8
                                        - \stopped
                                        \)
                                        \glissando
                                        r32 * 3
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4
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
                                                    c'2.
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
                                        r32 * 51/32
                                        [
                                        af''32 * 51/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 27/16
                                        - \stopped
                                        \glissando
                                        aqs''32 * 29/16
                                        - \open
                                        \glissando
                                        aqf''32 * 65/32
                                        - \stopped
                                        \glissando
                                        af''32 * 73/32
                                        - \open
                                        \glissando
                                        aqf''32 * 21/8
                                        - \stopped
                                        \glissando
                                        gqs''32 * 97/32
                                        - \open
                                        \glissando
                                        af''32 * 111/32
                                        - \stopped
                                        \)
                                        r32 * 31/8
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
                                        a''32 * 115/32
                                        \ff
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        aqs''32 * 91/32
                                        - \open
                                        \glissando
                                        aqf''32 * 35/16
                                        - \stopped
                                        \glissando
                                        af''32 * 29/16
                                        - \open
                                        \)
                                        \glissando
                                        r32 * 13/8
                                        \!
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
                                                    c'2.
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
                                        r32 * 15/4
                                        [
                                        aqf''32 * 115/32
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        gqs''32 * 103/32
                                        - \open
                                        \glissando
                                        af''32 * 11/4
                                        - \stopped
                                        \glissando
                                        a''32 * 37/16
                                        - \open
                                        \glissando
                                        aqs''32 * 2
                                        - \stopped
                                        \glissando
                                        aqf''32 * 7/4
                                        - \open
                                        \glissando
                                        af''32 * 13/8
                                        - \stopped
                                        \glissando
                                        aqf''32 * 49/32
                                        - \open
                                        \)
                                        r32 * 47/32
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
                                                    c'2.
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
                                        r32 * 51/32
                                        [
                                        gqs''32 * 51/32
                                        \ff
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        af''32 * 27/16
                                        - \open
                                        \glissando
                                        a''32 * 29/16
                                        - \stopped
                                        \glissando
                                        aqs''32 * 65/32
                                        - \open
                                        \glissando
                                        aqf''32 * 73/32
                                        - \stopped
                                        \glissando
                                        af''32 * 21/8
                                        - \open
                                        \glissando
                                        aqf''32 * 97/32
                                        - \stopped
                                        \glissando
                                        gqs''32 * 111/32
                                        - \open
                                        \)
                                        r32 * 31/8
                                        \!
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
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 69/32
                                        - \stopped
                                        \glissando
                                        aqs''32 * 13/8
                                        - \open
                                        \)
                                        r32 * 47/32
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
                                        \once \override Beam.grow-direction = #left
                                        r32 * 5/4
                                        [
                                        aqf''32 * 43/32
                                        \mp
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        af''32 * 51/32
                                        - \open
                                        \glissando
                                        aqf''32 * 65/32
                                        - \stopped
                                        \glissando
                                        gqs''32 * 85/32
                                        - \open
                                        \)
                                        r32 * 25/8
                                        \!
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
                                        \once \override Beam.grow-direction = #left
                                        r32 * 5/4
                                        [
                                        af''32 * 43/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 51/32
                                        - \stopped
                                        \glissando
                                        aqs''32 * 65/32
                                        - \open
                                        \glissando
                                        aqf''32 * 85/32
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
                                        \ff
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
                                        aqf''32 * 69/32
                                        - \open
                                        \glissando
                                        gqs''32 * 13/8
                                        - \stopped
                                        \)
                                        r32 * 47/32
                                        \!
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
                                                    c'4
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
                                        r32 * 43/32
                                        [
                                        af''32 * 49/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        a''32 * 17/8
                                        - \stopped
                                        \)
                                        r32 * 3
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
                                        \ff
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \glissando
                                        \(
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
                                        \!
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
                                        gqs''32 * 115/32
                                        - \open
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        af''32 * 91/32
                                        - \stopped
                                        \glissando
                                        a''32 * 35/16
                                        - \open
                                        \glissando
                                        aqs''32 * 29/16
                                        - \stopped
                                        \)
                                        r32 * 13/8
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
                                                    c'4
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
                                        r32 * 43/32
                                        [
                                        aqf''32 * 49/32
                                        \ff
                                        - \stopped
                                        \glissando
                                        \(
                                        af''32 * 17/8
                                        \fermata
                                        - \open
                                        \)
                                        r32 * 3
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
                                    \set Staff.instrumentName =
                                    \markup { Bass Clarinet }
                                    \set Staff.shortInstrumentName =
                                    \markup { bcl. }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice4
                        {
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
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs,8
                                        \ff
                                        [
                                        \(
                                        \boxed-markup "Overblow" 1
                                        \revert Staff.Stem.stemlet-length
                                        g,8
                                        ]
                                        bf,4.
                                        \)
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af,8
                                        - \marcato
                                        - \staccato
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        af,8
                                        \fermata
                                        - \marcato
                                        - \staccato
                                        ]
                                    }
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
                            \set Staff.instrumentName =
                            \markup { French Horn }
                            \set Staff.shortInstrumentName =
                            \markup { hrn. }
                            r1
                            r2
                            r8.
                            r2.
                            r2
                            r2.
                            r2
                            r4.
                            r1.
                            r1.
                            r1.
                            r1.
                            r2.
                            r1.
                            r2.
                            r1.
                            r2.
                            \fermata
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
                                    \set Staff.instrumentName =
                                    \markup { Trumpet in C }
                                    \set Staff.shortInstrumentName =
                                    \markup { tpt. }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice7
                        {
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
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1..
                                    r8
                                    \clef "treble"
                                    bf''8
                                    :64
                                    \f
                                    \<
                                    ~
                                    \boxed-markup "Fluttertongue, rapidly switch between 1st and 7th" 1
                                    bf''8.
                                    :64
                                    \fff
                                    r16
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice8
                        {
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
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r2.
                                    e,2
                                    \p
                                    \<
                                    fs,4
                                    ~
                                    fs,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    ~
                                    ]
                                    g,4
                                    \fff
                                    \fermata
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
                                    \set Staff.instrumentName =
                                    \markup { Piano }
                                    \set Staff.shortInstrumentName =
                                    \markup { pno. }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
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
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
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
                            \set Staff.instrumentName =
                            \markup { Harp }
                            \set Staff.shortInstrumentName =
                            \markup { harp }
                            r1
                            r2
                            r8.
                            r2.
                            r2
                            r2.
                            r2
                            r4.
                            r1.
                            r1.
                            r1.
                            r1.
                            r2.
                            r1.
                            r2.
                            r1.
                            r2.
                            \fermata
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
                                    \set Staff.instrumentName =
                                    \markup { Marimba }
                                    \set Staff.shortInstrumentName =
                                    \markup { mar. }
                                    \clef "bass"
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    <d e>4
                                    \mp
                                    \<
                                    ~
                                    \boxed-markup "w/ bow" 1
                                    <d e>4
                                    \ff
                                    \>
                                    ~
                                    <d e>4
                                    \pp
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice13
                        {
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
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
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
                            \staff-line-count 3
                            \set Staff.instrumentName =
                            \markup { Percussion 2 }
                            \set Staff.shortInstrumentName =
                            \markup { perc. 2 }
                            \clef "percussion"
                            r1
                            r2
                            r8.
                            r2.
                            r2
                            r2.
                            r2
                            r4.
                            r1.
                            r1.
                            r1.
                            r1.
                            r2.
                            r1.
                            r2.
                            r2.
                            r2
                            r8
                            \tweak Accidental.transparent ##t
                            a8
                            :64
                            \p
                            \<
                            ~
                            \boxed-markup "Gongs, with palms" 1
                            \tweak Accidental.transparent ##t
                            a2.
                            :32
                            \fermata
                            \f
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
                                    \set Staff.instrumentName =
                                    \markup { Violin 1 }
                                    \set Staff.shortInstrumentName =
                                    \markup { vln. 1 }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice16
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName =
                                    \markup { Violin 2 }
                                    \set Staff.shortInstrumentName =
                                    \markup { vln. 2 }
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \set Staff.instrumentName =
                                    \markup { Viola }
                                    \set Staff.shortInstrumentName =
                                    \markup { vla. }
                                    \clef "alto"
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName =
                                    \markup { Violoncello }
                                    \set Staff.shortInstrumentName =
                                    \markup { vc. }
                                    \clef "bass"
                                    r1
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    \fermata
                                }
                            }
                        }
                        \tag #'voice19
                        {
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
                                    r2
                                    r8.
                                    r2.
                                    r2
                                    r2.
                                    r2
                                    r4.
                                    r1.
                                    r1.
                                    r1.
                                    r1.
                                    r2.
                                    r1.
                                    r2.
                                    r2.
                                    g,4
                                    \p
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8.
                                    ~
                                    ]
                                    af,4
                                    b,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,8.
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,8.
                                    \fermata
                                    \ff
                                    ]
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
