module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (..)
import Random


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }

type Hand
    = R
    | P
    | S


handGenerator =
    Random.uniform R [ P, S ]


type alias Model =
    { hand : Hand }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model R, Cmd.none )


type Msg
    = Draw
    | NewHand Hand


update msg model =
    case msg of
        Draw ->
            ( model, Random.generate NewHand handGenerator )

        NewHand newHand ->
            ( Model newHand, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none

view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Draw ] [ text "Rock Scissors aper" ]
        , div [ style "font-size" "5em" ] [ text (viewHand model.hand) ]
        ]

viewHand : Hand -> String
viewHand hand = 
    case hand of 
        R -> "Rock"
        P -> "Paper"
        S -> "Scissors"