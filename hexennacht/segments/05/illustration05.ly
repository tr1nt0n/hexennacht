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
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
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
                        \set Staff.shortInstrumentName =
                        \markup { fl. }
                        r2
                        ^ \markup { 0 }
                        r2..
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        <aqs' a'' b'' f'''>2
                        \p
                        - \tenuto
                        ^ \markup { 4 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four six)) (lh . (b)) (rh . (cis)))}
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4
                        ^ \markup { 7 }
                        r8
                        ^ \markup { 8 }
                        <f'' dqf'''>8
                        - \tenuto
                        ^ \markup { 9 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three four)) (lh . (b)) (rh . (d ees)))}
                        ~
                        <f'' dqf'''>4
                        ^ \markup { 10 }
                        ~
                        <f'' dqf'''>2.
                        ^ \markup { 11 }
                        <bqs' cs'''>4.
                        \f
                        - \tenuto
                        ^ \markup { 12 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                        ~
                        <bqs' cs'''>4
                        ^ \markup { 13 }
                        r4
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        <fs' f'' g'' cqs'''>8
                        - \tenuto
                        ^ \markup { 16 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three five six)) (lh . (b)) (rh . (c cis)))}
                        ~
                        <fs' f'' g'' cqs'''>2
                        ^ \markup { 17 }
                        r4
                        ^ \markup { 18 }
                        r8
                        ^ \markup { 19 }
                        <bf' aqs'' f'''>8
                        - \tenuto
                        ^ \markup { 20 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four)) (lh . (b)) (rh . (ees)))}
                        ~
                        <bf' aqs'' f'''>2
                        ^ \markup { 21 }
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { ob. }
                        r2
                        ^ \markup { 0 }
                        r2..
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r2
                        ^ \markup { 3 }
                        gqs''2
                        \p
                        - \tenuto
                        ^ \markup { 4 }
                        r2.
                        ^ \markup { 5 }
                        r2
                        ^ \markup { 6 }
                        r4
                        ^ \markup { 7 }
                        r8
                        ^ \markup { 8 }
                        b''8
                        - \tenuto
                        ^ \markup { 9 }
                        ~
                        b''4
                        ^ \markup { 10 }
                        ~
                        b''2.
                        ^ \markup { 11 }
                        f''4.
                        \f
                        - \tenuto
                        ^ \markup { 12 }
                        ~
                        f''4
                        ^ \markup { 13 }
                        r4
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        cqs''8
                        - \tenuto
                        ^ \markup { 16 }
                        ~
                        cqs''2
                        ^ \markup { 17 }
                        r4
                        ^ \markup { 18 }
                        r8
                        ^ \markup { 19 }
                        c''8
                        - \tenuto
                        ^ \markup { 20 }
                        ~
                        c''2
                        ^ \markup { 21 }
                    }
                }
                \context Staff = "bass clarinet staff"
                {
                    \context Voice = "bass clarinet voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bcl. }
                        r2
                        ^ \markup { 0 }
                        r2..
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        r8
                        ^ \markup { 3 }
                        <e' cs'''>8
                        \p
                        - \tenuto
                        ^ \markup { 4 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                        ~
                        <e' cs'''>4
                        ^ \markup { 5 }
                        r1
                        ^ \markup { 6 }
                        r2.
                        ^ \markup { 7 }
                        r2
                        ^ \markup { 8 }
                        r2.
                        ^ \markup { 9 }
                        <gqs' f'''>2.
                        - \tenuto
                        ^ \markup { 10 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                        r8
                        ^ \markup { 11 }
                        <fs' bqf''>4
                        \f
                        - \tenuto
                        ^ \markup { 12 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                        ~
                        <fs' bqf''>2
                        ^ \markup { 13 }
                        r4
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        <fqs' aqf'''>8
                        - \tenuto
                        ^ \markup { 16 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                        ~
                        <fqs' aqf'''>4
                        ^ \markup { 17 }
                        ~
                        <fqs' aqf'''>4
                        ^ \markup { 18 }
                        ~
                        <fqs' aqf'''>8
                        ^ \markup { 19 }
                        r8
                        ^ \markup { 20 }
                        <af' eqf'''>2
                        - \tenuto
                        ^ \markup { 21 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five)) (lh . (thumb gis)) (rh . ()))}
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { bsn. }
                        \clef "bass"
                        <c d e>4
                        ^ \markup { 0 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <c d e>8
                        \f
                        ^ \markup { 1 }
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        <c d e>8
                        ^ \markup { 2 }
                        ]
                        r2..
                        \!
                        ^ \markup { 3 }
                        r2.
                        ^ \markup { 4 }
                        r1
                        ^ \markup { 5 }
                        r2.
                        ^ \markup { 6 }
                        <cqs cqs'>2
                        \p
                        - \tenuto
                        ^ \markup { 7 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                        r1
                        ^ \markup { 8 }
                        <d eqf fqs>2
                        - \tenuto
                        ^ \markup { 9 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                        r4.
                        ^ \markup { 10 }
                        <cqs fs af>4
                        \f
                        - \tenuto
                        ^ \markup { 11 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}
                        r8
                        ^ \markup { 12 }
                        <cqs, fs, c gqs>8
                        - \tenuto
                        ^ \markup { 13 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                        ~
                        <cqs, fs, c gqs>8
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        r4
                        ^ \markup { 16 }
                        r8
                        ^ \markup { 17 }
                        <c d e>8
                        - \tenuto
                        ^ \markup { 18 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                        ~
                        <c d e>8
                        ^ \markup { 19 }
                        r8
                        ^ \markup { 20 }
                        r2
                        ^ \markup { 21 }
                        <cqs cqs'>4
                        - \tenuto
                        ^ \markup { 22 }
                        ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
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
                    ^ \markup { 0 }
                    r2..
                    ^ \markup { 1 }
                    r2.
                    ^ \markup { 2 }
                    cs''2
                    ^ \markup { 3 }
                    ~
                    cs''8
                    ^ \markup { 4 }
                    r8
                    ^ \markup { 5 }
                    r4
                    ^ \markup { 6 }
                    r2.
                    ^ \markup { 7 }
                    r2
                    ^ \markup { 8 }
                    r4
                    ^ \markup { 9 }
                    b'4
                    ^ \markup { 10 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    ^ \markup { 11 }
                    [
                    \revert Staff.Stem.stemlet-length
                    bf''8.
                    ^ \markup { 12 }
                    ]
                    r8
                    ^ \markup { 13 }
                    cs''8
                    ^ \markup { 14 }
                    ~
                    cs''4
                    ^ \markup { 15 }
                    ~
                    cs''16
                    ^ \markup { 16 }
                    r8.
                    ^ \markup { 17 }
                    r2..
                    ^ \markup { 18 }
                    r2.
                    ^ \markup { 19 }
                    r1
                    ^ \markup { 20 }
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
                        ^ \markup { 0 }
                        r2..
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r1
                        ^ \markup { 3 }
                        r2.
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r4
                        ^ \markup { 6 }
                        a''8.
                        ^ \markup { 7 }
                        r16
                        ^ \markup { 8 }
                        r16
                        ^ \markup { 9 }
                        dqf''8.
                        ^ \markup { 10 }
                        ~
                        dqf''4
                        ^ \markup { 11 }
                        r2
                        ^ \markup { 12 }
                        r2..
                        ^ \markup { 13 }
                        r2.
                        ^ \markup { 14 }
                        r1
                        ^ \markup { 15 }
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
                        ^ \markup { 0 }
                        r2..
                        ^ \markup { 1 }
                        r2.
                        ^ \markup { 2 }
                        r1
                        ^ \markup { 3 }
                        r2.
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r4
                        ^ \markup { 6 }
                        r8
                        ^ \markup { 7 }
                        ef8
                        ^ \markup { 8 }
                        ~
                        ef4
                        ^ \markup { 9 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef16
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        bf''8.
                        ^ \markup { 11 }
                        ~
                        ]
                        bf''4
                        ^ \markup { 12 }
                        ~
                        bf''8
                        ^ \markup { 13 }
                        r8
                        ^ \markup { 14 }
                        r2..
                        ^ \markup { 15 }
                        r2.
                        ^ \markup { 16 }
                        r1
                        ^ \markup { 17 }
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
                        ^ \markup { 0 }
                        bf,4
                        ^ \markup { 1 }
                        bf,8
                        ^ \markup { 2 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,8.
                        ^ \markup { 3 }
                        [
                        \revert Staff.Stem.stemlet-length
                        b,16
                        ^ \markup { 4 }
                        ~
                        ]
                        b,4
                        ^ \markup { 5 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8
                        ^ \markup { 6 }
                        [
                        \revert Staff.Stem.stemlet-length
                        e,8
                        ^ \markup { 7 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e,8.
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,16
                        ^ \markup { 9 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8.
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,16
                        ^ \markup { 11 }
                        ~
                        ]
                        g,4
                        ^ \markup { 12 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8
                        ^ \markup { 13 }
                        [
                        \revert Staff.Stem.stemlet-length
                        a,8
                        ^ \markup { 14 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8.
                        ^ \markup { 15 }
                        [
                        \revert Staff.Stem.stemlet-length
                        fs,16
                        ^ \markup { 16 }
                        ~
                        ]
                        fs,4
                        ^ \markup { 17 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs,8
                        ^ \markup { 18 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8
                        ^ \markup { 19 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af,8
                        ^ \markup { 20 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f,8
                        ^ \markup { 21 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f,8.
                        ^ \markup { 22 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f,16
                        ^ \markup { 23 }
                        ~
                        ]
                        f,4
                        ^ \markup { 24 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f,8
                        ^ \markup { 25 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,8
                        ^ \markup { 26 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8.
                        ^ \markup { 27 }
                        [
                        \revert Staff.Stem.stemlet-length
                        ef,16
                        ^ \markup { 28 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef,8.
                        ^ \markup { 29 }
                        [
                        \revert Staff.Stem.stemlet-length
                        e,16
                        ^ \markup { 30 }
                        ~
                        ]
                        e,4
                        ^ \markup { 31 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e,8
                        ^ \markup { 32 }
                        [
                        \revert Staff.Stem.stemlet-length
                        fs,8
                        ^ \markup { 33 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs,8.
                        ^ \markup { 34 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,16
                        ^ \markup { 35 }
                        ~
                        ]
                        g,4
                        ^ \markup { 36 }
                        r2..
                        ^ \markup { 37 }
                        r2.
                        ^ \markup { 38 }
                        r1
                        ^ \markup { 39 }
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
                        r2
                        ^ \markup { 0 }
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        \fff
                        - \accent
                        ^ \markup { 1 }
                        [
                        \(
                        g''16
                        - \accent
                        ^ \markup { 2 }
                        fs''16
                        - \accent
                        ^ \markup { 3 }
                        g''16
                        - \accent
                        ^ \markup { 4 }
                        g''16
                        - \accent
                        ^ \markup { 5 }
                        \revert Staff.Stem.stemlet-length
                        a''16
                        - \accent
                        ^ \markup { 6 }
                        \)
                        ]
                        e''4
                        \mp
                        ^ \markup { 7 }
                        \(
                        bf''4
                        ^ \markup { 8 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        ^ \markup { 9 }
                        [
                        \revert Staff.Stem.stemlet-length
                        e''8.
                        ^ \markup { 10 }
                        \)
                        ]
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            f''16
                            \fff
                            - \accent
                            ^ \markup { 11 }
                            [
                            \(
                            g''16
                            - \accent
                            ^ \markup { 12 }
                            c'''16
                            - \accent
                            ^ \markup { 13 }
                            g''16
                            - \accent
                            ^ \markup { 14 }
                            \revert Staff.Stem.stemlet-length
                            e''16
                            - \accent
                            ^ \markup { 15 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs''16
                            - \accent
                            ^ \markup { 16 }
                            [
                            cs'''16
                            - \accent
                            ^ \markup { 17 }
                            b''16
                            - \accent
                            ^ \markup { 18 }
                            a''16
                            - \accent
                            ^ \markup { 19 }
                            f'''16
                            - \accent
                            ^ \markup { 20 }
                            \revert Staff.Stem.stemlet-length
                            c'''16
                            - \accent
                            ^ \markup { 21 }
                            \)
                            ]
                        }
                        cs'''4
                        \mp
                        ^ \markup { 22 }
                        \(
                        af''4
                        ^ \markup { 23 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        ^ \markup { 24 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g''8.
                        ^ \markup { 25 }
                        ~
                        ]
                        g''4
                        ^ \markup { 26 }
                        \)
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            \fff
                            - \accent
                            ^ \markup { 27 }
                            [
                            \(
                            d'''8.
                            - \accent
                            ^ \markup { 28 }
                            \revert Staff.Stem.stemlet-length
                            a''16
                            - \accent
                            ^ \markup { 29 }
                            ]
                        }
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf''16
                            - \accent
                            ^ \markup { 30 }
                            [
                            a''16
                            - \accent
                            ^ \markup { 31 }
                            bf''8.
                            - \accent
                            ^ \markup { 32 }
                            \revert Staff.Stem.stemlet-length
                            bf''16
                            - \accent
                            ^ \markup { 33 }
                            \)
                            ]
                        }
                        c'''4
                        \mp
                        ^ \markup { 34 }
                        \(
                        g''4
                        ^ \markup { 35 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        ^ \markup { 36 }
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''8.
                        ^ \markup { 37 }
                        \)
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'16
                        \fff
                        - \accent
                        ^ \markup { 38 }
                        [
                        af''16
                        - \accent
                        ^ \markup { 39 }
                        ~
                        af''16
                        ^ \markup { 40 }
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        bf,16
                        - \accent
                        ^ \markup { 41 }
                        ]
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        - \accent
                        ^ \markup { 42 }
                        [
                        \revert Staff.Stem.stemlet-length
                        f'''8
                        - \accent
                        ^ \markup { 43 }
                        ]
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        c8
                        - \accent
                        ^ \markup { 44 }
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        a'8
                        - \accent
                        ^ \markup { 45 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a'8
                        ^ \markup { 46 }
                        [
                        \revert Staff.Stem.stemlet-length
                        e'''8
                        - \accent
                        ^ \markup { 47 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''8
                        ^ \markup { 48 }
                        [
                        \clef "bass"
                        d16
                        - \accent
                        ^ \markup { 49 }
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        c''16
                        - \accent
                        ^ \markup { 50 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        af'''8
                        - \accent
                        ^ \markup { 51 }
                        [
                        \clef "bass"
                        ef16
                        - \accent
                        ^ \markup { 52 }
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        e''16
                        - \accent
                        ^ \markup { 53 }
                        ]
                        r2..
                        ^ \markup { 54 }
                        r2.
                        ^ \markup { 55 }
                        r1
                        ^ \markup { 56 }
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \clef "bass"
                        r2
                        ^ \markup { 0 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bf,16
                            - \accent
                            ^ \markup { 1 }
                            [
                            \(
                            c16
                            - \accent
                            ^ \markup { 2 }
                            f16
                            - \accent
                            ^ \markup { 3 }
                            c16
                            - \accent
                            ^ \markup { 4 }
                            \revert Staff.Stem.stemlet-length
                            a,16
                            - \accent
                            ^ \markup { 5 }
                            \)
                            ]
                        }
                        e4
                        ^ \markup { 6 }
                        \(
                        d4
                        ^ \markup { 7 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d16
                        ^ \markup { 8 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c8.
                        ^ \markup { 9 }
                        \)
                        ]
                        \times 2/3
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            af16
                            - \accent
                            ^ \markup { 10 }
                            [
                            \(
                            ef8.
                            - \accent
                            ^ \markup { 11 }
                            e16
                            - \accent
                            ^ \markup { 12 }
                            \revert Staff.Stem.stemlet-length
                            b,16
                            - \accent
                            ^ \markup { 13 }
                            ]
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e,16
                            - \accent
                            ^ \markup { 14 }
                            [
                            fs,8
                            - \accent
                            ^ \markup { 15 }
                            b,16
                            - \accent
                            ^ \markup { 16 }
                            \revert Staff.Stem.stemlet-length
                            fs,16
                            - \accent
                            ^ \markup { 17 }
                            \)
                            ]
                        }
                        fs,2
                        ^ \markup { 18 }
                        f,2
                        ^ \markup { 19 }
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fs,8.
                            - \accent
                            ^ \markup { 20 }
                            [
                            \(
                            fs,16
                            - \accent
                            ^ \markup { 21 }
                            af,8
                            - \accent
                            ^ \markup { 22 }
                            \revert Staff.Stem.stemlet-length
                            ef,16
                            - \accent
                            ^ \markup { 23 }
                            \)
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        f,16
                        \mp
                        ^ \markup { 24 }
                        [
                        \(
                        b,,16
                        ^ \markup { 25 }
                        \revert Staff.Stem.stemlet-length
                        c,8
                        ^ \markup { 26 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c,16
                        ^ \markup { 27 }
                        [
                        d,16
                        ^ \markup { 28 }
                        \revert Staff.Stem.stemlet-length
                        g,8
                        ^ \markup { 29 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g,8
                        ^ \markup { 30 }
                        [
                        \revert Staff.Stem.stemlet-length
                        d,8
                        ^ \markup { 31 }
                        \)
                        ]
                        \times 4/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b,,8
                            \fff
                            - \accent
                            ^ \markup { 32 }
                            [
                            \(
                            fs,16
                            - \accent
                            ^ \markup { 33 }
                            e,8.
                            - \accent
                            ^ \markup { 34 }
                            \revert Staff.Stem.stemlet-length
                            d,16
                            - \accent
                            ^ \markup { 35 }
                            \)
                            ]
                        }
                        r1.
                        ^ \markup { 36 }
                        r2..
                        ^ \markup { 37 }
                        r2.
                        ^ \markup { 38 }
                        r1
                        ^ \markup { 39 }
                    }
                }
            >>
            \context Staff = "harp staff"
            {
                \context Voice = "harp voice"
                {
                    \set Staff.shortInstrumentName =
                    \markup { harp }
                    r2
                    ^ \markup { 0 }
                    \override Staff.Stem.stemlet-length = 0.75
                    g'16.
                    \fff
                    - \accent
                    ^ \markup { 1 }
                    [
                    \(
                    d'32
                    - \accent
                    ^ \markup { 2 }
                    ~
                    d'8
                    ^ \markup { 3 }
                    ~
                    d'32
                    ^ \markup { 4 }
                    \revert Staff.Stem.stemlet-length
                    cs'16.
                    - \accent
                    ^ \markup { 5 }
                    \)
                    ]
                    ef'4
                    \mp
                    ^ \markup { 6 }
                    \(
                    af'4
                    ^ \markup { 7 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    ^ \markup { 8 }
                    [
                    \revert Staff.Stem.stemlet-length
                    ef'8.
                    ^ \markup { 9 }
                    \)
                    ]
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'8
                        \fff
                        - \accent
                        ^ \markup { 10 }
                        [
                        \(
                        d'16
                        - \accent
                        ^ \markup { 11 }
                        ef'8.
                        - \accent
                        ^ \markup { 12 }
                        \revert Staff.Stem.stemlet-length
                        ef'16
                        - \accent
                        ^ \markup { 13 }
                        ]
                    }
                    \times 4/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'8.
                        - \accent
                        ^ \markup { 14 }
                        [
                        cs'16
                        - \accent
                        ^ \markup { 15 }
                        fs'8
                        - \accent
                        ^ \markup { 16 }
                        \revert Staff.Stem.stemlet-length
                        cs'16
                        - \accent
                        ^ \markup { 17 }
                        \)
                        ]
                    }
                    cs'4
                    \mp
                    ^ \markup { 18 }
                    \(
                    ef'4
                    ^ \markup { 19 }
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    ^ \markup { 20 }
                    [
                    \revert Staff.Stem.stemlet-length
                    af'8.
                    ^ \markup { 21 }
                    ~
                    ]
                    af'4
                    ^ \markup { 22 }
                    \)
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        ef'8
                        \fff
                        - \accent
                        ^ \markup { 23 }
                        \(
                        cs'4.
                        - \accent
                        ^ \markup { 24 }
                        g'8
                        - \accent
                        ^ \markup { 25 }
                    }
                    \override Staff.Stem.stemlet-length = 0.75
                    g'16
                    - \accent
                    ^ \markup { 26 }
                    [
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    - \accent
                    ^ \markup { 27 }
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    - \accent
                    ^ \markup { 28 }
                    [
                    b'16
                    - \accent
                    ^ \markup { 29 }
                    fs'16
                    - \accent
                    ^ \markup { 30 }
                    \revert Staff.Stem.stemlet-length
                    g'16
                    - \accent
                    ^ \markup { 31 }
                    \)
                    ]
                    d'4
                    \mp
                    ^ \markup { 32 }
                    \times 4/5
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8.
                        \fff
                        - \accent
                        ^ \markup { 33 }
                        [
                        \(
                        ef'16
                        - \accent
                        ^ \markup { 34 }
                        \revert Staff.Stem.stemlet-length
                        af'16
                        - \accent
                        ^ \markup { 35 }
                        \)
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''8
                        ^ \markup { 36 }
                        [
                        \clef "bass"
                        ef,8
                        ^ \markup { 37 }
                        \clef "treble"
                        d'8
                        ^ \markup { 38 }
                        ef'''8
                        ^ \markup { 39 }
                        \clef "bass"
                        ef,8
                        ^ \markup { 40 }
                        \clef "treble"
                        fs'8
                        ^ \markup { 41 }
                        \revert Staff.Stem.stemlet-length
                        cs'''8
                        ^ \markup { 42 }
                        ]
                    }
                    \clef "bass"
                    \override Staff.Stem.stemlet-length = 0.75
                    fs,8
                    ^ \markup { 43 }
                    [
                    \clef "treble"
                    \revert Staff.Stem.stemlet-length
                    cs'8
                    ^ \markup { 44 }
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'32
                    ^ \markup { 45 }
                    [
                    \revert Staff.Stem.stemlet-length
                    cs'''8..
                    ^ \markup { 46 }
                    ]
                    \clef "bass"
                    \override Staff.Stem.stemlet-length = 0.75
                    ef,8
                    ^ \markup { 47 }
                    [
                    \clef "treble"
                    af'16
                    ^ \markup { 48 }
                    \revert Staff.Stem.stemlet-length
                    ef'''16
                    ^ \markup { 49 }
                    ]
                    r2..
                    ^ \markup { 50 }
                    r2.
                    ^ \markup { 51 }
                    r1
                    ^ \markup { 52 }
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
                        ^ \markup { 0 }
                        \times 2/3
                        {
                            \clef "bass"
                            <ef, f,>4
                            ^ \markup { 1 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \boxed-markup "w/ bow" 1
                            <ef, f,>4
                            \p
                            ^ \markup { 2 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            <ef, f,>4
                            \!
                            ^ \markup { 3 }
                        }
                        r8
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r2.
                        ^ \markup { 6 }
                        r8
                        ^ \markup { 7 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/5
                        {
                            <d, ef,>4.
                            ^ \markup { 8 }
                            - \tweak circled-tip ##t
                            \<
                            ~
                            <d, ef,>8
                            \p
                            ^ \markup { 9 }
                            - \tweak circled-tip ##t
                            \>
                            [
                            ~
                            <d, ef,>8
                            \!
                            ^ \markup { 10 }
                            ]
                        }
                        r2.
                        ^ \markup { 11 }
                        r8
                        ^ \markup { 12 }
                        <bf,, c,>8
                        ^ \markup { 13 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        <bf,, c,>4
                        \p
                        ^ \markup { 14 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        <bf,, c,>4
                        ^ \markup { 15 }
                        ~
                        <bf,, c,>8
                        \!
                        ^ \markup { 16 }
                        r8
                        ^ \markup { 17 }
                        r4
                        ^ \markup { 18 }
                        r2.
                        ^ \markup { 19 }
                        <fs, g,>4.
                        ^ \markup { 20 }
                        - \tweak circled-tip ##t
                        \<
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <fs, g,>8
                        \f
                        ^ \markup { 21 }
                        - \tweak circled-tip ##t
                        \>
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        <fs, g,>8
                        ^ \markup { 22 }
                        ]
                        ~
                        <fs, g,>4
                        \!
                        ^ \markup { 23 }
                        \override Staff.Stem.stemlet-length = 0.75
                        <g,, a,,>8
                        ^ \markup { 24 }
                        - \tweak circled-tip ##t
                        \<
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        <g,, a,,>8
                        \f
                        ^ \markup { 25 }
                        - \tweak circled-tip ##t
                        \>
                        ~
                        ]
                        <g,, a,,>4
                        ^ \markup { 26 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        <g,, a,,>8
                        ^ \markup { 27 }
                        [
                        ~
                        \revert Staff.Stem.stemlet-length
                        <g,, a,,>8
                        \!
                        ^ \markup { 28 }
                        ]
                        r2.
                        ^ \markup { 29 }
                        \times 4/5
                        {
                            <ef, f,>8.
                            \!
                            ^ \markup { 30 }
                            - \tweak circled-tip ##t
                            \<
                            [
                            ~
                            <ef, f,>16
                            \f
                            ^ \markup { 31 }
                            - \tweak circled-tip ##t
                            \>
                            ~
                            <ef, f,>16
                            ^ \markup { 32 }
                            ]
                        }
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
                        ^ \markup { 0 }
                        r4.
                        ^ \markup { 1 }
                        r4
                        ^ \markup { 2 }
                        r8
                        ^ \markup { 3 }
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 4 }
                        r2
                        ^ \markup { 5 }
                        r8
                        ^ \markup { 6 }
                        \tweak Accidental.transparent ##t
                        a8
                        ^ \markup { 7 }
                        r1
                        ^ \markup { 8 }
                        r4
                        ^ \markup { 9 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 11 }
                        ]
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 12 }
                        r8
                        ^ \markup { 13 }
                        r2
                        ^ \markup { 14 }
                        r2
                        ^ \markup { 15 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        a8
                        ^ \markup { 16 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        a8
                        ^ \markup { 17 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 18 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        c'8
                        ^ \markup { 19 }
                        ]
                        \tweak Accidental.transparent ##t
                        e'8
                        ^ \markup { 20 }
                        r8
                        ^ \markup { 21 }
                        r4
                        ^ \markup { 22 }
                        r2..
                        ^ \markup { 23 }
                        r2.
                        ^ \markup { 24 }
                        r1
                        ^ \markup { 25 }
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
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    e'8
                    ^ \markup { 0 }
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    a8
                    ^ \markup { 1 }
                    ]
                    \tweak Accidental.transparent ##t
                    e'4
                    ^ \markup { 2 }
                    \times 2/3
                    {
                        \tweak Accidental.transparent ##t
                        c'4
                        ^ \markup { 3 }
                        \tweak Accidental.transparent ##t
                        c'4
                        ^ \markup { 4 }
                        \tweak Accidental.transparent ##t
                        c'4
                        ^ \markup { 5 }
                    }
                    r8
                    ^ \markup { 6 }
                    r4
                    ^ \markup { 7 }
                    r2.
                    ^ \markup { 8 }
                    r1
                    ^ \markup { 9 }
                    r2.
                    ^ \markup { 10 }
                    r2
                    ^ \markup { 11 }
                    r4
                    ^ \markup { 12 }
                    \tweak Accidental.transparent ##t
                    c'2
                    ^ \markup { 13 }
                    ~
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 14 }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 15 }
                    \tweak Accidental.transparent ##t
                    c'4
                    ^ \markup { 16 }
                    r2..
                    ^ \markup { 17 }
                    r2.
                    ^ \markup { 18 }
                    \tweak Accidental.transparent ##t
                    a4
                    ^ \markup { 19 }
                    \tweak Accidental.transparent ##t
                    a4
                    ^ \markup { 20 }
                    \tweak Accidental.transparent ##t
                    a4
                    ^ \markup { 21 }
                    \tweak Accidental.transparent ##t
                    a4
                    ^ \markup { 22 }
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
                        ^ \markup { 0 }
                        \times 4/5
                        {
                            e''4.
                            ^ \markup \center-align +33
                            ^ \markup { 1 }
                            e''8
                            ^ \markup \center-align +33
                            ^ \markup { 2 }
                            [
                            e''8
                            ^ \markup \center-align +33
                            ^ \markup { 3 }
                            ]
                        }
                        r8
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r2.
                        ^ \markup { 6 }
                        r1
                        ^ \markup { 7 }
                        r2.
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r4
                        ^ \markup { 10 }
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                        \times 15/18
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''4
                            ^ \markup \center-align { D+41 }
                            ^ \markup { 11 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''1
                            ^ \markup \center-align { D+41 }
                            ^ \markup { 12 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            ds''4
                            ^ \markup \center-align { D+41 }
                            ^ \markup { 13 }
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        ^ \markup { 16 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        ^ \markup { 17 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        ds''8
                        ^ \markup \center-align { +34 }
                        ^ \markup { 18 }
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                            a''4.
                            ^ \markup \center-align { -46 }
                            ^ \markup { 19 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                            a''8
                            ^ \markup \center-align { -46 }
                            ^ \markup { 20 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                            a''8
                            ^ \markup \center-align { -46 }
                            ^ \markup { 21 }
                            ]
                        }
                        r8
                        ^ \markup { 22 }
                        r4
                        ^ \markup { 23 }
                        e''2
                        ^ \markup \center-align +33
                        ^ \markup { 24 }
                        e''4
                        ^ \markup \center-align +33
                        ^ \markup { 25 }
                        e''4
                        ^ \markup \center-align +33
                        ^ \markup { 26 }
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vln. 2 }
                        r2
                        ^ \markup { 0 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''4
                        ^ \markup \center-align { -16 }
                        ^ \markup { 1 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''8
                        ^ \markup \center-align { -16 }
                        ^ \markup { 2 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        f''8
                        ^ \markup \center-align { -16 }
                        ^ \markup { 3 }
                        r8
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r2.
                        ^ \markup { 6 }
                        r1
                        ^ \markup { 7 }
                        r2.
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r4
                        ^ \markup { 10 }
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                        \times 30/21
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''2
                            ^ \markup \center-align { +2 }
                            ^ \markup { 11 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''8
                            ^ \markup \center-align { +2 }
                            ^ \markup { 12 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-sharp  }
                            cs''4
                            ^ \markup \center-align { +2 }
                            ^ \markup { 13 }
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        bf''8
                        ^ \markup \center-align { -33 }
                        ^ \markup { 16 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        bf''16
                        ^ \markup { 17 }
                        [
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        bf''16
                        ^ \markup \center-align { -33 }
                        ^ \markup { 18 }
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        bf''32
                        ^ \markup { 19 }
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        bf''16.
                        ^ \markup \center-align { -33 }
                        ^ \markup { 20 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        ^ \markup \center-align +33
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c''8
                        ^ \markup \center-align +33
                        ^ \markup { 22 }
                        ]
                        c''8
                        ^ \markup \center-align +33
                        ^ \markup { 23 }
                        r8
                        ^ \markup { 24 }
                        r4
                        ^ \markup { 25 }
                        \times 4/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''1
                            ^ \markup \center-align { -16 }
                            ^ \markup { 26 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''4
                            ^ \markup \center-align { -16 }
                            ^ \markup { 27 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            f''2
                            ^ \markup \center-align { -16 }
                            ^ \markup { 28 }
                        }
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
                        ^ \markup { 0 }
                        \times 4/7
                        {
                            b2
                            ^ \markup \center-align +33
                            ^ \markup { 1 }
                            b8
                            ^ \markup \center-align +33
                            ^ \markup { 2 }
                            b4
                            ^ \markup \center-align +33
                            ^ \markup { 3 }
                        }
                        r8
                        ^ \markup { 4 }
                        r4
                        ^ \markup { 5 }
                        r2.
                        ^ \markup { 6 }
                        r1
                        ^ \markup { 7 }
                        r2.
                        ^ \markup { 8 }
                        r2
                        ^ \markup { 9 }
                        r4
                        ^ \markup { 10 }
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 4:5
                        \times 15/12
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'2
                            ^ \markup \center-align { E♭+41 }
                            ^ \markup { 11 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'4
                            ^ \markup \center-align { E♭+41 }
                            ^ \markup { 12 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                            e'4
                            ^ \markup \center-align { E♭+41 }
                            ^ \markup { 13 }
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup { 14 }
                        r8
                        ^ \markup { 15 }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'4
                            ^ \markup \center-align { +34 }
                            ^ \markup { 16 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'16
                            ^ \markup \center-align { +34 }
                            ^ \markup { 17 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs'8
                            ^ \markup \center-align { +34 }
                            ^ \markup { 18 }
                            ]
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        g'16
                        ^ \markup \center-align { -46 }
                        ^ \markup { 19 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        g'8.
                        ^ \markup \center-align { -46 }
                        ^ \markup { 20 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        g'16
                        ^ \markup { 21 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        g'16
                        ^ \markup \center-align { -46 }
                        ^ \markup { 22 }
                        ]
                        r8
                        ^ \markup { 23 }
                        r4
                        ^ \markup { 24 }
                        \times 2/3
                        {
                            b4
                            ^ \markup \center-align +33
                            ^ \markup { 25 }
                            b1
                            ^ \markup \center-align +33
                            ^ \markup { 26 }
                            b4
                            ^ \markup \center-align +33
                            ^ \markup { 27 }
                        }
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        \set Staff.shortInstrumentName =
                        \markup { vc. }
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        ^ \markup { 0 }
                        [
                        c'16
                        ^ \markup { 1 }
                        c'16
                        ^ \markup { 2 }
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ^ \markup { 3 }
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'16
                        ^ \markup { 4 }
                        [
                        c'16
                        ^ \markup { 5 }
                        c'16
                        ^ \markup { 6 }
                        \revert Staff.Stem.stemlet-length
                        c'16
                        ^ \markup { 7 }
                        ]
                        \times 2/3
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8
                            ^ \markup \center-align { +14 }
                            ^ \markup { 8 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'2
                            ^ \markup \center-align { +14 }
                            ^ \markup { 9 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'8
                            ^ \markup \center-align { +14 }
                            ^ \markup { 10 }
                        }
                        r8
                        ^ \markup { 11 }
                        r4
                        ^ \markup { 12 }
                        r2.
                        ^ \markup { 13 }
                        r1
                        ^ \markup { 14 }
                        r2.
                        ^ \markup { 15 }
                        r2
                        ^ \markup { 16 }
                        r4
                        ^ \markup { 17 }
                        \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                        \times 15/18
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                            ^ \markup { 18 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                            ^ \markup { 19 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                            e'2
                            ^ \markup \center-align { -16 }
                            ^ \markup { 20 }
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup { 21 }
                        r8
                        ^ \markup { 22 }
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        d'16
                        ^ \markup \center-align { -16 }
                        ^ \markup { 23 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        d'16
                        ^ \markup \center-align { -16 }
                        ^ \markup { 24 }
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        d'8.
                        ^ \markup { 25 }
                        [
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        d'16
                        ^ \markup \center-align { -16 }
                        ^ \markup { 26 }
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g4
                            ^ \markup \center-align { -2 }
                            ^ \markup { 27 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g16
                            ^ \markup \center-align { -2 }
                            ^ \markup { 28 }
                            [
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \abjad-natural  }
                            g8
                            ^ \markup \center-align { -2 }
                            ^ \markup { 29 }
                            ]
                        }
                        r8
                        ^ \markup { 30 }
                        r4
                        ^ \markup { 31 }
                        \times 4/5
                        {
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'2.
                            ^ \markup \center-align { +14 }
                            ^ \markup { 32 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 33 }
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                            cf'4
                            ^ \markup \center-align { +14 }
                            ^ \markup { 34 }
                        }
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
                        ^ \markup { 0 }
                        b,4.
                        ^ \markup { 1 }
                        ~
                        b,4
                        ^ \markup { 2 }
                        b,4
                        ^ \markup { 3 }
                        ~
                        b,2
                        ^ \markup { 4 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b,8
                        ^ \markup { 5 }
                        [
                        \revert Staff.Stem.stemlet-length
                        c8
                        ^ \markup { 6 }
                        ~
                        ]
                        c2
                        ^ \markup { 7 }
                        f,2
                        ^ \markup { 8 }
                        a,2.
                        ^ \markup { 9 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        ^ \markup { 10 }
                        [
                        \revert Staff.Stem.stemlet-length
                        af,8
                        ^ \markup { 11 }
                        ~
                        ]
                        af,4
                        ^ \markup { 12 }
                        ~
                        af,4
                        ^ \markup { 13 }
                        bf,2
                        ^ \markup { 14 }
                        ~
                        bf,4
                        ^ \markup { 15 }
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,8
                        ^ \markup { 16 }
                        [
                        \revert Staff.Stem.stemlet-length
                        g,8
                        ^ \markup { 17 }
                        ~
                        ]
                        g,4
                        ^ \markup { 18 }
                        r2..
                        ^ \markup { 19 }
                        r2.
                        ^ \markup { 20 }
                        r1
                        ^ \markup { 21 }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}
