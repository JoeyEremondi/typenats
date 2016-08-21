# elm-typenats
Helpers for type-level natural-numbers in Elm.

These are useful when describing things like multi-dimensional arrays or lists of fixed length, ensuring that a certain number of elements exist.

Was formerly elm-typenats, but changed to meet the new naming guidelines.

Example:

```elm
import TypeNat exposing (Zero, OnePlus)

-- A type parameterized by a type-level number
type MyType n = MyType n

--Now we can do things with Zero and Succ in the signatures
someBaseCase : MyType Zero 
someBaseCase = ..

someRecCase : MyType (OnePlus n) -> MyType n
someRecCase = ..
```

