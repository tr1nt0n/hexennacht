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
            - \tweak padding 8
            ^ \markup {
                \italic
                    \abs-fontsize
                        #14
                        {
                            Rall.
                        }
                }
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r2
                                    <aqs' a'' b'' f'''>2
                                    \p
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four six)) (lh . (b)) (rh . (cis)))}
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    <f'' dqf'''>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three four)) (lh . (b)) (rh . (d ees)))}
                                    \<
                                    ~
                                    <f'' dqf'''>4
                                    ~
                                    <f'' dqf'''>2.
                                    <bqs' cs'''>4.
                                    \f
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three six)) (lh . ()) (rh . ()))}
                                    ~
                                    <bqs' cs'''>4
                                    r4
                                    r8
                                    <fs' f'' g'' cqs'''>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one two three five six)) (lh . (b)) (rh . (c cis)))}
                                    ~
                                    <fs' f'' g'' cqs'''>2
                                    r4
                                    r8
                                    <bf' aqs'' f'''>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'flute #'((cc . (one three four)) (lh . (b)) (rh . (ees)))}
                                    ~
                                    <bf' aqs'' f'''>2
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r2
                                    gqs''2
                                    \p
                                    - \tenuto
                                    \boxed-markup "Norm." 1
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    b''8
                                    - \tenuto
                                    \<
                                    ~
                                    b''4
                                    ~
                                    b''2.
                                    f''4.
                                    \f
                                    - \tenuto
                                    ~
                                    f''4
                                    r4
                                    r8
                                    cqs''8
                                    - \tenuto
                                    ~
                                    cqs''2
                                    r4
                                    r8
                                    c''8
                                    - \tenuto
                                    ~
                                    c''2
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4
                                    r8
                                    <e' cs'''>8
                                    \p
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three four five)) (lh . (thumb)) (rh . ()))}
                                    ~
                                    <e' cs'''>4
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
                                    r1 * 5/8
                                    R1 * 5/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r2.
                                    <gqs' f'''>2.
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (two three six)) (lh . (thumb R)) (rh . ()))}
                                    \<
                                    r8
                                    <fs' bqf''>4
                                    \f
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three four five six)) (lh . ()) (rh . (ees)))}
                                    ~
                                    <fs' bqf''>2
                                    r4
                                    r8
                                    <fqs' aqf'''>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five six)) (lh . (thumb)) (rh . (three four e)))}
                                    ~
                                    <fqs' aqf'''>4
                                    ~
                                    <fqs' aqf'''>4
                                    ~
                                    <fqs' aqf'''>8
                                    r8
                                    <af' eqf'''>2
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bass-clarinet #'((cc . (one two three five)) (lh . (thumb gis)) (rh . ()))}
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { bsn. }
                                    \clef "bass"
                                    <c d e>4
                                    :32
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c d e>8
                                    :64
                                    \f
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <c d e>8
                                    :64
                                    ]
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    %! applying indicators
                                    \!
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r2.
                                    <cqs cqs'>2
                                    \p
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
                                    r1
                                    <d eqf fqs>2
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes)))}
                                    \<
                                    r4.
                                    <cqs fs af>4
                                    \f
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (two three five)) (lh . (w)) (rh . (thumb-bes)))}
                                    r8
                                    <cqs, fs, c gqs>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a cisT thumb-cis)) (rh . (thumb-e)))}
                                    ~
                                    <cqs, fs, c gqs>8
                                    r8
                                    r4
                                    r8
                                    <c d e>8
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (cis thumb-e fis)))}
                                    ~
                                    <c d e>8
                                    r8
                                    r2
                                    <cqs cqs'>4
                                    - \tenuto
                                    ^ \markup \override #'(size . .4) { \woodwind-diagram #'bassoon #'((cc . (one two three five six)) (lh . (low-d)) (rh . (fis f thumb-bes)))}
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
                            r1 * 1/4
                            R1 * 1/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 7/16
                            R1 * 7/16
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
                            cs''2
                            :32
                            \p
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \boxed-markup "Fluttering valves, fluttertongue" 1
                            cs''8
                            :64
                            r8
                            \!
                            r4
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 5/8
                            R1 * 5/8
                            %! applying cutaway
                            \stopStaff \startStaff
                            r4
                            b'4
                            :32
                            \pp
                            \<
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            b'16
                            :128
                            [
                            \revert Staff.Stem.stemlet-length
                            bf''8.
                            :64
                            ]
                            r8
                            cs''8
                            :64
                            ~
                            cs''4
                            :32
                            ~
                            cs''16
                            :128
                            \mf
                            r8.
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 7/16
                            R1 * 7/16
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
                            r1 * 1/2
                            R1 * 1/2
                            %! applying cutaway
                            \stopStaff \startStaff
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    \pitchedTrill
                                    a''8.
                                    \pp
                                    \<
                                    \startTrillSpan af''
                                    r16
                                    \stopTrillSpan
                                    r16
                                    \pitchedTrill
                                    dqf''8.
                                    ~
                                    \startTrillSpan dqs''
                                    dqf''4
                                    \mf
                                    r2
                                    \stopTrillSpan
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    r8
                                    ef8
                                    :64
                                    \pp
                                    \<
                                    ~
                                    \boxed-markup "Fluttertongue, rapidly switch between 1st-7th" 1
                                    ef4
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef16
                                    :128
                                    [
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    bf''8.
                                    :64
                                    ~
                                    ]
                                    bf''4
                                    :32
                                    ~
                                    bf''8
                                    :64
                                    \mf
                                    r8
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    bf,4
                                    \pp
                                    bf,8
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b,16
                                    ~
                                    ]
                                    b,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,16
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,16
                                    ~
                                    ]
                                    g,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,16
                                    ~
                                    ]
                                    fs,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,16
                                    ~
                                    ]
                                    f,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef,16
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e,16
                                    \<
                                    ~
                                    ]
                                    e,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,16
                                    ~
                                    ]
                                    g,4
                                    \mf
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    \fff
                                    - \accent
                                    [
                                    \(
                                    g16
                                    - \accent
                                    fs16
                                    - \accent
                                    g16
                                    - \accent
                                    g16
                                    - \accent
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    - \accent
                                    \)
                                    ]
                                    \clef "treble"
                                    e''4
                                    \mp
                                    \(
                                    bf''4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf''16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e''8.
                                    \)
                                    ]
                                    \times 4/5
                                    {
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f16
                                        \fff
                                        - \accent
                                        [
                                        \(
                                        g16
                                        - \accent
                                        c'16
                                        - \accent
                                        g16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        e16
                                        - \accent
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs16
                                        - \accent
                                        [
                                        cs'16
                                        - \accent
                                        b16
                                        - \accent
                                        a16
                                        - \accent
                                        f'16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        \)
                                        ]
                                    }
                                    \clef "treble"
                                    cs'''4
                                    \mp
                                    \(
                                    af''4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g''8.
                                    ~
                                    ]
                                    g''4
                                    \)
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a16
                                        \fff
                                        - \accent
                                        [
                                        \(
                                        d'8.
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        a16
                                        - \accent
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        - \accent
                                        [
                                        a16
                                        - \accent
                                        bf8.
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        - \accent
                                        \)
                                        ]
                                    }
                                    c'''4
                                    \mp
                                    \(
                                    g''4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    cs'''8.
                                    \)
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'16
                                    \fff
                                    - \accent
                                    [
                                    af''16
                                    - \accent
                                    ~
                                    af''16
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    bf,16
                                    - \accent
                                    ]
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'''8
                                    - \accent
                                    ]
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c8
                                    - \accent
                                    [
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    a'8
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    e'''8
                                    - \accent
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'''8
                                    [
                                    \clef "bass"
                                    d16
                                    - \accent
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'''8
                                    - \accent
                                    [
                                    \clef "bass"
                                    ef16
                                    - \accent
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    e''16
                                    - \accent
                                    ]
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,16
                                        - \accent
                                        [
                                        \(
                                        c16
                                        - \accent
                                        f16
                                        - \accent
                                        c16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        a,16
                                        - \accent
                                        \)
                                        ]
                                    }
                                    e4
                                    \(
                                    d4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c8.
                                    \)
                                    ]
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        af16
                                        - \accent
                                        [
                                        \(
                                        ef8.
                                        - \accent
                                        e16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        b,16
                                        - \accent
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e,16
                                        - \accent
                                        [
                                        fs,8
                                        - \accent
                                        b,16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        fs,16
                                        - \accent
                                        \)
                                        ]
                                    }
                                    fs,2
                                    f,2
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs,8.
                                        - \accent
                                        [
                                        \(
                                        fs,16
                                        - \accent
                                        af,8
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        ef,16
                                        - \accent
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f,16
                                    \mp
                                    [
                                    \(
                                    b,,16
                                    \revert Staff.Stem.stemlet-length
                                    c,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,16
                                    [
                                    d,16
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d,8
                                    \)
                                    ]
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b,,8
                                        \fff
                                        - \accent
                                        [
                                        \(
                                        fs,16
                                        - \accent
                                        e,8.
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        d,16
                                        - \accent
                                        \)
                                        ]
                                    }
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
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                            r1 * 1/4
                            R1 * 1/4
                            %! applying cutaway
                            \stopStaff \startStaff
                            \override Staff.Stem.stemlet-length = 0.75
                            g''16.
                            \fff
                            - \accent
                            [
                            \(
                            d''32
                            - \accent
                            ~
                            d''8
                            ~
                            d''32
                            \revert Staff.Stem.stemlet-length
                            cs''16.
                            - \accent
                            \)
                            ]
                            ef'4
                            \mp
                            \(
                            af'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            af'16
                            [
                            \revert Staff.Stem.stemlet-length
                            ef'8.
                            \)
                            ]
                            \times 4/7
                            {
                                \override Staff.Stem.stemlet-length = 0.75
                                ef''8
                                \fff
                                - \accent
                                [
                                \(
                                d''16
                                - \accent
                                ef''8.
                                - \accent
                                \revert Staff.Stem.stemlet-length
                                ef''16
                                - \accent
                                ]
                            }
                            \times 4/7
                            {
                                \override Staff.Stem.stemlet-length = 0.75
                                fs''8.
                                - \accent
                                [
                                cs''16
                                - \accent
                                fs''8
                                - \accent
                                \revert Staff.Stem.stemlet-length
                                cs''16
                                - \accent
                                \)
                                ]
                            }
                            cs'4
                            \mp
                            \(
                            ef'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            ef'16
                            [
                            \revert Staff.Stem.stemlet-length
                            af'8.
                            ~
                            ]
                            af'4
                            \)
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                ef''8
                                \fff
                                - \accent
                                \(
                                cs''4.
                                - \accent
                                g''8
                                - \accent
                            }
                            \override Staff.Stem.stemlet-length = 0.75
                            g''16
                            - \accent
                            [
                            \revert Staff.Stem.stemlet-length
                            fs''16
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            ef''16
                            - \accent
                            [
                            b''16
                            - \accent
                            fs''16
                            - \accent
                            \revert Staff.Stem.stemlet-length
                            g''16
                            - \accent
                            \)
                            ]
                            d'4
                            \mp
                            \times 4/5
                            {
                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8.
                                \fff
                                - \accent
                                [
                                \(
                                ef'16
                                - \accent
                                \revert Staff.Stem.stemlet-length
                                af'16
                                - \accent
                                \)
                                ]
                            }
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/7
                            {
                                \override Staff.Stem.stemlet-length = 0.75
                                ef'''8
                                [
                                \clef "bass"
                                ef,8
                                \clef "treble"
                                d'8
                                ef'''8
                                \clef "bass"
                                ef,8
                                \clef "treble"
                                fs'8
                                \revert Staff.Stem.stemlet-length
                                cs'''8
                                ]
                            }
                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            fs,8
                            [
                            \clef "treble"
                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            cs'32
                            [
                            \revert Staff.Stem.stemlet-length
                            cs'''8..
                            ]
                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            ef,8
                            [
                            \clef "treble"
                            af'16
                            \revert Staff.Stem.stemlet-length
                            ef'''16
                            ]
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 7/16
                            R1 * 7/16
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
                            r1 * 1/2
                            R1 * 1/2
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \times 2/3
                                    {
                                        \clef "bass"
                                        <ef f>4
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \boxed-markup "w/ bow" 1
                                        <ef f>4
                                        \p
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        <ef f>4
                                        \!
                                    }
                                    r8
                                    r4
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/8
                                    R1 * 3/8
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/5
                                    {
                                        <d ef>4.
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        <d ef>8
                                        \p
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        ~
                                        <d ef>8
                                        \!
                                        ]
                                    }
                                    r2.
                                    r8
                                    <bf, c>8
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    <bf, c>4
                                    \p
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    <bf, c>4
                                    ~
                                    <bf, c>8
                                    \!
                                    r8
                                    r4
                                    r2.
                                    <g a>4.
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8
                                    \f
                                    - \tweak circled-tip ##t
                                    \>
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <g a>8
                                    ]
                                    ~
                                    <g a>4
                                    \!
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g, a,>8
                                    - \tweak circled-tip ##t
                                    \<
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <g, a,>8
                                    \f
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    ]
                                    <g, a,>4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g, a,>8
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    <g, a,>8
                                    \!
                                    ]
                                    r2.
                                    \times 4/5
                                    {
                                        <ef f>8.
                                        \!
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        ~
                                        <ef f>16
                                        \f
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        <ef f>16
                                        \!
                                        ]
                                    }
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "percussion 1 staff"
                            {
                                \context Voice = "percussion 1 voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { ratch. }
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    %! applying indicators
                                    \clef "percussion"
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4.
                                    r4
                                    r8
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    \pp
                                    - \accent
                                    r2
                                    r8
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    ]
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    - \accent
                                    r8
                                    r2
                                    r2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    a8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.transparent ##t
                                    c'8
                                    - \accent
                                    ]
                                    \tweak Accidental.transparent ##t
                                    e'8
                                    - \accent
                                    r8
                                    r4
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                            e'8
                            \p
                            - \tenuto
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            a8
                            - \tenuto
                            ]
                            \tweak Accidental.transparent ##t
                            e'4
                            - \tenuto
                            \times 2/3
                            {
                                \staff-line-count 1
                                \tweak Accidental.transparent ##t
                                c'4
                                - \tweak circled-tip ##t
                                \<
                                ~
                                \boxed-markup "Ride Cymbal, w/ bow" 1
                                \tweak Accidental.transparent ##t
                                c'4
                                \p
                                - \tweak circled-tip ##t
                                \>
                                ~
                                \tweak Accidental.transparent ##t
                                c'4
                                \!
                            }
                            r8
                            r4
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
                            r1 * 1/2
                            R1 * 1/2
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
                            r4
                            \tweak Accidental.transparent ##t
                            c'2
                            - \tweak circled-tip ##t
                            \<
                            ~
                            \tweak Accidental.transparent ##t
                            c'4
                            ~
                            \tweak Accidental.transparent ##t
                            c'4
                            \p
                            - \tweak circled-tip ##t
                            \>
                            ~
                            \tweak Accidental.transparent ##t
                            c'4
                            \!
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying cutaway
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                            r1 * 7/16
                            R1 * 7/16
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
                            \staff-line-count 3
                            \tweak Accidental.transparent ##t
                            a4
                            \mp
                            \<
                            \boxed-markup "Gongs" 1
                            \tweak Accidental.transparent ##t
                            a4
                            \boxed-markup "w/ bow" 1
                            \tweak Accidental.transparent ##t
                            a4
                            \boxed-markup "w/ mallet" 1
                            \tweak Accidental.transparent ##t
                            a4
                            \ff
                            \boxed-markup "w/ bow" 1
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \times 4/5
                                    {
                                        e''4.
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \boxed-markup "Norm." 1
                                        e''8
                                        \p
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        ~
                                        e''8
                                        \!
                                        ^ \markup \center-align +33
                                        ]
                                    }
                                    r8
                                    r4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                                    \times 15/18
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                        ds''4
                                        ^ \markup \center-align { D+41 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                        ds''1
                                        \p
                                        ^ \markup \center-align { D+41 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                        ds''4
                                        \!
                                        ^ \markup \center-align { D+41 }
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                    r8
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                    ds''8
                                    ^ \markup \center-align { +34 }
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                    ds''8
                                    \f
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/5
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                        a''4.
                                        ^ \markup \center-align { -46 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                        a''8
                                        \f
                                        ^ \markup \center-align { -46 }
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                        a''8
                                        \!
                                        ^ \markup \center-align { -46 }
                                        ]
                                    }
                                    r8
                                    r4
                                    e''2
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    e''4
                                    \f
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    e''4
                                    \!
                                    ^ \markup \center-align +33
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    f''4
                                    ^ \markup \center-align { -16 }
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \boxed-markup "Norm." 1
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    f''8
                                    \p
                                    ^ \markup \center-align { -16 }
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    f''8
                                    \!
                                    ^ \markup \center-align { -16 }
                                    r8
                                    r4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                                    \times 30/21
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-sharp  }
                                        cs''2
                                        ^ \markup \center-align { +2 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-sharp  }
                                        cs''8
                                        \p
                                        ^ \markup \center-align { +2 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-sharp  }
                                        cs''4
                                        \!
                                        ^ \markup \center-align { +2 }
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                    r8
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                    bf''8
                                    ^ \markup \center-align { -33 }
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                    bf''16
                                    [
                                    ~
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                    bf''16
                                    \f
                                    ^ \markup \center-align { -33 }
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                    bf''32
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                                    bf''16.
                                    \!
                                    ^ \markup \center-align { -33 }
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    \<
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    \f
                                    ^ \markup \center-align +33
                                    - \tweak circled-tip ##t
                                    \>
                                    ]
                                    ~
                                    c''8
                                    \!
                                    ^ \markup \center-align +33
                                    r8
                                    r4
                                    \times 4/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        f''1
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        f''4
                                        \f
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        f''2
                                        \!
                                        ^ \markup \center-align { -16 }
                                    }
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    \times 4/7
                                    {
                                        b2
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \boxed-markup "Norm." 1
                                        b8
                                        \p
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        b4
                                        \!
                                        ^ \markup \center-align +33
                                    }
                                    r8
                                    r4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 4:5
                                    \times 15/12
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        e'2
                                        ^ \markup \center-align { E♭+41 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        e'4
                                        \p
                                        ^ \markup \center-align { E♭+41 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-tridecimal-third-tone-down  }
                                        e'4
                                        \!
                                        ^ \markup \center-align { E♭+41 }
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                        cs'4
                                        ^ \markup \center-align { +34 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                        cs'16
                                        \f
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                    g'16
                                    ^ \markup \center-align { -46 }
                                    - \tweak circled-tip ##t
                                    \<
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                    g'8.
                                    \f
                                    ^ \markup \center-align { -46 }
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                    g'16
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                                    g'16
                                    \!
                                    ^ \markup \center-align { -46 }
                                    ]
                                    r8
                                    r4
                                    \times 2/3
                                    {
                                        b4
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        b1
                                        \f
                                        ^ \markup \center-align +33
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        b4
                                        \!
                                        ^ \markup \center-align +33
                                    }
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.shortInstrumentName =
                                    \markup { vc. }
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic
                                    ef,16
                                    :128
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    \(
                                    \tweak style #'harmonic
                                    f,16
                                    :128
                                    \tweak style #'harmonic
                                    fs,16
                                    :128
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic
                                    a,16
                                    :128
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic
                                    g,16
                                    :128
                                    \)
                                    [
                                    \tweak style #'harmonic
                                    g,16
                                    :128
                                    \f
                                    - \accent
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \(
                                    \tweak style #'harmonic
                                    ef,16
                                    :128
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic
                                    a,16
                                    :128
                                    \)
                                    ]
                                    \times 2/3
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                                        cf'8
                                        ^ \markup \center-align { +14 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \boxed-markup "Norm." 1
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                                        cf'2
                                        \p
                                        ^ \markup \center-align { +14 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                                        cf'8
                                        \!
                                        ^ \markup \center-align { +14 }
                                    }
                                    r8
                                    r4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r4
                                    \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 6:5
                                    \times 15/18
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e'2
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e'2
                                        \p
                                        ^ \markup \center-align { -16 }
                                        - \tweak circled-tip ##t
                                        \>
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                        e'2
                                        \!
                                        ^ \markup \center-align { -16 }
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                    r8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d'16
                                    ^ \markup \center-align { -16 }
                                    - \tweak circled-tip ##t
                                    \<
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d'16
                                    \f
                                    ^ \markup \center-align { -16 }
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d'8.
                                    [
                                    ~
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                                    d'16
                                    \!
                                    ^ \markup \center-align { -16 }
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g4
                                        ^ \markup \center-align { -2 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g16
                                        \f
                                        ^ \markup \center-align { -2 }
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \abjad-natural  }
                                        g8
                                        \!
                                        ^ \markup \center-align { -2 }
                                        ]
                                    }
                                    r8
                                    r4
                                    \times 4/5
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                                        cf'2.
                                        ^ \markup \center-align { +14 }
                                        - \tweak circled-tip ##t
                                        \<
                                        ~
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                                        cf'4
                                        \f
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
                                    r1 * 1/4
                                    R1 * 1/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                    b,4.
                                    \pp
                                    ~
                                    \boxed-markup "Norm." 1
                                    b,4
                                    b,4
                                    ~
                                    b,2
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c8
                                    ~
                                    ]
                                    c2
                                    f,2
                                    a,2.
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8
                                    ~
                                    ]
                                    af,4
                                    ~
                                    af,4
                                    bf,2
                                    \<
                                    ~
                                    bf,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    ~
                                    ]
                                    g,4
                                    \mf
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
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
                                    r1 * 1/2
                                    R1 * 1/2
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
