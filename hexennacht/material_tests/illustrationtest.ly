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
            \context Staff = "horn staff"
            {
                \context Voice = "horn voice"
                {
                }
            }
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                    }
                }
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
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                }
            }
            \context PianoStaff = "sub group 4"
            <<
                \context Staff = "marimba staff"
                {
                    \context Voice = "marimba voice"
                    {
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
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
                    c'8
                    c'8
                    c'8
                    c'8
                    \times 2/3
                    {
                        c'8
                        c'8
                        c'8
                    }
                    c'8
                    c'8
                    c'8
                    c'8
                    \times 2/3
                    {
                        c'8
                        c'8
                        c'8
                    }
                    c'8
                    c'8
                    c'8
                    c'8
                }
            }
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [violin 1 voice measure 1]
                            cqs''2
                            ef''4
                        }
                        fqs''8.
                        fs''16
                        \times 2/3
                        {
                            cqs''8
                            ef''8
                            dqs''8
                        }
                        \times 4/5
                        {
                            f''4
                            gqf''16
                        }
                        \times 4/6
                        {
                            fs''8
                            ~
                            fs''32
                            gqs''32
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/9
                        {
                            bf''2...
                            bqf''8.
                        }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \times 4/7
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [violin 2 voice measure 1]
                            g8
                            g8
                            g8
                            g16
                        }
                        \times 4/7
                        {
                            g16
                            g8
                            g8
                            g8
                        }
                        \times 4/7
                        {
                            g8
                            g8
                            g8
                            g16
                        }
                        \times 4/7
                        {
                            g16
                            g8
                            g8
                            g8
                        }
                        \times 4/7
                        {
                            g8
                            g8
                            g8
                            g16
                        }
                        \times 4/7
                        {
                            g16
                            g8
                            g8
                            g8
                        }
                        \times 4/7
                        {
                            g8
                            g8
                            g8
                            g16
                        }
                        \times 4/7
                        {
                            g16
                            g8
                            g8
                            g8
                        }
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [viola voice measure 1]
                            \clef "alto"
                            c4
                            c8
                        }
                        \times 2/3
                        {
                            c8
                            c4
                        }
                        \times 2/3
                        {
                            c4
                            c8
                        }
                        \times 2/3
                        {
                            c8
                            c4
                        }
                        \times 2/3
                        {
                            c4
                            c8
                        }
                        \times 2/3
                        {
                            c8
                            c4
                        }
                        \times 2/3
                        {
                            c4
                            c8
                        }
                        \times 2/3
                        {
                            c8
                            c4
                        }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [cello voice measure 1]
                        \clef "bass"
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                        c,8
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}