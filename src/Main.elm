module Main exposing (main)

import Browser
import Element as E
import Element.Input as Input
import Html exposing (Html)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { messages : List String
    , newMessage : String
    , rudeness : Rudeness
    }


type Rudeness
    = Rude
    | VeryRude


init : () -> ( Model, Cmd Msg )
init _ =
    ( { messages = []
      , newMessage = ""
      , rudeness = Rude
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = NewMessageChanged String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NewMessageChanged message ->
            ( { model | newMessage = message }
            , Cmd.none
            )



-- VIEW


view : Model -> Html Msg
view model =
    E.layout [ E.padding 20 ] <|
        E.column [ E.spacing 16 ]
            [ E.text "Chat with chatbot."
            , Input.text []
                { onChange = NewMessageChanged
                , text = model.newMessage
                , placeholder = Just <| Input.placeholder [] <| E.text "Your message"
                , label = Input.labelHidden "Your message"
                }
            ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
