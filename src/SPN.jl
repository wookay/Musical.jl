# Scientific Pitch Notation
module SPN # Musical

export NoteOctve
export note, octave, freq
export A4

import ..Notations: Notation, A
import MIDI # MIDI.Note

struct NoteOctave
    notation::Notation
    octave::Int
    midipitch::Int
end

const A4 = NoteOctave(A, 4, 69)

note(no::NoteOctave) = no.notation
octave(no::NoteOctave) = no.octave
freq(no::NoteOctave) = 440 * 2^((no.midipitch-69)/12)
(::Type{MIDI.Note})(no::NoteOctave) = MIDI.Note(no.midipitch, 0, 0, 0)

end # module Musical.SPN
