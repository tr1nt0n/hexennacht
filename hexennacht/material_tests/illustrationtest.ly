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
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]
            \time 4/4
            s1 * 1
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
                        \tempo 4=60
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [flute voice measure 2]
                        r8
                        <bqs' cs'''>8
                        \p
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        <bqs' cs'''>4
                        \!
                        r4
                        <fs' f'' g'' cqs'''>4
                        \mp
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three five six)) (lh . (b)) (rh . (c cis)))}
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [oboe voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [oboe voice measure 2]
                        r8
                        f''8
                        \p
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        f''4
                        \!
                        r4
                        cqs''4
                        \mp
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bass clarinet voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bass clarinet voice measure 2]
                        r4
                        <e' cs'''>4
                        \p
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                        ~
                        <e' cs'''>8
                        r8
                        r8
                        <gqs' f'''>8
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bassoon voice measure 1]
                        \clef "bass"
                        r8
                        <c d e>8
                        \mp
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                        - \tweak stencil #constante-hairpin
                        \<
                        ~
                        <c d e>4
                        r4
                        r4
                        r8
                        <cqs cqs'>8
                        \!
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [bassoon voice measure 2]
                        r1
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
                    r2.
                    r2
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [horn voice measure 2]
                    r1
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
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [trumpet voice measure 2]
                        r1
                    }
                }
                \context Staff = "tenor trombone staff"
                {
                    \context Voice = "tenor trombone voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tenor trombone voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tenor trombone voice measure 2]
                        r1
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tuba voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [tuba voice measure 2]
                        r1
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [piano 1 voice measure 1]
                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            \p
                            \<
                            \(
                            [
                            cs'16
                            \revert Staff.Stem.stemlet-length
                            ef'16
                            \)
                            ]
                        }
                        af'8
                        \mf
                        ~
                        \(
                        af'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af'8
                        [
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        \p
                        \)
                        ]
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) "16")
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c'8.
                            \f
                            \>
                            \(
                            [
                            g'16
                            f'8
                            \revert Staff.Stem.stemlet-length
                            ef'16
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [
                        b'32
                        fs'32
                        \)
                        \revert Staff.Stem.stemlet-length
                        g'8
                        \p
                        ~
                        \(
                        ]
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [piano 1 voice measure 2]
                        g'8
                        d'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'16
                        \)
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'16
                        \<
                        \(
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'16
                        [
                        af'16
                        \revert Staff.Stem.stemlet-length
                        ef'8
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        \f
                        ~
                        \(
                        [
                        ef'16
                        \revert Staff.Stem.stemlet-length
                        d'16
                        \p
                        \)
                        ]
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [piano 2 voice measure 1]
                        \clef "bass"
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        e16
                        \(
                        [
                        c'32
                        \revert Staff.Stem.stemlet-length
                        g32
                        \)
                        ]
                        af4
                        \(
                        ef4
                        \)
                        \override Staff.Stem.stemlet-length = 0.75
                        d16
                        \(
                        [
                        e16
                        \revert Staff.Stem.stemlet-length
                        a8
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e8.
                        [
                        \revert Staff.Stem.stemlet-length
                        e16
                        ]
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "16")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [piano 2 voice measure 2]
                            \override Staff.Stem.stemlet-length = 0.75
                            cs16
                            \(
                            [
                            d16
                            \revert Staff.Stem.stemlet-length
                            e16
                            \)
                            ]
                        }
                        a8
                        ~
                        \(
                        a4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a8
                        [
                        \revert Staff.Stem.stemlet-length
                        e8
                        ~
                        ]
                        e8
                        \)
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) "32")
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            cs16.
                            \(
                            [
                            af32
                            fs16
                            \revert Staff.Stem.stemlet-length
                            e32
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
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [harp voice measure 1]
                    r4
                    r8
                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    \f
                    \(
                    [
                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [
                    fs'16
                    \revert Staff.Stem.stemlet-length
                    d''8
                    ~
                    ]
                    d''4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    d''8
                    \)
                    [
                    \revert Staff.Stem.stemlet-length
                    af'8
                    \p
                    \(
                    ]
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [harp voice measure 2]
                    \override Staff.Stem.stemlet-length = 0.75
                    g'32
                    [
                    fs'32.
                    \)
                    cs''64
                    \<
                    \(
                    af'64
                    \revert Staff.Stem.stemlet-length
                    af'64
                    ]
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) "32")
                    \times 4/5
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        af'32
                        [
                        af''32
                        \f
                        \)
                        ef'32
                        \(
                        ef''32
                        \revert Staff.Stem.stemlet-length
                        fs'32
                        \)
                        ]
                    }
                    bf'4
                    \mf
                    \(
                    fs''4
                    \p
                    \)
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    fs'16
                    \f
                    \>
                    \(
                    [
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) "32")
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'32
                        [
                        fs'32
                        fs'32
                        g'16.
                        \revert Staff.Stem.stemlet-length
                        d'32
                        \p
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
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [marimba voice measure 1]
                        \clef "bass"
                        r8
                        \override Staff.Stem.stemlet-length = 0.75
                        fs,32
                        \ff
                        \(
                        [
                        b,32
                        af,32
                        \revert Staff.Stem.stemlet-length
                        c32
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs32
                        [
                        ef32
                        af,32
                        \revert Staff.Stem.stemlet-length
                        cs32
                        \)
                        ]
                        r8
                        r4
                        r4
                        r8
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''32
                        \(
                        [
                        af'''32
                        c'''32
                        \revert Staff.Stem.stemlet-length
                        af'''32
                        ]
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [marimba voice measure 2]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'''32
                        [
                        e'''32
                        f'''32
                        bf'''32
                        ef'''32
                        c'''32
                        b'''32
                        \revert Staff.Stem.stemlet-length
                        bf'''32
                        \)
                        ]
                        r2.
                    }
                }
                \context Staff = "percussion 1 staff"
                {
                    \context Voice = "percussion 1 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [percussion 1 voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [percussion 1 voice measure 2]
                        r1
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
                    r2.
                    r2
                    %! COMMENT_MEASURE_NUMBERS
                    %! abjad.SegmentMaker.comment_measure_numbers()
                    % [percussion 2 voice measure 2]
                    r8
                    \override Staff.Stem.stemlet-length = 0.75
                    c'16
                    - \tweak circled-tip ##t
                    \<
                    ~
                    [
                    \revert Staff.Stem.stemlet-length
                    c'16
                    \mf
                    - \tweak circled-tip ##t
                    \>
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8.
                    ~
                    [
                    \revert Staff.Stem.stemlet-length
                    c'16
                    \!
                    ]
                    r4
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) "16")
                    \times 4/7
                    {
                        c'4
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        \mf
                        - \tweak circled-tip ##t
                        \>
                        ~
                        [
                        \revert Staff.Stem.stemlet-length
                        c'8
                        \!
                        ]
                    }
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
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        ds''4
                        ^ \markup \center-align { D+41 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        ds''4
                        \mp
                        ^ \markup \center-align { D+41 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        ds''4
                        \!
                        ^ \markup \center-align { D+41 }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [violin 1 voice measure 2]
                            e''4
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \<
                            ~
                            e''4
                            \mf
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \>
                            ~
                            e''4
                            \!
                            ^ \markup \center-align +33
                        }
                        r2
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [violin 2 voice measure 1]
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        cs''4
                        ^ \markup \center-align { +2 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        cs''4
                        \mp
                        ^ \markup \center-align { +2 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        cs''4
                        \!
                        ^ \markup \center-align { +2 }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [violin 2 voice measure 2]
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''4
                            ^ \markup \center-align { -16 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''4
                            \mf
                            ^ \markup \center-align { -16 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''4
                            \!
                            ^ \markup \center-align { -16 }
                        }
                        r2
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [viola voice measure 1]
                        \clef "alto"
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        e'4
                        ^ \markup \center-align { E♭+41 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        e'4
                        \mp
                        ^ \markup \center-align { E♭+41 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                        e'4
                        \!
                        ^ \markup \center-align { E♭+41 }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [viola voice measure 2]
                            b4
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \<
                            ~
                            b4
                            \mf
                            ^ \markup \center-align +33
                            - \tweak circled-tip ##t
                            \>
                            ~
                            b4
                            \!
                            ^ \markup \center-align +33
                        }
                        r2
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
                        r2
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        e'4
                        ^ \markup \center-align { -16 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        e'4
                        \mp
                        ^ \markup \center-align { -16 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        e'4
                        \!
                        ^ \markup \center-align { -16 }
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) "4")
                        \times 2/3
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [cello voice measure 2]
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'4
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'4
                            \mf
                            ^ \markup \center-align { +14 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'4
                            \!
                            ^ \markup \center-align { +14 }
                        }
                        r2
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [contrabass voice measure 1]
                        r2.
                        r2
                        %! COMMENT_MEASURE_NUMBERS
                        %! abjad.SegmentMaker.comment_measure_numbers()
                        % [contrabass voice measure 2]
                        r1
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}