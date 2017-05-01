module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onClick )
-- component import example
import Components.Timer exposing (..)

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
coffeeIcon = i [class "fa fa-coffee"][]
logo = div [ class "logo" ][text "Lean ", coffeeIcon, text " Timer"]

view : Model -> Html Msg
view model =
  div [ class "container timer-page"] [
    div [ class "row" ][logo],
    div [ class "row" ][h1 [class "header"][text "Welcome to Lean Coffee"]],
    div [ class "row messages"][ message Starting],
    hr [class "row vertical-line"][],
    div [class "timer row"] [ text "8:00"],
    hr [class "row vertical-line"][],
    controlls Voting,
    div [class "settings-buttons row"] [
      button [class "settings-btn"][ text "Projector Mode"],
      button [class "settings-btn"][text "Sounds On"]
    ]
  ]
