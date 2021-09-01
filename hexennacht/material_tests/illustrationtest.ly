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
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [flute voice measure 1]
                            <aqs' a'' b'' f'''>8
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four six)) (lh . (b)) (rh . (cis)))}
                            <aqs' a'' b'' f'''>8
                            <aqs' a'' b'' f'''>8
                        }
                        r2
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            <f'' dqf'''>4.
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three four)) (lh . (b)) (rh . (d ees)))}
                            <f'' dqf'''>8
                            <f'' dqf'''>8
                        }
                        r8
                        \times 2/3
                        {
                            <bqs' cs'''>16
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                            <bqs' cs'''>4
                            <bqs' cs'''>16
                        }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [oboe voice measure 1]
                            gqs''8
                            gqs''8
                            gqs''8
                        }
                        r2
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            b''4.
                            b''8
                            b''8
                        }
                        r8
                        \times 2/3
                        {
                            f''16
                            f''4
                            f''16
                        }
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bass clarinet voice measure 1]
                        r4.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6
                        {
                            <gqs' f'''>4.
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                            <gqs' f'''>8.
                            <gqs' f'''>8.
                        }
                        r4
                        <fqs' aqf'''>4
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                        <fqs' aqf'''>4
                        <fqs' aqf'''>4
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bassoon voice measure 1]
                        r2.
                        \times 2/3
                        {
                            \clef "bass"
                            <c d e>8
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                            <c d e>2
                            <c d e>8
                        }
                        r8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 20/21
                        {
                            <cqs, fs, c gqs>4.
                            ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                            <cqs, fs, c gqs>16.
                            <cqs, fs, c gqs>8.
                        }
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
                        r4.
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''2
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''8
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \double-flat-one-syntonic-comma-up  }
                        eff''4
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        a''8
                        ^ \markup \center-align { -46 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        a''16
                        ^ \markup \center-align { -46 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        a''16
                        ^ \markup \center-align { -46 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [violin 2 voice measure 1]
                        r4.
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        cf'2
                        ^ \markup \center-align { +14 }
                        ^ \markup \center-align { +16 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        cf'8
                        ^ \markup \center-align { +14 }
                        ^ \markup \center-align { +16 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        cf'4
                        ^ \markup \center-align { +14 }
                        ^ \markup \center-align { +16 }
                        r2
                        c''8
                        ^ \markup \center-align +33
                        c''16
                        ^ \markup \center-align +33
                        c''16
                        ^ \markup \center-align +33
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [viola voice measure 1]
                        r4.
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        ff''2
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        ff''8
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \flat-one-syntonic-comma-up  }
                        ff''4
                        ^ \markup \center-align { -31 }
                        ^ \markup \center-align { -17 }
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        f''8
                        ^ \markup \center-align { -46 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        f''16
                        ^ \markup \center-align { -46 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        f''16
                        ^ \markup \center-align { -46 }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [cello voice measure 1]
                        r4.
                        \clef "bass"
                        af2
                        ^ \markup \center-align { +16 }
                        ^ \markup \center-align +33
                        af8
                        ^ \markup \center-align { +16 }
                        ^ \markup \center-align +33
                        af4
                        ^ \markup \center-align { +16 }
                        ^ \markup \center-align +33
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        g8
                        ^ \markup \center-align { -2 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        g16
                        ^ \markup \center-align { -2 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        g16
                        ^ \markup \center-align { -2 }
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