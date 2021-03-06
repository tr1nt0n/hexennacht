\version "2.20.0"
\language english
#(set-default-paper-size "11x17portrait")
#(set-global-staff-size 11)

\include "/Users/trintonprater/abjad/abjad/_stylesheets/ekmelos-ji-accidental-markups.ily"
\include "../library.ily"

\header {
    title = \markup \override #'(font-name . "Bodoni72") \fontsize #12 \center-column {"H E X E N N A C H T" \fontsize #3.4 \with-color #white "."}
    subtitle = \markup \override #'(font-name . "Bodoni72") \fontsize #3 \center-column {"for Sinfonietta" \fontsize #3.4 \with-color #white "."}
    composer = \markup \override #'(font-name . "Bodoni72") \fontsize #3 {"Trinton (*2000)"}
}

\layout {
    \accidentalStyle dodecaphonic
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver

        \override MetronomeMark.stencil = ##f
		\override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.font-size = 8
        \override TimeSignature.font-name = "Bodoni72"
        \override TimeSignature.break-visibility = #end-of-line-invisible

        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 12) (stretchability . 0))
    }
    \context {
        \Score
        \numericTimeSignature
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 11) (minimum distance . 11) (padding . 2))
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 30)
        \accepts TimeSignatureContext

        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . -4)
        \override BarNumber.font-size = 2
        \override BarNumber.font-name = "Bodoni72"
		\override BarNumber.padding = 1

        \override BarLine.bar-extent = #'(-2 . 2)

        \override DynamicText.font-size = #-2
        \override DynamicLineSpanner.staff-padding = 4

        \override MetronomeMark.padding = 6
        \override MetronomeMark.font-size = 4
        \override MetronomeMark.extra-offset = #'(0.3 . 0)

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletBracket.bracket-visibility = ##t
        \override TupletNumber.text = #tuplet-number::calc-fraction-text

        \override Stem.stemlet-length = 0.75
        \override Glissando.thickness = #2

        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5
    }
    \context {
        \Staff
        fontSize = #-1
        \remove Time_signature_engraver
        \accepts DynamicContext
        \RemoveAllEmptyStaves
    }
}
%
\paper {
    system-separator-markup = \markup { \slashSeparator }
    system-system-spacing = #'((basic-distance . 16) (minimum-distance . 16) (padding . 2))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
        \fill-line {
            "Hexennacht - Trinton"
        \concat {
            \fontsize #3
                \fromproperty #'page:page-number-string
        }
        }

        evenFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #3
                        \fromproperty #'page:page-number-string
                }
                "Hexennacht - Trinton"
            }
}
