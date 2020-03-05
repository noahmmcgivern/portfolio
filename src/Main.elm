module Main exposing (..)



-- Noah McGivern
--


import Asset
import Bootstrap.Card.Block as Block
import Bootstrap.Button as Button
import Bootstrap.CDN as CDN
import Bootstrap.Card as Card
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col
import Bootstrap.Utilities.Spacing as Spacing
import Browser
import Html exposing (..)
import Html.Attributes as Attr



-- MAIN


main : Program () Model Msg
main =
  Browser.sandbox
    { view = view
    , update = update
    , init = init
    }



-- MODEL


type alias Model = ()


init : Model
init =
  ()



-- UPDATE


type Msg
  = Action


update : Msg -> Model -> Model
update msg model =
  model



-- VIEW


imageSrc : List (String, String)
imageSrc =
    [ ("https://www.linkedin.com/in/noah-mcgivern/", Asset.linkedIn)
    , ("https://elm-lang.org/", Asset.elm)
    , ("https://github.com/noahmmcgivern", Asset.octocat)
    ]


image : (String, String) -> Grid.Column msg
image (link, asset) =
  Grid.col [ Col.md4, Col.sm12 ]
    [ a [ Attr.href link ]
        [ img [ Attr.src asset, Attr.style "width" "100%" ] [] ]
    ]


logo : List (Grid.Column msg)
logo =
  [ Grid.col [ Col.md12 ]
      [ a [ Attr.href "#" ]
              [ img
                  [ Attr.src Asset.logo
                  , Attr.style "display" "block"
                  , Attr.style "margin-left" "auto"
                  , Attr.style "margin-right" "auto"
                  , Attr.style "width" "600px"
                  , Attr.style "maxWidth" "100%"
                  ] []
              ]
      ]
  ]


view : Model -> Html Msg
view model =
    Grid.container []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row [] <| logo
        , Grid.row [] <| List.map image imageSrc
        ]