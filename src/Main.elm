module Main exposing (init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode exposing (..)


main =
    Browser.sandbox { init = init, update = update, view = view }


init =
    42


update msg model =
    model


view model =
    div [] []
