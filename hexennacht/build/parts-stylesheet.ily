\version "2.20.0"
\language english
#(set-default-paper-size "letterlandscape")
#(set-global-staff-size 10)

\include "/Users/trintonprater/abjad/docs/source/_stylesheets/ekmelos-ji-accidental-markups.ily"
\include "/Users/trintonprater/scores/hexennacht/hexennacht/library.ily"

\header {
    title = \markup \override #'(font-name . "Bodoni72") \fontsize #5.4 \center-column {"H E X E N N A C H T" \fontsize #3.4 \with-color #white "."}
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
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \override BarNumber.font-size = 3
        \override MetronomeMark.stencil = ##f
		\override BarNumber.font-name = "Bodoni72"
		\override TimeSignature.X-extent = #'(0 . 0)
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 0) (stretchability . 0))
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 8
		\override TimeSignature.font-name = "Bodoni72"
        \override TimeSignature.transparent = ##t
    }
    \context {
        \Score
        \numericTimeSignature
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 35)
        \remove Bar_number_engraver
        \accepts TimeSignatureContext
        \override DynamicText.font-size = #-2
        \override MetronomeMark.font-size = 3
        \override MetronomeMark.extra-offset = #'(5 . 0)
        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletBracket.bracket-visibility = ##t
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override Stem.stemlet-length = 0.75
        \override Glissando.thickness = #2
    }

	\context {
		\Voice
		\remove Forbid_line_break_engraver
		\override Accidental.font-size = 1
	}
	\context {
		\Staff
		\numericTimeSignature
		fontSize = #-1
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
        \override TimeSignature.padding = 3
        \override TimeSignature.font-size = 3
	}

}

\paper {
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