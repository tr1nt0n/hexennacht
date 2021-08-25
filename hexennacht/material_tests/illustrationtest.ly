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
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]
            \time 2/1
            s1 * 2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "horn staff"
                {
                    \context Voice = "horn voice"
                    {
                    }
                }
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                    }
                }
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                    }
                }
                \context Staff = "harp staff"
                {
                    \context Voice = "harp voice"
                    {
                    }
                }
            >>
            \context Staff = "percussion 1 staff"
            {
                \context Voice = "percussion 1 voice"
                {
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                    }
                }
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
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
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [violin 1 voice measure 1]
                            \once \override Beam.grow-direction = #left
                            \override Staff.Stem.stemlet-length = 0.75
                            r32 * 3/2
                            [
                            af''32
                            aqf''32
                            gqs''32
                            af''32
                            a''32
                            \revert Staff.Stem.stemlet-length
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
                            \override Staff.Stem.stemlet-length = 0.75
                            r32 * 15/4
                            [
                            aqs''32
                            aqf''32
                            af''32
                            aqf''32
                            gqs''32
                            af''32
                            a''32
                            aqs''32
                            \revert Staff.Stem.stemlet-length
                            r32 * 47/32
                            ]
                        }
                        \revert TupletNumber.text
                    }
                }
            >>
            \context PianoStaff = "sub group 6"
            <<
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                    }
                }
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}