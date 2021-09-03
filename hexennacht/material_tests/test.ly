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
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [flute voice measure 1]
                        r2
                        ^ \markup { 0 }
                        r8
                        ^ \markup { 1 }
                        \times 4/7
                        {
                            c'8.
                            ^ \markup { 2 }
                            c'16.
                            ^ \markup { 3 }
                            c'16.
                            ^ \markup { 4 }
                            c'16.
                            ^ \markup { 5 }
                            c'16.
                            ^ \markup { 6 }
                            c'16.
                            ^ \markup { 7 }
                        }
                        c'4
                        ^ \markup { 8 }
                        ~
                        c'16
                        ^ \markup { 9 }
                        c'16
                        ^ \markup { 10 }
                        c'8.
                        ^ \markup { 11 }
                        c'16
                        ^ \markup { 12 }
                        c'8
                        ^ \markup { 13 }
                        \times 2/3
                        {
                            c'16
                            ^ \markup { 14 }
                            c'16
                            ^ \markup { 15 }
                            c'16
                            ^ \markup { 16 }
                            c'16
                            ^ \markup { 17 }
                            c'8
                            ^ \markup { 18 }
                        }
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
                            % [oboe voice measure 1]
                            \once \override Beam.grow-direction = #right
                            \override Staff.Stem.stemlet-length = 0.75
                            r16 * 63/32
                            ^ \markup { 0 }
                            [
                            af''16
                            ^ \markup { 1 }
                            aqf''16
                            ^ \markup { 2 }
                            gqs''16
                            ^ \markup { 3 }
                            af''16
                            ^ \markup { 4 }
                            \revert Staff.Stem.stemlet-length
                            r16 * 13/16
                            ^ \markup { 5 }
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
                            \override Staff.Stem.stemlet-length = 0.75
                            r16 * 43/64
                            ^ \markup { 6 }
                            [
                            a''16
                            ^ \markup { 7 }
                            aqs''16
                            ^ \markup { 8 }
                            \revert Staff.Stem.stemlet-length
                            r16 * 3/2
                            ^ \markup { 9 }
                            ]
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup { 10 }
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
                            \override Staff.Stem.stemlet-length = 0.75
                            r16 * 5/8
                            ^ \markup { 11 }
                            [
                            aqf''16
                            ^ \markup { 12 }
                            af''16
                            ^ \markup { 13 }
                            aqf''16
                            ^ \markup { 14 }
                            gqs''16
                            ^ \markup { 15 }
                            \revert Staff.Stem.stemlet-length
                            r16 * 25/16
                            ^ \markup { 16 }
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
                            \override Staff.Stem.stemlet-length = 0.75
                            r16 * 63/32
                            ^ \markup { 17 }
                            [
                            af''16
                            ^ \markup { 18 }
                            a''16
                            ^ \markup { 19 }
                            aqs''16
                            ^ \markup { 20 }
                            aqf''16
                            ^ \markup { 21 }
                            \revert Staff.Stem.stemlet-length
                            r16 * 13/16
                            ^ \markup { 22 }
                            ]
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bass clarinet voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bassoon voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
            >>
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [horn voice measure 1]
                    r1
                    ^ \markup { 0 }
                    r1
                    ^ \markup { 1 }
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [trumpet voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tenor trombone voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tuba voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [piano 1 voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [piano 2 voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [harp voice measure 1]
                    r1
                    ^ \markup { 0 }
                    r1
                    ^ \markup { 1 }
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [marimba voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [percussion 1 voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
            >>
            \context Staff = "percussion 2 staff"
            {
                \context Voice = "percussion 2 voice"
                {
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [percussion 2 voice measure 1]
                    r1
                    ^ \markup { 0 }
                    r1
                    ^ \markup { 1 }
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [violin 1 voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [violin 2 voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [viola voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [cello voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [contrabass voice measure 1]
                        r1
                        ^ \markup { 0 }
                        r1
                        ^ \markup { 1 }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
