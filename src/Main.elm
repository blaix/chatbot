module Main exposing (main)

import Browser
import Html as H exposing (Html)


main : Program () Model msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type alias Model =
    Int


init : () -> ( Model, Cmd msg )
init _ =
    ( 1, Cmd.none )


update : msg -> Model -> ( Model, Cmd msg )
update _ model =
    ( model, Cmd.none )


view : Model -> Html msg
view _ =
    H.text "You are cool."


subscriptions : Model -> Sub msg
subscriptions _ =
    Sub.none
