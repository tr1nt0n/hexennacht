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
            \time 4/4
            s1 * 1
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \tempo 4=105
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
                        r4
                        r8
                        <bf' aqs'' f'''>8
                        \pp
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four)) (lh . (b)) (rh . (ees)))}
                        ~
                        <bf' aqs'' f'''>4
                        r8
                        r2
                        r8
                        <bqs' cs'''>8
                        \p
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                        ~
                        <bqs' cs'''>8
                        r8
                        r2.
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        \ff
                        - \accent
                        [
                        \(
                        g'''32
                        af'''32
                        bf'''32
                        ef'''32
                        af'''32
                        c'''32
                        af'''32
                        g'''32
                        e'''32
                        f'''32
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        \)
                        ]
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        - \accent
                        [
                        \(
                        c'''32
                        b'''32
                        bf'''32
                        fs'''32
                        bf'''32
                        g'''32
                        \revert Staff.Stem.stemlet-length
                        b'''32
                        \)
                        ]
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''32
                        - \accent
                        [
                        \(
                        e'''32
                        cs'''32
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        [
                        g'''32
                        af'''32
                        a'''32
                        ef'''32
                        fs'''32
                        ef'''32
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        \)
                        ]
                        r4
                        r2..
                        r2.
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r4
                        r8
                        c''8
                        \pp
                        ~
                        c''4
                        r8
                        r2
                        r8
                        f''8
                        \p
                        ~
                        f''8
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
                            gqs''32 * 99/32
                            \pp
                            - \stopped
                            \(
                            \glissando
                            af''32 * 69/32
                            - \stopped
                            \glissando
                            a''32 * 13/8
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
                            aqs''32 * 43/32
                            - \stopped
                            \(
                            \glissando
                            aqf''32 * 51/32
                            - \stopped
                            \glissando
                            af''32 * 65/32
                            - \stopped
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
                                        c'2..
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
                            gqs''32 * 3/2
                            \ff
                            - \accent
                            - \open
                            \(
                            \glissando
                            \boxed-markup "Overblow" 1
                            af''32 * 25/16
                            \glissando
                            a''32 * 53/32
                            \glissando
                            aqs''32 * 29/16
                            \glissando
                            aqf''32 * 63/32
                            \glissando
                            af''32 * 71/32
                            \glissando
                            aqf''32 * 5/2
                            \glissando
                            gqs''32 * 91/32
                            \glissando
                            af''32 * 51/16
                            \glissando
                            a''32 * 7/2
                            \)
                            r32 * 15/4
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
                            aqs''32 * 115/32
                            - \accent
                            \(
                            \glissando
                            aqf''32 * 103/32
                            \glissando
                            af''32 * 11/4
                            \glissando
                            aqf''32 * 37/16
                            \glissando
                            gqs''32 * 2
                            \glissando
                            af''32 * 7/4
                            \glissando
                            a''32 * 13/8
                            \glissando
                            aqs''32 * 49/32
                            \)
                            r32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                        r2..
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
                        <e' cs'''>4
                        \pp
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                        ~
                        \boxed-markup "Norm." 1
                        <e' cs'''>16
                        r8.
                        r4
                        r1
                        <fqs' aqf'''>4
                        \ff
                        - \marcato
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                        <fqs' aqf'''>8
                        - \marcato
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <fqs' aqf'''>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <fqs' aqf'''>8
                        - \marcato
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fqs' aqf'''>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <fqs' aqf'''>8
                        - \marcato
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fqs' aqf'''>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <fqs' aqf'''>8
                        - \marcato
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fqs' aqf'''>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <fqs' aqf'''>8
                        - \marcato
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        <fqs' aqf'''>8
                        [
                        \revert Staff.Stem.stemlet-length
                        <fqs' aqf'''>8
                        - \marcato
                        ]
                        r2..
                        r2.
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
                        <cqs fs af>4
                        \pp
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}
                        ~
                        <cqs fs af>16
                        r8.
                        \times 2/3
                        {
                            e,4
                            \ppp
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            fs,16
                            [
                            \revert Staff.Stem.stemlet-length
                            g,16
                            \)
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,8
                            [
                            \(
                            \revert Staff.Stem.stemlet-length
                            af,8
                            \)
                            ]
                            af,4.
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            e,8
                            [
                            \revert Staff.Stem.stemlet-length
                            bf,8
                            \)
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c,8
                            [
                            \(
                            bf,8
                            \)
                            bf,16
                            \(
                            b,16
                            \revert Staff.Stem.stemlet-length
                            e,16
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            af,4
                            \<
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            g,16
                            [
                            \revert Staff.Stem.stemlet-length
                            a,16
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            fs,4.
                            \ff
                            - \accent
                            \(
                            \boxed-markup "Overblow" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            af,8
                            [
                            \revert Staff.Stem.stemlet-length
                            f,8
                            \)
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            f,16
                            - \accent
                            [
                            \(
                            g,16
                            ef,16
                            e,8
                            fs,16
                            \revert Staff.Stem.stemlet-length
                            g,16
                            \)
                            ]
                        }
                        \times 4/7
                        {
                            bf,4
                            - \accent
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,16
                            [
                            af,16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            af,16
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            e,2
                            - \accent
                            \(
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,8
                            [
                            \revert Staff.Stem.stemlet-length
                            c,8
                            \)
                            ]
                        }
                        r2..
                        r2.
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
                    r2.
                    r8
                    b'8
                    :64
                    \mf
                    ~
                    \boxed-markup "Fluttering valves, fluttertongue" 1
                    b'8
                    :64
                    r8
                    bf''8
                    :64
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    bf''8.
                    :64
                    [
                    \revert Staff.Stem.stemlet-length
                    cs''16
                    :128
                    ~
                    ]
                    cs''8
                    :64
                    r8
                    c'''4
                    :32
                    ~
                    c'''8.
                    :64
                    r16
                    r4
                    r2..
                    r2.
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
                        r2
                        r8
                        \pitchedTrill
                        a''8
                        \mp
                        ~
                        \startTrillSpan bf''
                        a''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a''16
                        [
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        \pitchedTrill
                        dqf''16
                        \stopTrillSpan
                        ~
                        ]
                        \startTrillSpan dqs''
                        dqf''4
                        ~
                        dqf''4
                        r4
                        \stopTrillSpan
                        \pitchedTrill
                        gqf''4
                        \startTrillSpan gqs''
                        r8
                        \stopTrillSpan
                        \pitchedTrill
                        d''8
                        ~
                        \startTrillSpan ef''
                        d''8.
                        r16
                        \stopTrillSpan
                        r2..
                        r2.
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
                        g,4
                        \mf
                        - \accent
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,16
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ~
                        ]
                        af,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        a,16
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        a,16
                        ~
                        ]
                        a,4
                        r2..
                        r2.
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
                        r4
                        af,4
                        \ppp
                        \<
                        e,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        ~
                        ]
                        bf,4
                        c,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c,16
                        [
                        \revert Staff.Stem.stemlet-length
                        bf,8.
                        ]
                        e,,4.
                        \mp
                        - \accent
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,,16
                        [
                        \revert Staff.Stem.stemlet-length
                        e,,8.
                        - \accent
                        ~
                        ]
                        e,,4
                        ~
                        e,,8
                        r8
                        r8
                        e,,8
                        - \accent
                        ~
                        e,,8
                        r8
                        r2..
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
                        \set Staff.shortInstrumentName =
                        \markup { pno. }
                        r4
                        \f
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        - \tenuto
                        [
                        \(
                        b'16
                        \revert Staff.Stem.stemlet-length
                        b'16
                        \)
                        ]
                        cs''4
                        - \accent
                        af'8
                        - \accent
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        d''16
                        - \accent
                        ~
                        ]
                        d''4
                        \mp
                        \<
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af'8
                            - \tenuto
                            [
                            \(
                            a'16
                            b'16
                            e''16
                            b'16
                            \revert Staff.Stem.stemlet-length
                            af'16
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [
                        f''16
                        ~
                        f''16
                        \revert Staff.Stem.stemlet-length
                        ef''16
                        \)
                        ]
                        cs''4
                        \fff
                        - \accent
                        a''4
                        - \accent
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e''16
                            - \tenuto
                            - \tweak circled-tip ##t
                            \>
                            [
                            \(
                            f''8
                            c''16
                            b'16
                            cs''16
                            \revert Staff.Stem.stemlet-length
                            fs''16
                            \!
                            \)
                            ]
                        }
                        r2..
                        r2.
                        r2..
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
                            - \accent
                            ^ \markup {
                                \italic
                                    Con
                                \italic
                                    fuoco
                                }
                            a4
                            - \accent
                            g4
                            - \accent
                        }
                        f4.
                        - \accent
                        - \tenuto
                        ~
                        \(
                        \override Staff.Stem.stemlet-length = 0.75
                        f8
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        \)
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af8.
                            - \tenuto
                            [
                            \(
                            a16
                            e8
                            \revert Staff.Stem.stemlet-length
                            ef16
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        e32
                        [
                        a16
                        e32
                        ~
                        e16
                        e32
                        \revert Staff.Stem.stemlet-length
                        ef32
                        \)
                        ]
                        e2
                        - \accent
                        e4
                        - \accent
                        \override Staff.Stem.stemlet-length = 0.75
                        fs32
                        - \tenuto
                        [
                        \(
                        cs32
                        g16
                        cs16.
                        \revert Staff.Stem.stemlet-length
                        d32
                        \)
                        ]
                        r2..
                        r2.
                        r2..
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
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        \f
                        _ \markup {
                            \italic
                                Con
                            \italic
                                fuoco
                            }
                        [
                        \(
                        ef'16
                        d'16
                        ef'16
                        af'16
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \)
                        ]
                    }
                    ef''4
                    - \accent
                    ef'4
                    - \accent
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [
                    \revert Staff.Stem.stemlet-length
                    ef''16
                    - \accent
                    ~
                    ]
                    ef''4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''8
                    [
                    \revert Staff.Stem.stemlet-length
                    ef'8
                    - \accent
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    \mp
                    \<
                    ]
                    \(
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [
                        g'16
                        cs'16
                        d'8.
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        ]
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [
                    fs'32
                    cs'32
                    \)
                    \revert Staff.Stem.stemlet-length
                    af8
                    \fff
                    - \accent
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af8
                    [
                    \revert Staff.Stem.stemlet-length
                    ef''8
                    - \accent
                    ]
                    \times 2/3
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        - \tweak circled-tip ##t
                        \>
                        [
                        \(
                        cs'8.
                        af'16
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        \!
                        \)
                        ]
                    }
                    r2..
                    r2.
                    r2..
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
                        r2
                        r8
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''32
                        \ppp
                        [
                        \(
                        \boxed-markup "w/ drumsticks, pitches approx." 1
                        e'''32
                        cs'''32
                        \revert Staff.Stem.stemlet-length
                        fs'''32
                        \)
                        ]
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        [
                        \(
                        g'''32
                        af'''32
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        [
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        \)
                        ]
                        r8.
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''32
                        \<
                        [
                        \(
                        af'''32
                        g'''32
                        e'''32
                        f'''32
                        bf'''32
                        ef'''32
                        \revert Staff.Stem.stemlet-length
                        c'''32
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''32
                        \ff
                        [
                        \(
                        bf'''32
                        fs'''32
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        \)
                        ]
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''32
                        [
                        \(
                        b'''32
                        d'''32
                        e'''32
                        cs'''32
                        af'''32
                        ef'''32
                        \revert Staff.Stem.stemlet-length
                        g'''32
                        \)
                        ]
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''32
                        [
                        \(
                        a'''32
                        ef'''32
                        \revert Staff.Stem.stemlet-length
                        fs'''32
                        \)
                        ]
                        r8
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        [
                        \(
                        af'''32
                        d'''32
                        f'''32
                        ef'''32
                        f'''32
                        ef'''32
                        \revert Staff.Stem.stemlet-length
                        g'''32
                        \)
                        ]
                        r2..
                        r2.
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
                        r4
                        r8
                        \tweak Accidental.transparent ##t
                        e'8
                        \pp
                        \boxed-markup "Cup gear w/ hand" 1
                        r4
                        r4
                        r8
                        \tweak Accidental.transparent ##t
                        a8
                        r8
                        \tweak Accidental.transparent ##t
                        e'8
                        r4
                        r2..
                        r2.
                        r2..
                        r2.
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
                        \tweak Accidental.transparent ##t
                        c'4
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \boxed-markup "Ride cymbal, w/ bow" 1
                        \tweak Accidental.transparent ##t
                        c'8
                        \pp
                        - \tweak circled-tip ##t
                        \>
                        [
                        ~
                        \tweak Accidental.transparent ##t
                        c'8
                        \!
                        ]
                    }
                    r8
                    r4
                    \times 4/7
                    {
                        \tweak Accidental.transparent ##t
                        c'2
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.transparent ##t
                        c'8
                        \pp
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.transparent ##t
                        c'4
                        \!
                    }
                    r4
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        \tweak Accidental.transparent ##t
                        c'8
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.transparent ##t
                        c'2
                        \ff
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.transparent ##t
                        c'8
                        \!
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \tweak Accidental.transparent ##t
                        c'2
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.transparent ##t
                        c'8
                        \ff
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.transparent ##t
                        c'4
                        \!
                    }
                    r2..
                    r2.
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
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \boxed-markup "Norm." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8.
                        \pp
                        ^ \markup \center-align { -17 }
                        - \tweak circled-tip ##t
                        \>
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''16
                        ^ \markup \center-align { -17 }
                        ~
                        ]
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8
                        \!
                        r8
                        r4
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''4
                        ^ \markup \center-align { +34 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        \pp
                        ^ \markup \center-align { +34 }
                        - \tweak circled-tip ##t
                        \>
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        \!
                        ^ \markup \center-align { +34 }
                        ]
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \fff
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
                        \fff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        \fff
                        - \downbow
                        - \accent
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        - \upbow
                        ]
                        \times 2/3
                        {
                            \tweak style #'cross
                            g8
                            \fff
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
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \fff
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        g8
                        \fff
                        - \downbow
                        - \accent
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak style #'cross
                        g8
                        \mp
                        - \upbow
                        ]
                        r2..
                        r2.
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
                            - \tweak circled-tip ##t
                            \<
                            [
                            ~
                            \boxed-markup "Norm." 1
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            \pp
                            ^ \markup \center-align { +16 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'16
                            \!
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
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            \pp
                            ^ \markup \center-align { -33 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                            bf''4
                            \!
                            ^ \markup \center-align { -33 }
                        }
                        r4
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            [
                            \boxed-markup "OP" 1
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g32
                            \mp
                            - \upbow
                            ]
                            ~
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g32
                            [
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            [
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            \tweak style #'cross
                            g16
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g32
                            \fff
                            - \downbow
                            - \accent
                            ]
                            ~
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g32
                            \mp
                            - \upbow
                            [
                            \tweak style #'cross
                            g16
                            - \upbow
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g16
                            - \upbow
                            [
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g32
                            \fff
                            - \downbow
                            - \accent
                            ]
                            ~
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g32
                            [
                            \tweak style #'cross
                            g16
                            - \upbow
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            ]
                        }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            g16
                            - \upbow
                            [
                            \tweak style #'cross
                            g16
                            \fff
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g16
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g32
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
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \fff
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
                            \fff
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
                            \fff
                            - \downbow
                            - \accent
                            \tweak style #'cross
                            g8
                            \mp
                            - \upbow
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            g8
                            \fff
                            - \downbow
                            - \accent
                            ]
                        }
                        r2..
                        r2.
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
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16
                        ^ \markup \center-align { -17 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        [
                        \boxed-markup "Norm." 1
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf32
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        \pp
                        ^ \markup \center-align { -17 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        ]
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf32
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        gf16.
                        \!
                        ^ \markup \center-align { -17 }
                        ]
                        r8
                        r4
                        \times 4/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'4.
                            ^ \markup \center-align { +34 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            \pp
                            ^ \markup \center-align { +34 }
                            - \tweak circled-tip ##t
                            \>
                            [
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            \!
                            ^ \markup \center-align { +34 }
                            ]
                        }
                        r4
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c8
                            \fff
                            - \downbow
                            - \accent
                            [
                            \boxed-markup "OP" 1
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c16
                            \mp
                            - \upbow
                            ]
                            ~
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c8
                            \fff
                            - \downbow
                            - \accent
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c8
                            \mp
                            - \upbow
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c16
                            \fff
                            - \downbow
                            - \accent
                            ]
                            ~
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c8
                            - \upbow
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c16
                            \fff
                            - \downbow
                            - \accent
                            ]
                            ~
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c8
                            \mp
                            - \upbow
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'cross
                            c8
                            - \upbow
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'cross
                            c16
                            \fff
                            - \downbow
                            - \accent
                            ]
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
                        r2..
                        r2.
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
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "Norm." 1
                            af16
                            \pp
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \>
                            [
                            ~
                            af8
                            \!
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
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'2
                            \pp
                            ^ \markup \center-align { -16 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            d'8
                            \!
                            ^ \markup \center-align { -16 }
                        }
                        r4
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak style #'cross
                        c,8
                        \fff
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
                        \fff
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
                        \fff
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
                        \fff
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
                        \fff
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
                        \fff
                        - \downbow
                        - \accent
                        ]
                        r2..
                        r2.
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
                        r4
                        a,4
                        \ppp
                        \<
                        ~
                        \boxed-markup "Ord." 1
                        \override Staff.Stem.stemlet-length = 0.75
                        a,16
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8.
                        ~
                        ]
                        f,4
                        b,4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,16
                        [
                        \revert Staff.Stem.stemlet-length
                        cs,8.
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs,16
                        [
                        \revert Staff.Stem.stemlet-length
                        b,8.
                        ~
                        ]
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { Norm \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { Slight OP }
                        - \tweak staff-padding 3
                        \startTextSpan
                        b,4
                        b,8
                        \f
                        - \accent
                        \stopTextSpan
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c16
                        ~
                        ]
                        c4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f,8
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ]
                        r2..
                        r2.
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
