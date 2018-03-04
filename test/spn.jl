using Base.Test
using Musical
using Musical.Notations # A
using Musical.SPN # note octave freq A4
using MIDI # MIDI.Note

@test A isa Musical.Notations.Notation
@test A4 isa Musical.SPN.NoteOctave
@test note(A4) == A
@test octave(A4) == 4
@test freq(A4) == 440.0
@test MIDI.Note(A4) == MIDI.Note(69, 0, 0, 0)
