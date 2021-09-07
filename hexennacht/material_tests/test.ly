    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
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
                        r2.
                        r1
                        r4
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            \ffff
                            [
                            \(
                            cs'''16
                            ef'''16
                            \revert Staff.Stem.stemlet-length
                            fs'''8
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8.
                        \p
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
                        c'16
                        \ffff
                        \)
                        \stopTextSpan
                        ]
                        d'4
                        \p
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
                        d'16
                        [
                        d'16
                        \ffff
                        \)
                        \stopTextSpan
                        \revert Staff.Stem.stemlet-length
                        c'8
                        ]
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
                        r2.
                        r1
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
                            af''32 * 115/32
                            - \open
                            - \tweak circled-tip ##t
                            \<
                            \glissando
                            \(
                            aqf''32 * 91/32
                            - \stopped
                            \glissando
                            gqs''32 * 35/16
                            - \open
                            \glissando
                            af''32 * 29/16
                            \mf
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
                            a''32 * 43/32
                            - \stopped
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            aqs''32 * 51/32
                            - \open
                            \glissando
                            aqf''32 * 65/32
                            - \stopped
                            \glissando
                            af''32 * 85/32
                            - \open
                            \)
                            \glissando
                            r32 * 25/8
                            \!
                            ]
                        }
                        \revert TupletNumber.text
                        r8
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                    a''8.
                    :64
                    \ff
                    \boxed-markup "Rapid hand changes, fluttering valves, fluttertongue" 1
                    r16
                    r16
                    b'8.
                    :64
                    ~
                    b'4
                    :32
                    bf''2
                    :32
                    ~
                    bf''16
                    :128
                    r8.
                    r16
                    cs''8.
                    :64
                    \>
                    ~
                    cs''16
                    :128
                    r16
                    r16
                    c'''16
                    :128
                    ~
                    c'''4
                    :32
                    a''8.
                    :64
                    \pp
                    r16
                    r2
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
                        \pitchedTrill
                        eqf''4
                        \ff
                        ~
                        \startTrillSpan eqs''
                        \override Staff.Stem.stemlet-length = 0.75
                        eqf''16
                        \stopTrillSpan
                        [
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        a''8.
                        ]
                        \startTrillSpan bf''
                        r8
                        \stopTrillSpan
                        \pitchedTrill
                        dqf''8
                        ~
                        \startTrillSpan dqs''
                        dqf''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        dqf''16
                        \stopTrillSpan
                        [
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        gqf''8.
                        ~
                        ]
                        \startTrillSpan gqs''
                        gqf''4
                        \>
                        ~
                        gqf''8
                        \stopTrillSpan
                        r8
                        r8
                        \pitchedTrill
                        d''8
                        ~
                        \startTrillSpan ef''
                        d''8
                        \pp
                        \stopTrillSpan
                        r8
                        r2.
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
                        \clef "treble"
                        r8
                        bf''8
                        :64
                        \ff
                        ~
                        \boxed-markup "Rapidly switch between 1st and 7th, fluttertongue" 1
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
                        \>
                        ~
                        bf''8
                        :64
                        r8
                        \clef "bass"
                        e4
                        :32
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e16
                        :128
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        bf''8.
                        :64
                        \pp
                        ]
                        r2.
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
                        e,,4
                        \ffff
                        - \accent
                        ~
                        \boxed-markup "Overblow" 1
                        \override Staff.Stem.stemlet-length = 0.75
                        e,,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        e,,16
                        - \accent
                        ~
                        ]
                        e,,4
                        ~
                        e,,4
                        r4
                        e,,4
                        - \accent
                        r8
                        e,,8
                        - \accent
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        e,,16
                        - \accent
                        ~
                        ]
                        e,,8
                        r8
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
                        \set Staff.instrumentName =
                        \markup { Piano }
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r2.
                        r1
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        \p
                        \<
                        [
                        \(
                        \revert Staff.Stem.stemlet-length
                        c'''8.
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''16
                        [
                        f'''16
                        \revert Staff.Stem.stemlet-length
                        ef'''8
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''8
                        \mp
                        ~
                        [
                        \(
                        b'''32
                        \revert Staff.Stem.stemlet-length
                        fs'''16.
                        ~
                        ]
                        fs'''8
                        \)
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g'''32
                            \f
                            [
                            \(
                            d'''32
                            cs'''32
                            ef'''16
                            af'''32
                            \revert Staff.Stem.stemlet-length
                            ef'''32
                            \)
                            ]
                        }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r2.
                        r1
                        r2.
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a,32
                            [
                            \(
                            g,32
                            ef32
                            bf,16
                            b,32
                            \revert Staff.Stem.stemlet-length
                            fs,32
                            \)
                            ]
                        }
                        f,8
                        ~
                        f,8
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            g,32
                            [
                            \(
                            c16.
                            g,32
                            \revert Staff.Stem.stemlet-length
                            g,32
                            \)
                            ]
                        }
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
                    r2.
                    r1
                    r4
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        b8
                        \p
                        \<
                        [
                        \(
                        cs'8
                        g8
                        \revert Staff.Stem.stemlet-length
                        fs8
                        ]
                        af4
                        cs'8
                        \)
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    af8
                    \mp
                    [
                    \(
                    \revert Staff.Stem.stemlet-length
                    af8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af32
                    [
                    \revert Staff.Stem.stemlet-length
                    g16.
                    \)
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        af32
                        \f
                        [
                        \(
                        af32
                        bf32
                        f16
                        \revert Staff.Stem.stemlet-length
                        b32
                        \)
                        ]
                    }
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                    r2.
                    r1
                    r2.
                    r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
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
                        r2.
                        r1
                        r2.
                        r2
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
