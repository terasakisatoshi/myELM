module Main exposing (..)

import Html exposing (..)


main =
    div []
        [ h1 [] [ text "Math List" ]
        , ul []
            [ li [] [ text "Def" ]
            , li [] [ text "Prop" ]
            , li [] [ text "Thm" ]
            , li [] [ text "proof" ]
            ]
        ]
