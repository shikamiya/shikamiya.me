import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = "まだなんもないよ", update = update, view = view }

type Msg = OnClick

update msg model =
  case msg of
    OnClick -> "でも何もないよ"


view model =
  div []
    [ div [] [ text model ]
    , button [ onClick OnClick ] [ text "🙄" ]
    ]
