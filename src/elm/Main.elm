module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onClick )
-- component import example
import Components.Hello exposing ( hello )


-- APP
main : Program Never Int Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL
type alias Model = Int

model : number
model = 0


-- UPDATE
type Msg = NoOp | Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> model + 1


-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib
view : Model -> Html Msg
view model =
  div [ class "container timer-page"] [
    div [ class "row" ][
      div [ class "logo" ][
        text "Lean ",
        i [class "fa fa-coffee"][],
        text " Timer"
        ]
      ],
    div [ class "row" ][
      h1 [class "header"][text "Welcome to Lean Coffee"]
    ],
    div [ class "row messages"][
      div [class "alert alert-info"] [text "Pick a topic and discuss."],
      div [hidden True, class "alert alert-success"] [text "That was great! Want more of the same?"],
      div [class "alert alert-warning"] [text "Remember to stay on topic!"]
    ],
    hr [class "row vertical-line"][],
    div [class "timer row"] [ text "8:00"],
    hr [class "row vertical-line"][],
    div [class "buttons row"] [
      button [class "btn btn-primary btn-lg btn-primary lean-btn"][
        text "Start on a new topic"
      ],
      button [class "btn btn-primary btn-lg btn-success lean-btn"][
        text "Yes, this is fascinating!"
      ],
      button [class "btn btn-primary btn-lg btn-warning lean-btn"][
        text "Hmm, just a bit more..."
      ]
      ],
      div [class "settings-buttons row"] [
      button [class "btn btn-secondary btn-sm lean-btn settings-btn ng-pristine ng-untouched ng-valid ng-binding ng-empty"][
        text "Projector Mode"
      ],
      button [class "btn btn-secondary btn-sm lean-btn settings-btn ng-binding"][
        text "Sounds On"
      ]
      ]
  ]


-- CSS STYLES
styles : { img : List ( String, String ) }
styles =
  {
    img =
      [ ( "width", "33%" )
      , ( "border", "4px solid #337AB7")
      ]
  }
