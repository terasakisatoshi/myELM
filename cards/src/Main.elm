module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attribute exposing (style)
import Html.Events exposing (..)
import Random


main =
    Browser.element { init = init }


type Card
    = Ace
    | Two
    | Three
    | Four
    | Five
    | Six
    | Seven
    | Eight
    | Nine
    | Ten
    | Jack
    | Queeen
    | King


type alias Model =
    { card : Card
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model Three, Cmd.none )


type Msg
    = Draw
    | NewCard Card
