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
                        \times 4/5
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [piano 1 voice measure 1]
                            e'16
                            fs'16
                            g'16
                            bf'16
                            af'16
                        }
                        af'4
                        e'4
                        ~
                        e'16
                        bf'4..
                        c'4
                        ~
                        c'16
                        bf'8.
                        \times 2/3
                        {
                            bf'16
                            b'8.
                            e'16
                            af'16
                        }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [piano 2 voice measure 1]
                        r4
                        \times 4/7
                        {
                            g'8.
                            a'16
                            fs'8
                            af'16
                        }
                        f'4
                        f'4
                        ~
                        f'16
                        g'4..
                        \times 2/3
                        {
                            ef'8
                            e'8
                            fs'4
                            g'8
                            bf'8
                        }
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
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                    }
                }
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 5"
            <<
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                    }
                }
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
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}