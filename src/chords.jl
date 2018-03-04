module Chords # Musical

export Chord, Major, Minor
export notes, root, third, minorthird, fifth # , pitches
export Am
import ..Musical.Notations: Notation, A, B, C, D, E, F, G

abstract type Quality end

# M
struct Major <: Quality
end

# m
struct Minor <: Quality
end

# aug
struct Augmented <: Quality
end

# dim
struct Diminished{N<:Int} <: Quality
end

struct HalfDiminished <: Quality
end

struct Dominant <: Quality
end

struct Chord
    notation::Notation
    q::Type{Q} where {Q<:Quality}
end

function notes(chord::Chord)::Tuple
    notes(chord.notation, chord.q)
end

function notes(notation::Notation, q::Type{Major})::Tuple
    (C, E, G)
end

function notes(notation::Notation, q::Type{Minor})::Tuple
    (A, C, E)
end

root(chord::Chord) = notes(chord)[1]
third(chord::Chord) = notes(chord)[2]
minorthird(chord::Chord) = notes(chord)[2]
fifth(chord::Chord) = notes(chord)[3]
# pitches(chord::Chord) = 

const Am = Chord(A, Minor)

end # module Musical.Chords
