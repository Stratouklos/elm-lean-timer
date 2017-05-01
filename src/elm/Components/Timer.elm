module Components.Timer exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import String

type Phase = Starting | Voting | Discussing

message : Phase -> Html a
message phase =
  case phase of
    Starting    -> div [class "alert alert-info"] [text "Pick a topic and discuss."]
    Voting      -> div [class "alert alert-success"] [text "That was great! Want more of the same?"]
    Discussing  -> div [class "alert alert-warning"] [text "Remember to stay on topic!"]

startNewTopicBtn = button [class "lean-btn-blue "][text "Start on a new topic"]
timeToWrapUpBtn  = button [class "lean-btn-yellow"][text "Hmm, just a bit more..."]
moreTimeBtn      = button [class "lean-btn-green"][text "Yes, this is fascinating!"]

controlls : Phase -> Html div
controlls phase =
  case phase of
    Starting    -> div [class "buttons row"] [ startNewTopicBtn ]
    Voting      -> div [class "buttons row"] [ startNewTopicBtn, moreTimeBtn, timeToWrapUpBtn]
    Discussing  -> div [class "buttons row"] [ startNewTopicBtn ]
