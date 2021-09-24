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
            - \tweak bound-details.left.text \markup \concat { Accel. \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak staff-padding 100
            \startTextSpan
            \tempo 4=130
            \time 9/4
            s1 * 9/4
            \stopTextSpan
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r8
                        ^ \markup { 7 }
                        \times 2/3
                        {
                            cs'''32
                            \ff
                            ^ \markup { 8 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            ef'''32
                            ^ \markup { 9 }
                            fs'''32
                            ^ \markup { 10 }
                            g'''32
                            ^ \markup { 11 }
                            e'''32
                            ^ \markup { 12 }
                            f''32
                            ^ \markup { 13 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16.
                        ^ \markup { 14 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \revert Staff.Stem.stemlet-length
                        c'32
                        \ffff
                        - \marcato
                        ^ \markup { 15 }
                        \stopTextSpan
                        \)
                        ]
                        r4
                        ^ \markup { 16 }
                        \times 4/5
                        {
                            bf''8
                            \ff
                            ^ \markup { 17 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            ef'''16
                            ^ \markup { 18 }
                            e'''16
                            ^ \markup { 19 }
                            fs''16
                            ^ \markup { 20 }
                            \)
                            ]
                        }
                        d'4
                        ^ \markup { 21 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        ^ \markup { 22 }
                        [
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 23 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        c'8
                        \pp
                        ^ \markup { 24 }
                        ^ \markup {
                            \italic
                                90
                            }
                        ]
                        r2
                        ^ \markup { 25 }
                        r1
                        ^ \markup { 26 }
                        \times 4/7
                        {
                            g''16
                            \ff
                            ^ \markup { 27 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            bf''32
                            ^ \markup { 28 }
                            f'''32
                            ^ \markup { 29 }
                            fs'''32
                            ^ \markup { 30 }
                            c''32
                            ^ \markup { 31 }
                            af''32
                            ^ \markup { 32 }
                            \)
                            ]
                        }
                        c'8
                        ^ \markup { 33 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        ^ \markup { 34 }
                        [
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 35 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        d'8
                        \pp
                        ^ \markup { 36 }
                        ^ \markup {
                            \italic
                                90
                            }
                        ]
                        r1.
                        ^ \markup { 37 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'''16
                            \ff
                            ^ \markup { 38 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            d'''16
                            ^ \markup { 39 }
                            e'''16
                            ^ \markup { 40 }
                            b''8
                            ^ \markup { 41 }
                            \)
                            ]
                        }
                        c'8
                        ^ \markup { 42 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        ^ \markup { 43 }
                        [
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 44 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        d'8
                        \pp
                        ^ \markup { 45 }
                        ^ \markup {
                            \italic
                                90
                            }
                        ]
                        r4
                        ^ \markup { 46 }
                        \override Staff.Stem.stemlet-length = 0.75
                        f''32
                        \ff
                        ^ \markup { 47 }
                        ^ \markup {
                            \italic
                                45
                            }
                        [
                        \(
                        e''32
                        ^ \markup { 48 }
                        d'''32
                        ^ \markup { 49 }
                        f'''32
                        ^ \markup { 50 }
                        \)
                        \revert Staff.Stem.stemlet-length
                        d'8
                        ^ \markup { 51 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        d'4
                        ^ \markup { 52 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        ^ \markup { 53 }
                        [
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 54 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        c'8
                        \pp
                        ^ \markup { 55 }
                        ^ \markup {
                            \italic
                                90
                            }
                        ]
                        \times 2/3
                        {
                            cs'''16
                            \ff
                            ^ \markup { 56 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            g''16
                            ^ \markup { 57 }
                            a''16
                            ^ \markup { 58 }
                            cs'''16
                            ^ \markup { 59 }
                            ef'''8
                            ^ \markup { 60 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 61 }
                        ^ \markup {
                            \italic
                                0
                            }
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        ^ \markup { 62 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        ^ \markup { 63 }
                        [
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 64 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 65 }
                        ^ \markup {
                            \italic
                                0
                            }
                        ]
                        \times 2/3
                        {
                            fs'''16
                            \ff
                            ^ \markup { 66 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            g'''16
                            ^ \markup { 67 }
                            e'''16
                            ^ \markup { 68 }
                            f''16
                            ^ \markup { 69 }
                            bf''16
                            ^ \markup { 70 }
                            ef'''16
                            ^ \markup { 71 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 72 }
                        ^ \markup {
                            \italic
                                0
                            }
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        ^ \markup { 73 }
                        - \tweak circled-tip ##t
                        \<
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 74 }
                        \stopTextSpan
                        \)
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8.
                        ^ \markup { 75 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        c'4
                        ^ \markup { 76 }
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 77 }
                        \stopTextSpan
                        \)
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        ^ \markup { 78 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        ^ \markup { 79 }
                        [
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 80 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ^ \markup { 81 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        ^ \markup { 82 }
                        [
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 83 }
                        \stopTextSpan
                        \)
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 84 }
                        ^ \markup {
                            \italic
                                0
                            }
                        ]
                        \times 2/3
                        {
                            e'''32
                            \ff
                            ^ \markup { 85 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            fs''32
                            ^ \markup { 86 }
                            g''32
                            ^ \markup { 87 }
                            bf''32
                            ^ \markup { 88 }
                            f'''32
                            ^ \markup { 89 }
                            fs'''32
                            ^ \markup { 90 }
                            \)
                            ]
                        }
                        c'8
                        ^ \markup { 91 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        ^ \markup { 92 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 93 }
                        \stopTextSpan
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8
                        \pp
                        ^ \markup { 94 }
                        ^ \markup {
                            \italic
                                90
                            }
                        [
                        c''16
                        \ff
                        ^ \markup { 95 }
                        ^ \markup {
                            \italic
                                45
                            }
                        \(
                        \revert Staff.Stem.stemlet-length
                        af''16
                        ^ \markup { 96 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''16
                        ^ \markup { 97 }
                        [
                        d'''16
                        ^ \markup { 98 }
                        e'''16
                        ^ \markup { 99 }
                        \revert Staff.Stem.stemlet-length
                        b''16
                        ^ \markup { 100 }
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'8.
                        ^ \markup { 101 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 102 }
                        \stopTextSpan
                        \)
                        ]
                        \times 2/3
                        {
                            f''16
                            \ff
                            ^ \markup { 103 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            e''16
                            ^ \markup { 104 }
                            d'''16
                            ^ \markup { 105 }
                            f'''16
                            ^ \markup { 106 }
                            cs'''16
                            ^ \markup { 107 }
                            g''16
                            ^ \markup { 108 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        ^ \markup { 109 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \ffff
                        - \marcato
                        ^ \markup { 110 }
                        \stopTextSpan
                        \)
                        ]
                        d'4
                        ^ \markup { 111 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { 90 \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { 0 }
                        - \tweak staff-padding 3
                        \startTextSpan
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        ^ \markup { 112 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 113 }
                        \stopTextSpan
                        \)
                        ]
                        \times 4/5
                        {
                            a''32
                            \ff
                            ^ \markup { 114 }
                            ^ \markup {
                                \italic
                                    45
                                }
                            [
                            \(
                            cs'''32
                            ^ \markup { 115 }
                            ef'''32
                            ^ \markup { 116 }
                            fs'''16
                            ^ \markup { 117 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        \ffff
                        - \marcato
                        ^ \markup { 118 }
                        ^ \markup {
                            \italic
                                0
                            }
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        ^ \markup { 119 }
                        ^ \markup {
                            \italic
                                90
                            }
                        ]
                    }
                }
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
                            ^ \markup { 0 }
                            [
                            af''32 * 99/32
                            ^ \markup { 1 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            aqf''32 * 69/32
                            ^ \markup { 2 }
                            \glissando
                            gqs''32 * 13/8
                            ^ \markup { 3 }
                            \)
                            r32 * 47/32
                            ^ \markup { 4 }
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
                            ^ \markup { 5 }
                            [
                            af''32 * 43/32
                            \mp
                            ^ \markup { 6 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            a''32 * 51/32
                            ^ \markup { 7 }
                            \glissando
                            aqs''32 * 65/32
                            ^ \markup { 8 }
                            \glissando
                            aqf''32 * 85/32
                            ^ \markup { 9 }
                            \)
                            r32 * 25/8
                            \!
                            ^ \markup { 10 }
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup { 11 }
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
                            ^ \markup { 12 }
                            [
                            af''32 * 21/8
                            \ff
                            ^ \markup { 13 }
                            r32 * 13/8
                            ^ \markup { 14 }
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
                            ^ \markup { 15 }
                            [
                            aqf''32 * 49/32
                            \mp
                            ^ \markup { 16 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            gqs''32 * 17/8
                            ^ \markup { 17 }
                            \)
                            r32 * 3
                            \!
                            ^ \markup { 18 }
                            ]
                        }
                        \revert TupletNumber.text
                        r8.
                        ^ \markup { 19 }
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
                            ^ \markup { 20 }
                            [
                            af''32 * 115/32
                            ^ \markup { 21 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 49/16
                            ^ \markup { 22 }
                            \glissando
                            aqs''32 * 5/2
                            ^ \markup { 23 }
                            \glissando
                            aqf''32 * 33/16
                            ^ \markup { 24 }
                            \glissando
                            af''32 * 57/32
                            ^ \markup { 25 }
                            \glissando
                            aqf''32 * 13/8
                            ^ \markup { 26 }
                            \)
                            r32 * 25/16
                            ^ \markup { 27 }
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
                            ^ \markup { 28 }
                            [
                            gqs''32 * 23/16
                            \mf
                            ^ \markup { 29 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            af''32 * 25/16
                            ^ \markup { 30 }
                            \glissando
                            a''32 * 55/32
                            ^ \markup { 31 }
                            \glissando
                            aqs''32 * 2
                            ^ \markup { 32 }
                            \glissando
                            aqf''32 * 75/32
                            ^ \markup { 33 }
                            \glissando
                            af''32 * 89/32
                            ^ \markup { 34 }
                            \glissando
                            aqf''32 * 103/32
                            ^ \markup { 35 }
                            \)
                            r32 * 113/32
                            \!
                            ^ \markup { 36 }
                            ]
                        }
                        \revert TupletNumber.text
                        r2.
                        ^ \markup { 37 }
                        r2
                        ^ \markup { 38 }
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
                            ^ \markup { 39 }
                            [
                            gqs''32 * 49/32
                            ^ \markup { 40 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            af''32 * 17/8
                            ^ \markup { 41 }
                            \)
                            r32 * 3
                            ^ \markup { 42 }
                            ]
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 1/1
                        {
                            \once \override Beam.grow-direction = #right
                            r32 * 117/32
                            ^ \markup { 43 }
                            [
                            a''32 * 11/32
                            \mp
                            ^ \markup { 44 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \(
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 1/1
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''32 * 11/4
                            ^ \markup { 45 }
                            [
                            \glissando
                            aqs''32 * 69/32
                            ^ \markup { 46 }
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            aqf''32 * 13/8
                            ^ \markup { 47 }
                            \)
                            ]
                            r32 * 47/32
                            \!
                            ^ \markup { 48 }
                            ]
                        }
                        r4
                        ^ \markup { 49 }
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
                            ^ \markup { 50 }
                            [
                            af''32 * 49/32
                            \mf
                            ^ \markup { 51 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqf''32 * 17/8
                            ^ \markup { 52 }
                            \)
                            \glissando
                            r32 * 3
                            \!
                            ^ \markup { 53 }
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
                            ^ \markup { 54 }
                            [
                            gqs''32 * 21/8
                            \mp
                            ^ \markup { 55 }
                            r32 * 13/8
                            ^ \markup { 56 }
                            ]
                        }
                        \revert TupletNumber.text
                        r2
                        ^ \markup { 57 }
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
                            ^ \markup { 58 }
                            [
                            af''32 * 51/32
                            ^ \markup { 59 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 27/16
                            ^ \markup { 60 }
                            \glissando
                            aqs''32 * 29/16
                            ^ \markup { 61 }
                            \glissando
                            aqf''32 * 65/32
                            ^ \markup { 62 }
                            \glissando
                            af''32 * 73/32
                            ^ \markup { 63 }
                            \glissando
                            aqf''32 * 21/8
                            ^ \markup { 64 }
                            \glissando
                            gqs''32 * 97/32
                            ^ \markup { 65 }
                            \glissando
                            af''32 * 111/32
                            ^ \markup { 66 }
                            \)
                            r32 * 31/8
                            ^ \markup { 67 }
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
                            ^ \markup { 68 }
                            [
                            a''32 * 115/32
                            \mf
                            ^ \markup { 69 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqs''32 * 103/32
                            ^ \markup { 70 }
                            \glissando
                            aqf''32 * 11/4
                            ^ \markup { 71 }
                            \glissando
                            af''32 * 37/16
                            ^ \markup { 72 }
                            \glissando
                            aqf''32 * 2
                            ^ \markup { 73 }
                            \glissando
                            gqs''32 * 7/4
                            ^ \markup { 74 }
                            \glissando
                            af''32 * 13/8
                            ^ \markup { 75 }
                            \glissando
                            a''32 * 49/32
                            ^ \markup { 76 }
                            \)
                            r32 * 47/32
                            \!
                            ^ \markup { 77 }
                            ]
                        }
                        \revert TupletNumber.text
                        r1.
                        ^ \markup { 78 }
                        r8
                        ^ \markup { 79 }
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
                            ^ \markup { 80 }
                            [
                            aqs''32 * 99/32
                            ^ \markup { 81 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            aqf''32 * 69/32
                            ^ \markup { 82 }
                            \glissando
                            af''32 * 13/8
                            ^ \markup { 83 }
                            \)
                            r32 * 47/32
                            ^ \markup { 84 }
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
                            ^ \markup { 85 }
                            [
                            aqf''32 * 49/32
                            \ff
                            ^ \markup { 86 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            gqs''32 * 17/8
                            ^ \markup { 87 }
                            \)
                            \glissando
                            r32 * 3
                            \!
                            ^ \markup { 88 }
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup { 89 }
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
                            ^ \markup { 90 }
                            [
                            af''32 * 51/32
                            ^ \markup { 91 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 27/16
                            ^ \markup { 92 }
                            \glissando
                            aqs''32 * 29/16
                            ^ \markup { 93 }
                            \glissando
                            aqf''32 * 65/32
                            ^ \markup { 94 }
                            \glissando
                            af''32 * 73/32
                            ^ \markup { 95 }
                            \glissando
                            aqf''32 * 21/8
                            ^ \markup { 96 }
                            \glissando
                            gqs''32 * 97/32
                            ^ \markup { 97 }
                            \glissando
                            af''32 * 111/32
                            ^ \markup { 98 }
                            \)
                            r32 * 31/8
                            ^ \markup { 99 }
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
                            ^ \markup { 100 }
                            [
                            a''32 * 115/32
                            \ff
                            ^ \markup { 101 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqs''32 * 91/32
                            ^ \markup { 102 }
                            \glissando
                            aqf''32 * 35/16
                            ^ \markup { 103 }
                            \glissando
                            af''32 * 29/16
                            ^ \markup { 104 }
                            \)
                            \glissando
                            r32 * 13/8
                            \!
                            ^ \markup { 105 }
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
                            ^ \markup { 106 }
                            [
                            aqf''32 * 115/32
                            ^ \markup { 107 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            gqs''32 * 103/32
                            ^ \markup { 108 }
                            \glissando
                            af''32 * 11/4
                            ^ \markup { 109 }
                            \glissando
                            a''32 * 37/16
                            ^ \markup { 110 }
                            \glissando
                            aqs''32 * 2
                            ^ \markup { 111 }
                            \glissando
                            aqf''32 * 7/4
                            ^ \markup { 112 }
                            \glissando
                            af''32 * 13/8
                            ^ \markup { 113 }
                            \glissando
                            aqf''32 * 49/32
                            ^ \markup { 114 }
                            \)
                            r32 * 47/32
                            ^ \markup { 115 }
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
                            ^ \markup { 116 }
                            [
                            gqs''32 * 51/32
                            \ff
                            ^ \markup { 117 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            af''32 * 27/16
                            ^ \markup { 118 }
                            \glissando
                            a''32 * 29/16
                            ^ \markup { 119 }
                            \glissando
                            aqs''32 * 65/32
                            ^ \markup { 120 }
                            \glissando
                            aqf''32 * 73/32
                            ^ \markup { 121 }
                            \glissando
                            af''32 * 21/8
                            ^ \markup { 122 }
                            \glissando
                            aqf''32 * 97/32
                            ^ \markup { 123 }
                            \glissando
                            gqs''32 * 111/32
                            ^ \markup { 124 }
                            \)
                            r32 * 31/8
                            \!
                            ^ \markup { 125 }
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
                            ^ \markup { 126 }
                            [
                            af''32 * 99/32
                            ^ \markup { 127 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 69/32
                            ^ \markup { 128 }
                            \glissando
                            aqs''32 * 13/8
                            ^ \markup { 129 }
                            \)
                            r32 * 47/32
                            ^ \markup { 130 }
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
                            ^ \markup { 131 }
                            [
                            aqf''32 * 43/32
                            \mp
                            ^ \markup { 132 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            af''32 * 51/32
                            ^ \markup { 133 }
                            \glissando
                            aqf''32 * 65/32
                            ^ \markup { 134 }
                            \glissando
                            gqs''32 * 85/32
                            ^ \markup { 135 }
                            \)
                            r32 * 25/8
                            \!
                            ^ \markup { 136 }
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
                            ^ \markup { 137 }
                            [
                            af''32 * 43/32
                            ^ \markup { 138 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 51/32
                            ^ \markup { 139 }
                            \glissando
                            aqs''32 * 65/32
                            ^ \markup { 140 }
                            \glissando
                            aqf''32 * 85/32
                            ^ \markup { 141 }
                            \)
                            r32 * 25/8
                            ^ \markup { 142 }
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
                            ^ \markup { 143 }
                            [
                            af''32 * 99/32
                            \ff
                            ^ \markup { 144 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqf''32 * 69/32
                            ^ \markup { 145 }
                            \glissando
                            gqs''32 * 13/8
                            ^ \markup { 146 }
                            \)
                            r32 * 47/32
                            \!
                            ^ \markup { 147 }
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
                            ^ \markup { 148 }
                            [
                            af''32 * 49/32
                            ^ \markup { 149 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            a''32 * 17/8
                            ^ \markup { 150 }
                            \)
                            r32 * 3
                            ^ \markup { 151 }
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
                            ^ \markup { 152 }
                            [
                            aqs''32 * 115/32
                            \ff
                            ^ \markup { 153 }
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqf''32 * 91/32
                            ^ \markup { 154 }
                            \glissando
                            af''32 * 35/16
                            ^ \markup { 155 }
                            \glissando
                            aqf''32 * 29/16
                            ^ \markup { 156 }
                            \)
                            r32 * 13/8
                            \!
                            ^ \markup { 157 }
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
                            ^ \markup { 158 }
                            [
                            gqs''32 * 115/32
                            ^ \markup { 159 }
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            af''32 * 91/32
                            ^ \markup { 160 }
                            \glissando
                            a''32 * 35/16
                            ^ \markup { 161 }
                            \glissando
                            aqs''32 * 29/16
                            ^ \markup { 162 }
                            \)
                            r32 * 13/8
                            ^ \markup { 163 }
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
                            ^ \markup { 164 }
                            [
                            aqf''32 * 49/32
                            \ff
                            ^ \markup { 165 }
                            \glissando
                            \(
                            af''32 * 17/8
                            ^ \markup { 166 }
                            \)
                            r32 * 3
                            ^ \markup { 167 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs,8
                            \ff
                            ^ \markup { 16 }
                            [
                            \(
                            \boxed-markup "Overblow" 1
                            \revert Staff.Stem.stemlet-length
                            g,8
                            ^ \markup { 17 }
                            ]
                            bf,4.
                            ^ \markup { 18 }
                            \)
                            \override Staff.Stem.stemlet-length = 0.75
                            af,8
                            - \marcato
                            - \staccato
                            ^ \markup { 19 }
                            [
                            \revert Staff.Stem.stemlet-length
                            af,8
                            - \marcato
                            - \staccato
                            ^ \markup { 20 }
                            ]
                        }
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
                    ^ \markup { 0 }
                    r2
                    ^ \markup { 1 }
                    r8.
                    ^ \markup { 2 }
                    r2.
                    ^ \markup { 3 }
                    r2
                    ^ \markup { 4 }
                    r2.
                    ^ \markup { 5 }
                    r2
                    ^ \markup { 6 }
                    r4.
                    ^ \markup { 7 }
                    r1.
                    ^ \markup { 8 }
                    r1.
                    ^ \markup { 9 }
                    r1.
                    ^ \markup { 10 }
                    r1.
                    ^ \markup { 11 }
                    r2.
                    ^ \markup { 12 }
                    r1.
                    ^ \markup { 13 }
                    r2.
                    ^ \markup { 14 }
                    r1.
                    ^ \markup { 15 }
                    r2.
                    ^ \markup { 16 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1..
                        ^ \markup { 15 }
                        r8
                        ^ \markup { 16 }
                        \clef "treble"
                        bf''8
                        :64
                        \f
                        ^ \markup { 17 }
                        \<
                        ~
                        \boxed-markup "Fluttertongue, rapidly switch between 1st and 7th" 1
                        bf''8.
                        :64
                        \fff
                        ^ \markup { 18 }
                        r16
                        ^ \markup { 19 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r2.
                        ^ \markup { 15 }
                        e,2
                        \p
                        ^ \markup { 16 }
                        \<
                        fs,4
                        ^ \markup { 17 }
                        ~
                        fs,4
                        ^ \markup { 18 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs,8
                        ^ \markup { 19 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,8
                        ^ \markup { 20 }
                        ~
                        ]
                        g,4
                        \fff
                        ^ \markup { 21 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
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
                    r1
                    ^ \markup { 0 }
                    r2
                    ^ \markup { 1 }
                    r8.
                    ^ \markup { 2 }
                    r2.
                    ^ \markup { 3 }
                    r2
                    ^ \markup { 4 }
                    r2.
                    ^ \markup { 5 }
                    r2
                    ^ \markup { 6 }
                    r4.
                    ^ \markup { 7 }
                    r1.
                    ^ \markup { 8 }
                    r1.
                    ^ \markup { 9 }
                    r1.
                    ^ \markup { 10 }
                    r1.
                    ^ \markup { 11 }
                    r2.
                    ^ \markup { 12 }
                    r1.
                    ^ \markup { 13 }
                    r2.
                    ^ \markup { 14 }
                    r1.
                    ^ \markup { 15 }
                    r2.
                    ^ \markup { 16 }
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
                        \clef "bass"
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        <d e>4
                        \mp
                        ^ \markup { 16 }
                        \<
                        ~
                        \boxed-markup "w/ bow" 1
                        <d e>4
                        \ff
                        ^ \markup { 17 }
                        \>
                        ~
                        <d e>4
                        \pp
                        ^ \markup { 18 }
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Ratchets }
                        \set Staff.shortInstrumentName =
                        \markup { ratch. }
                        \clef "percussion"
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    \set Staff.instrumentName =
                    \markup { Percussion 2 }
                    \set Staff.shortInstrumentName =
                    \markup { perc. 2 }
                    \clef "percussion"
                    r1
                    ^ \markup { 0 }
                    r2
                    ^ \markup { 1 }
                    r8.
                    ^ \markup { 2 }
                    r2.
                    ^ \markup { 3 }
                    r2
                    ^ \markup { 4 }
                    r2.
                    ^ \markup { 5 }
                    r2
                    ^ \markup { 6 }
                    r4.
                    ^ \markup { 7 }
                    r1.
                    ^ \markup { 8 }
                    r1.
                    ^ \markup { 9 }
                    r1.
                    ^ \markup { 10 }
                    r1.
                    ^ \markup { 11 }
                    r2.
                    ^ \markup { 12 }
                    r1.
                    ^ \markup { 13 }
                    r2.
                    ^ \markup { 14 }
                    r2.
                    ^ \markup { 15 }
                    r2
                    ^ \markup { 16 }
                    r8
                    ^ \markup { 17 }
                    <a c'>8
                    ^ \markup { 18 }
                    ~
                    <a c'>2.
                    ^ \markup { 19 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.instrumentName =
                        \markup { Violin 2 }
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                    }
                }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
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
                        r1
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1.
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
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
                        ^ \markup { 0 }
                        r2
                        ^ \markup { 1 }
                        r8.
                        ^ \markup { 2 }
                        r2.
                        ^ \markup { 3 }
                        r2
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4.
                        ^ \markup { 7 }
                        r1.
                        ^ \markup { 8 }
                        r1.
                        ^ \markup { 9 }
                        r1.
                        ^ \markup { 10 }
                        r1.
                        ^ \markup { 11 }
                        r2.
                        ^ \markup { 12 }
                        r1.
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r2.
                        ^ \markup { 15 }
                        g,4
                        ^ \markup { 16 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,16
                        ^ \markup { 17 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8.
                        ^ \markup { 18 }
                        ~
                        ]
                        af,4
                        ^ \markup { 19 }
                        b,4
                        ^ \markup { 20 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,16
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8.
                        ^ \markup { 22 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,16
                        ^ \markup { 23 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8.
                        ^ \markup { 24 }
                        ]
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
