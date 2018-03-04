using Base.Test
using Musical.Notations # A C E
using Musical.Chords # Am Chord Major notes root minorthird third fifth

# Am = Chord(A, Minor)
@test Am isa Chord
@test notes(Am) == (A, C, E)
@test root(Am) == A
@test minorthird(Am) == C
@test fifth(Am) == E
# @test pitches(Am) == (A, B, C, D, E, F, G)

CM = Chord(C, Major)
@test notes(CM) == (C, E, G)
@test root(CM) == C
@test third(CM) == E
@test fifth(CM) == G
