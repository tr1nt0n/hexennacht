    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 4/4
            s1 * 1
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            \time 6/4
            s1 * 3/2
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic
                \abs-fontsize
                    #12
                    {
                        Accel.
                    } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 7.15
            \startTextSpan
            \tempo 4=130
            \time 6/4
            s1 * 3/2
            \stopTextSpan
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { bsn. }
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                            r1 * 3/4
                            R1 * 3/4
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
                            r1 * 3/4
                            R1 * 3/4
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
                            r1 * 3/4
                            R1 * 3/4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                            r1 * 3/4
                            R1 * 3/4
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
                            r1 * 3/4
                            R1 * 3/4
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
                            r1 * 3/4
                            R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { ratch. }
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                            \times 4/7
                            {
                                \staff-line-count 1
                                \set Staff.shortInstrumentName =
                                \markup { perc. 2 }
                                \clef "percussion"
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'32
                                \f
                                \tweak Accidental.transparent ##t
                                c'16
                                ]
                            }
                            \tweak Accidental.transparent ##t
                            c'8
                            ~
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \tweak Accidental.transparent ##t
                            c'16
                            ~
                            \tweak Accidental.transparent ##t
                            c'32
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16.
                            \fff
                            - \accent
                            ]
                            \boxed-markup "w/ mallets" 1
                            r8
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/7
                            {
                                \tweak Accidental.transparent ##t
                                c'8.
                                \f
                                [
                                \tweak Accidental.transparent ##t
                                c'16
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8
                                \f
                                \tweak Accidental.transparent ##t
                                c'16
                                \fff
                                - \accent
                                ]
                            }
                            \tweak Accidental.transparent ##t
                            c'4
                            \f
                            \tweak Accidental.transparent ##t
                            c'4
                            \mp
                            \<
                            ~
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            \f
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8.
                            \fff
                            - \accent
                            ]
                            \boxed-markup "w/ mallets" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \f
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            \f
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            \<
                            ~
                            ]
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8
                            \fff
                            - \accent
                            ]
                            \boxed-markup "w/ mallets" 1
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
                                \tweak Accidental.transparent ##t
                                c'32 * 99/32
                                \mp
                                - \staccato
                                \<
                                \(
                                \tweak Accidental.transparent ##t
                                c'32 * 69/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 13/8
                                - \staccato
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
                                \tweak Accidental.transparent ##t
                                c'32 * 25/16
                                \mf
                                - \staccato
                                \>
                                \(
                                \tweak Accidental.transparent ##t
                                c'32 * 7/4
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 65/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 79/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 49/16
                                \mp
                                - \staccato
                                \)
                                r32 * 29/8
                                ]
                            }
                            \revert TupletNumber.text
                            \times 4/5
                            {
                                \tweak Accidental.transparent ##t
                                c'16
                                \f
                                [
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                ]
                            }
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            \<
                            ~
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'32
                            [
                            \tweak Accidental.transparent ##t
                            c'32
                            \fff
                            - \accent
                            \boxed-markup "w/ mallets" 1
                            \tweak Accidental.transparent ##t
                            c'16
                            \mp
                            \<
                            ~
                            \boxed-markup "w/ hand" 1
                            \tweak Accidental.transparent ##t
                            c'32
                            \tweak Accidental.transparent ##t
                            c'32
                            \fff
                            - \accent
                            \boxed-markup "w/ mallets" 1
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16
                            \f
                            ]
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
                                \tweak Accidental.transparent ##t
                                c'32 * 25/16
                                \mp
                                - \staccato
                                \<
                                \(
                                \tweak Accidental.transparent ##t
                                c'32 * 7/4
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 65/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 79/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 49/16
                                \f
                                - \staccato
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
                                \tweak Accidental.transparent ##t
                                c'32 * 115/32
                                - \staccato
                                \>
                                \(
                                \tweak Accidental.transparent ##t
                                c'32 * 103/32
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 11/4
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 37/16
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 2
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 7/4
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 13/8
                                - \staccato
                                \tweak Accidental.transparent ##t
                                c'32 * 49/32
                                \mp
                                - \staccato
                                \)
                                r32 * 47/32
                                ]
                            }
                            \revert TupletNumber.text
                            \override TupletNumber.text = \markup \scale #'(1 . 1) \italic 7:10
                            \times 30/21
                            {
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                [
                                \tweak Accidental.transparent ##t
                                c'16
                                \f
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'16
                                ]
                            }
                            \revert TupletNumber.text
                            \tweak Accidental.transparent ##t
                            c'8
                            \mp
                            \<
                            ~
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16
                            \fff
                            - \accent
                            ]
                            \boxed-markup "w/ mallets" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'8.
                            \f
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'16
                            ]
                            \tweak Accidental.transparent ##t
                            c'4
                            r8
                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/8
                            {
                                \tweak Accidental.transparent ##t
                                c'16
                                [
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'8.
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'16
                                \f
                                ]
                            }
                            \tweak Accidental.transparent ##t
                            c'4
                            \fff
                            - \accent
                            \tweak Accidental.transparent ##t
                            c'4
                            \mp
                            \<
                            ~
                            \boxed-markup "w/ hand" 1
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.transparent ##t
                            c'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.transparent ##t
                            c'8.
                            \fff
                            - \accent
                            ]
                            \boxed-markup "w/ mallets" 1
                            \times 2/3
                            {
                                \tweak Accidental.transparent ##t
                                c'16
                                \f
                                [
                                \tweak Accidental.transparent ##t
                                c'16
                                \tweak Accidental.transparent ##t
                                c'8
                                \fff
                                - \accent
                                \tweak Accidental.transparent ##t
                                c'16
                                \f
                                \tweak Accidental.transparent ##t
                                c'16
                                \fff
                                - \accent
                                ]
                            }
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
                                    c''4
                                    :32
                                    - \tweak circled-tip ##t
                                    \<
                                    \boxed-markup "CLT, SP, Molto Flaut." 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqf''8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''8.
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqf''16
                                    :128
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bqs'8
                                    :64
                                    ~
                                    ]
                                    bqs'4
                                    :32
                                    ~
                                    bqs'2.
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqs'8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqf''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'''8
                                    :64
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    aqs''8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    aqs''8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqf''8
                                    :64
                                    \!
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    ]
                                    gqf''4
                                    :32
                                    ~
                                    gqf''2.
                                    :32
                                    ~
                                    gqf''4
                                    :32
                                    r2
                                    \!
                                    r2.
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    cqs'4
                                    :32
                                    - \tweak circled-tip ##t
                                    \<
                                    \boxed-markup "CLT, SP, Molto Flaut." 1
                                    ef'4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fqs'8
                                    :64
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs'8
                                    :64
                                    ]
                                    cqs'4
                                    :32
                                    ef'4
                                    :32
                                    dqs'4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqf'8
                                    :64
                                    ]
                                    fs'4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs'8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf'8
                                    :64
                                    ]
                                    bqf'4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fqs'8
                                    :64
                                    ]
                                    f'4
                                    :32
                                    eqf'4
                                    :32
                                    cqs'2
                                    :32
                                    \!
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    cqs'2.
                                    :32
                                    ~
                                    cqs'4
                                    :32
                                    r2
                                    \!
                                    r2.
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    ef4
                                    :32
                                    - \tweak circled-tip ##t
                                    \<
                                    \boxed-markup "CLT, SP, Molto Flaut." 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    :64
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqf8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    :64
                                    ]
                                    eqf4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqs8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqf8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    :64
                                    ]
                                    aqf4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bqf8
                                    :64
                                    ]
                                    ef4
                                    :32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    eqf8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    eqs8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    :64
                                    ]
                                    eqf1
                                    :32
                                    \!
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    eqf4
                                    :32
                                    r2
                                    \!
                                    r2.
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    %! applying indicators
                                    \set Staff.shortInstrumentName =
                                    %! applying indicators
                                    \markup { vc. }
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
                                    cs,2.
                                    :32
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \boxed-markup "CLT, SP, Molto Flaut." 1
                                    cs,2
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs,8
                                    :64
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    dqf,8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqs,8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqs,8
                                    :64
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    eqs,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ef,8
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    af,8
                                    :64
                                    ~
                                    ]
                                    af,2
                                    :32
                                    ~
                                    af,2
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bqs,8
                                    :64
                                    \!
                                    - \tweak circled-tip ##t
                                    \>
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs16
                                    :128
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bqf,8.
                                    :64
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bqf,8
                                    :64
                                    ~
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqf,8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fs,8
                                    :64
                                    ]
                                    gqs,4
                                    :32
                                    r2
                                    \!
                                    r2.
                                    %! applying invisibility
                                    \once \override Rest.transparent = ##t
                                    %! applying cutaway
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    %! applying cutaway
                                    \stopStaff \startStaff
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
                                    r1 * 1/2
                                    R1 * 1/2
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                    r1 * 3/4
                                    R1 * 3/4
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
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
