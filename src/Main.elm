module Main exposing (..)



-- Noah McGivern
--


import Asset
import Browser
import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes as Attr exposing (css, href, src)



-- MAIN


main : Program () Model Msg
main =
  Browser.sandbox
        { view = view >> toUnstyled
        , update = update
        , init = init
        }



-- THEME


theme : { primary : Color}
theme =
  { primary = hex "030723" }


image : Float -> List Style
image float =
  [ display block
  , height (px float)
  , width (px float)
  , margin auto
  ]


background : List Style
background =
  [ backgroundColor theme.primary ]


container : List Style
container =
  [ display Css.table
  , width (pct 100)
  ]


element : List Style
element =
  [ display tableCell ]



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


view : Model -> Html Msg
view model =
  div [ css background ]
    [ a [ Attr.href "#" ]
        [ img [ Asset.src Asset.logo
              , css (image 600)
              ] [] ]
    , div [ css [ height (px 100) ] ] []
    , div [ css container ]
        [ div [ css element ]
            [ a [ Attr.href "https://www.linkedin.com/in/noah-mcgivern/" ]
                [ img [ Asset.src Asset.linkedIn
                      , css (image 300)
                      ] [] ]
            ]
        , div [ css element ]
            [ a [ Attr.href "https://elm-lang.org/" ]
                [ img [ Asset.src Asset.elm
                      , css (image 300)
                      ] [] ]
            ]
        , div [ css element ]
            [ a [ Attr.href "https://github.com/noahmmcgivern" ]
                [ img [ Asset.src Asset.octocat
                      , css (image 300)
                      ] [] ]
            ]
        ]
    , div [ css [ height (px 200) ] ] []
    ]