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
            \tempo 4=105
            \time 4/4
            s1 * 1
            \time 3/8
            s1 * 3/8
            \time 5/4
            s1 * 5/4
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 1/8
            s1 * 1/8
            \time 3/4
            s1 * 3/4
            \time 3/8
            s1 * 3/8
            \time 2/4
            s1 * 1/2
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { fl. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { ob. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                        \once \override Beam.grow-direction = #left
                                        r32 * 3/2
                                        [
                                        af''32 * 25/16
                                        \fp
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \(
                                        \glissando
                                        aqf''32 * 7/4
                                        - \open
                                        \glissando
                                        gqs''32 * 65/32
                                        - \stopped
                                        \glissando
                                        af''32 * 79/32
                                        - \open
                                        \glissando
                                        a''32 * 49/16
                                        - \stopped
                                        \)
                                        r32 * 29/8
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
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        [
                                        aqs''32 * 99/32
                                        - \open
                                        \(
                                        \glissando
                                        aqf''32 * 69/32
                                        - \stopped
                                        \glissando
                                        af''32 * 13/8
                                        \f
                                        - \open
                                        \)
                                        r32 * 47/32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r8
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                        \once \override Beam.grow-direction = #left
                                        r32 * 3/2
                                        [
                                        aqf''32 * 25/16
                                        \fp
                                        - \stopped
                                        - \tweak circled-tip ##t
                                        \>
                                        \(
                                        \glissando
                                        gqs''32 * 7/4
                                        - \open
                                        \glissando
                                        af''32 * 65/32
                                        - \stopped
                                        \glissando
                                        a''32 * 79/32
                                        - \open
                                        \glissando
                                        aqs''32 * 49/16
                                        \!
                                        - \stopped
                                        \)
                                        r32 * 29/8
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
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        [
                                        aqf''32 * 115/32
                                        - \open
                                        \(
                                        \glissando
                                        af''32 * 91/32
                                        - \stopped
                                        \glissando
                                        aqf''32 * 35/16
                                        - \open
                                        \glissando
                                        gqs''32 * 29/16
                                        \f
                                        - \stopped
                                        \)
                                        r32 * 13/8
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { bcl. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r2.
                                    \times 2/3
                                    {
                                        gs'2
                                        \fff
                                        - \marcato
                                        \(
                                        \boxed-markup "Overblow" 1
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        - \marcato
                                        [
                                        \(
                                        a'16
                                        f'8.
                                        fs'16
                                        \revert Staff.Stem.stemlet-length
                                        gs'16
                                        \)
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        a'4
                                        - \marcato
                                        \(
                                        c''4
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        \)
                                        [
                                        bf'8
                                        - \marcato
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        fs'8
                                        \)
                                        ]
                                    }
                                    c''2
                                    - \marcato
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    \)
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16.
                                        - \marcato
                                        [
                                        \(
                                        cs''32
                                        \revert Staff.Stem.stemlet-length
                                        fs'32
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        - \marcato
                                        [
                                        \(
                                        a'8
                                        \revert Staff.Stem.stemlet-length
                                        b'8
                                        ]
                                        gs'4
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf'8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        g'8
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        g'4
                                        - \marcato
                                        ~
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'16
                                        [
                                        a'16
                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        \)
                                        ]
                                    }
                                    fs'4
                                    - \marcato
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gs'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a'16
                                    \)
                                    ]
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16
                                        - \marcato
                                        [
                                        \(
                                        bf'16
                                        \)
                                        bf'8.
                                        - \marcato
                                        \(
                                        fs'16
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'8
                                        - \marcato
                                        [
                                        \(
                                        c''8
                                        c''16
                                        cs''16
                                        \revert Staff.Stem.stemlet-length
                                        fs'16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        bf'4
                                        - \marcato
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'16
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        b'16
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        gs'8.
                                        - \marcato
                                        [
                                        \(
                                        bf'16
                                        \revert Staff.Stem.stemlet-length
                                        g'16
                                        \)
                                        ]
                                    }
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \times 4/7
                                    {
                                        \set Staff.shortInstrumentName =
                                        \markup { bsn. }
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        \fff
                                        - \marcato
                                        [
                                        \(
                                        \boxed-markup "Overblow" 1
                                        \revert Staff.Stem.stemlet-length
                                        fs8
                                        ]
                                        g4.
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        af8
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        af4
                                        - \marcato
                                        \(
                                        e4
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        [
                                        c8
                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        \)
                                        ]
                                    }
                                    bf4
                                    - \marcato
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    \)
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/5
                                    {
                                        af2.
                                        - \marcato
                                        \(
                                        g4
                                        a4
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs8
                                        - \marcato
                                        [
                                        \(
                                        af8
                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        \)
                                        ]
                                        f4
                                        - \marcato
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        ef8
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        e4
                                        - \marcato
                                        ~
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                        fs16
                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        \)
                                        ]
                                    }
                                    bf2
                                    - \marcato
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8
                                    \)
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af8
                                    - \marcato
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e8
                                        - \marcato
                                        [
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        ]
                                        c4.
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf8
                                        \)
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        bf8
                                        - \marcato
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b16
                                        - \marcato
                                        [
                                        \(
                                        e16
                                        af32
                                        g32
                                        \revert Staff.Stem.stemlet-length
                                        a32
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        fs2
                                        - \marcato
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        f8
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f8.
                                        - \marcato
                                        [
                                        \(
                                        g16
                                        \revert Staff.Stem.stemlet-length
                                        ef16
                                        \)
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        - \marcato
                                        [
                                        \(
                                        fs16
                                        g16
                                        bf8
                                        af16
                                        \)
                                        \revert Staff.Stem.stemlet-length
                                        af16
                                        - \marcato
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        e4
                                        - \marcato
                                        ~
                                        \(
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                        bf16
                                        \revert Staff.Stem.stemlet-length
                                        c16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        bf4
                                        - \marcato
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        - \marcato
                                        [
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        b16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e16
                                        - \marcato
                                        [
                                        \(
                                        af16
                                        g8.
                                        a16
                                        \revert Staff.Stem.stemlet-length
                                        fs16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af8
                                        - \marcato
                                        [
                                        \(
                                        f8
                                        \)
                                        f16
                                        - \marcato
                                        \(
                                        g16
                                        \revert Staff.Stem.stemlet-length
                                        ef16
                                        \)
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
                            %! applying indicators
                            \set Staff.shortInstrumentName =
                            %! applying indicators
                            \markup { hrn. }
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 5/8
                            R1 * 5/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/8
                            R1 * 1/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/4
                            R1 * 3/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/16
                            R1 * 1/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/8
                            R1 * 3/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            b'16.
                            :256
                            \mf
                            - \accent
                            \<
                            \boxed-markup "Fluttering valves, fluttertongue" 1
                            r32
                            r32
                            bf''16.
                            :256
                            - \accent
                            ~
                            bf''8
                            :64
                            \ff
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { tpt. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \pitchedTrill
                                    gqf''8
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \startTrillSpan gqs''
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    %! applying indicators
                                    \!
                                    %! applying indicators
                                    \stopTrillSpan
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \pitchedTrill
                                    a''16.
                                    \mf
                                    - \accent
                                    \<
                                    \startTrillSpan bf''
                                    r32
                                    \stopTrillSpan
                                    r32
                                    \pitchedTrill
                                    dqf''16.
                                    - \accent
                                    ~
                                    \startTrillSpan dqs''
                                    dqf''8
                                    \ff
                                    r8
                                    \stopTrillSpan
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenor trombone staff"
                            {
                                \context Voice = "tenor trombone voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { tbn. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "bass"
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r8.
                                    ef8.
                                    :64
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \boxed-markup "Fluttertongue, switch rapidly between 1st and 7th" 1
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    %! applying indicators
                                    \!
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    ef16.
                                    :256
                                    \mf
                                    - \accent
                                    \<
                                    r32
                                    r32
                                    \clef "treble"
                                    bf''16.
                                    :256
                                    - \accent
                                    ~
                                    bf''8
                                    :64
                                    \ff
                                    r8
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { tb. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "bass"
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    e,,16.
                                    \mf
                                    - \accent
                                    \<
                                    r32
                                    r32
                                    e,,16.
                                    - \accent
                                    ~
                                    e,,8
                                    \ff
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { pno. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "bass"
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                            %! applying indicators
                            \set Staff.shortInstrumentName =
                            %! applying indicators
                            \markup { harp }
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/2
                            R1 * 1/2
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 5/8
                            R1 * 5/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/8
                            R1 * 1/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/4
                            R1 * 3/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/16
                            R1 * 1/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/8
                            R1 * 3/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 3/16
                            R1 * 3/16
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 1/4
                            R1 * 1/4
                            %! applying cutaway
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { mar. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    \mf
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    a8
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
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    - \accent
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    ]
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak Accidental.transparent ##t
                                        e'8
                                        [
                                        \tweak Accidental.transparent ##t
                                        c'8.
                                        - \accent
                                        \tweak Accidental.transparent ##t
                                        e'16
                                        \tweak Accidental.transparent ##t
                                        a16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak Accidental.transparent ##t
                                        a16
                                        ]
                                    }
                                    \tweak Accidental.transparent ##t
                                    c'4
                                    - \accent
                                    \tweak Accidental.transparent ##t
                                    c'4
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    c'16
                                    :128
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    e'8.
                                    :64
                                    ]
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak Accidental.transparent ##t
                                        a8
                                        [
                                        \tweak Accidental.transparent ##t
                                        e'8
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        \tweak Accidental.transparent ##t
                                        c'8
                                        ]
                                    }
                                    r8
                                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                                    \times 30/21
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak Accidental.transparent ##t
                                        e'8
                                        [
                                        \tweak Accidental.transparent ##t
                                        a8
                                        - \accent
                                        \tweak Accidental.transparent ##t
                                        a16
                                        \tweak Accidental.transparent ##t
                                        c'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak Accidental.transparent ##t
                                        c'16
                                        - \accent
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    ]
                                    \tweak Accidental.transparent ##t
                                    a8
                                    r8
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    c'16
                                    [
                                    \tweak Accidental.transparent ##t
                                    e'16
                                    - \accent
                                    \tweak Accidental.transparent ##t
                                    a16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    e'16
                                    - \accent
                                    ]
                                    \tweak Accidental.transparent ##t
                                    c'4
                                    :32
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak Accidental.transparent ##t
                                        e'8
                                        [
                                        \tweak Accidental.transparent ##t
                                        a8.
                                        - \accent
                                        \tweak Accidental.transparent ##t
                                        a16
                                        \tweak Accidental.transparent ##t
                                        c'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak Accidental.transparent ##t
                                        c'16
                                        ]
                                    }
                                    r8
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    ]
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
                            c'16
                            \mp
                            \<
                            [
                            \boxed-markup "w/ bow, CLB" 1
                            \tweak Accidental.transparent ##t
                            c'16
                            - \accent
                            ~
                            \tweak Accidental.transparent ##t
                            c'32
                            \tweak Accidental.transparent ##t
                            e'32
                            \tweak Accidental.transparent ##t
                            a32
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            e'32
                            ]
                            \tweak Accidental.transparent ##t
                            c'4
                            \f
                            \boxed-markup "Crine" 1
                            \tweak Accidental.transparent ##t
                            e'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a8.
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            a8.
                            \mp
                            \<
                            [
                            \boxed-markup "CLB" 1
                            \tweak Accidental.transparent ##t
                            c'16
                            ~
                            \tweak Accidental.transparent ##t
                            c'32
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16.
                            \f
                            - \accent
                            ]
                            r8
                            \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                            \times 15/18
                            {
                                \tweak Accidental.transparent ##t
                                e'2
                                \boxed-markup "Crine" 1
                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.transparent ##t
                                a8
                                \mp
                                \<
                                [
                                \boxed-markup "CLB" 1
                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.transparent ##t
                                e'8
                                ]
                            }
                            \revert TupletNumber.text
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \tweak Accidental.transparent ##t
                            e'16
                            \tweak Accidental.transparent ##t
                            a16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a16
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \tweak Accidental.transparent ##t
                            c'16
                            \tweak Accidental.transparent ##t
                            e'16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a16
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'16
                            [
                            \tweak Accidental.transparent ##t
                            c'16
                            \tweak Accidental.transparent ##t
                            e'16
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a16
                            \f
                            - \accent
                            ]
                            r8
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8
                            {
                                \tweak Accidental.transparent ##t
                                a4
                                \boxed-markup "Crine" 1
                                \tweak Accidental.transparent ##t
                                c'4.
                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.transparent ##t
                                c'8
                                \mp
                                \<
                                [
                                \boxed-markup "CLB" 1
                                \tweak Accidental.transparent ##t
                                e'8
                                - \accent
                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.transparent ##t
                                a8
                                ]
                            }
                            \tweak Accidental.transparent ##t
                            e'4
                            \f
                            \boxed-markup "Crine" 1
                            \tweak Accidental.transparent ##t
                            c'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            e'8.
                            ]
                            \times 2/3
                            {
                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.transparent ##t
                                a16
                                \mp
                                \<
                                [
                                \boxed-markup "CLB" 1
                                \tweak Accidental.transparent ##t
                                a16
                                - \accent
                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.transparent ##t
                                c'16
                                ]
                            }
                            r8
                            \tweak Accidental.transparent ##t
                            c'8
                            ~
                            \boxed-markup "Crine" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            e'8
                            ~
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            e'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a8
                            ~
                            ]
                            \tweak Accidental.transparent ##t
                            a8
                            \tweak Accidental.transparent ##t
                            e'4
                            \f
                            r8
                            \staff-line-count 1
                            \tweak Accidental.transparent ##t
                            c'8
                            :64
                            \mp
                            \<
                            ~
                            \boxed-markup "Bass drum, w/ mallet in RH and palm in LH" 1
                            \tweak Accidental.transparent ##t
                            c'4
                            :32
                            ~
                            \tweak Accidental.transparent ##t
                            c'2
                            :32
                            \fff
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { vln. 1 }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    cqs'2
                                    \mf
                                    \<
                                    \(
                                    \boxed-markup "Slight OP" 1
                                    ef'4
                                    \)
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/4
                                    {
                                        fqs'4.
                                        \ff
                                        - \tenuto
                                        \>
                                        \(
                                        fs'8
                                    }
                                    \times 2/3
                                    {
                                        cqs'4
                                        \)
                                        ef'4
                                        \mf
                                        \<
                                        \(
                                        dqs'4
                                    }
                                    \times 4/5
                                    {
                                        f'2
                                        \)
                                        gqf'8
                                        \ff
                                        - \tenuto
                                    }
                                }
                            }
                        }
                        \tag #'voice16
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { vln. 2 }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { vla. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "alto"
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
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
                                    \times 2/3
                                    {
                                        \set Staff.shortInstrumentName =
                                        \markup { vc. }
                                        \clef "bass"
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        a'2
                                        ^ \markup \center-align { +14 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~
                                        \boxed-markup "MSP, Molto Flaut." 1
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        a'2
                                        \f
                                        ^ \markup \center-align { +14 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        a'2
                                        \!
                                        ^ \markup \center-align { +14 }
                                    }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r2.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/5
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        g2.
                                        ^ \markup \center-align { +16 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        g4
                                        \f
                                        ^ \markup \center-align { +16 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                                        \tweak style #'harmonic
                                        g4
                                        \!
                                        ^ \markup \center-align { +16 }
                                    }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic
                                    af8
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic
                                    af8
                                    \f
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    ~
                                    ]
                                    \tweak style #'harmonic
                                    af4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic
                                    af8
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic
                                    af8
                                    \!
                                    ^ \markup \center-align +33
                                    ]
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \times 4/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g2
                                        ^ \markup \center-align { -2 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g8
                                        \f
                                        ^ \markup \center-align { -2 }
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        \tweak style #'harmonic
                                        g4
                                        \!
                                        ^ \markup \center-align { -2 }
                                    }
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { cb. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "bass"
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    c8
                                    \mp
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,16
                                    ~
                                    ]
                                    f,4.
                                    a,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8.
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf,8.
                                    ~
                                    ]
                                    bf,4
                                    \ff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
