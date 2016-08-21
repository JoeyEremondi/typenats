module TypeNat
    exposing
        ( Zero
        , OnePlus
        )

{-|
Easy to remember names for type-level natural numbers.
These are intended only to be used as "phantom types:"
that is, there are no values of type `Zero` or `OnePlus a`.
Instead, they should be arguments to other type constructors.

Elm doesn't have DataKinds, so please don't do anything silly like
`OnePlus (OnePlus (OnePlus (List (Int, Int))))`
i.e. please only give another TypeNat as the argument to
OnePlus.

@docs Zero, OnePlus

-}


{-| A phantom type for 0, our base TypeNat.
-}
type Zero
    = Zero Zero


{-| A phantom type constructor to increment a TypeNat,
creating a larger TypeNat.
-}
type OnePlus a
    = OnePlus OnePlus
