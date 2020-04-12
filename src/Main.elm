module Main exposing (main)

-- Noah McGivern
--

import Asset
import Bootstrap.CDN as CDN
import Bootstrap.Card as Card
import Bootstrap.Card.Block as Block
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Utilities.Spacing as Spacing
import Browser
import FontAwesome exposing (aws, cubes, docker, draftingCompass, icon, userShield)
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


type alias Model =
    ()


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


descriptionSrc : List ( FontAwesome.Icon, String, List (Html msg) )
descriptionSrc =
    [ ( draftingCompass, "Front-end", Asset.descFrontend )
    , ( cubes, "Back-end", Asset.descBackend )
    , ( docker, "Systems", Asset.descSystems )
    , ( aws, "Cloud", Asset.descCloud )
    , ( userShield, "Security", Asset.descSecurity )
    ]


imageSrc : List ( String, String )
imageSrc =
    [ ( "https://www.linkedin.com/in/noah-mcgivern/", Asset.linkedIn )
    , ( "https://elm-lang.org/", Asset.elm )
    , ( "https://github.com/noahmmcgivern", Asset.octocat )
    ]


description : ( FontAwesome.Icon, String, List (Html msg) ) -> Grid.Column msg
description ( faicon, title, desc ) =
    Grid.col [ Col.md4, Col.sm12, Col.attrs [ Attr.style "position" "relative", Attr.style "margin-bottom" "15px" ] ]
        [ Card.config [ Card.attrs [ Attr.style "height" "100%" ] ]
            |> Card.headerH1 [ Attr.class "text-center" ]
                [ icon faicon
                , h4 [] [ text title ]
                ]
            |> Card.block []
                [ Block.text [] desc ]
            |> Card.view
        ]


image : ( String, String ) -> Grid.Column msg
image ( link, asset ) =
    Grid.col
        [ Col.md4
        , Col.sm12
        , Col.attrs
            [ Attr.style "position" "relative"
            , Attr.style "background-color" "white"
            , Attr.style "border-radius" "10%"
            , Attr.style "margin-bottom" "15px"
            ]
        ]
        [ a [ Attr.href link ]
            [ img
                [ Attr.src asset
                , Attr.style "display" "block"
                , Attr.style "margin-left" "auto"
                , Attr.style "margin-right" "auto"
                , Attr.style "position" "relative"
                , Attr.style "top" "50%"
                , Attr.style "transform" "translateY(-50%)"
                , Attr.style "width" "80%"
                , Spacing.mb4
                ]
                []
            ]
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
                , Attr.style "width" "500px"
                , Attr.style "maxWidth" "100%"
                ]
                []
            ]
        ]
    ]


view : Model -> Html Msg
view _ =
    Grid.container []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row [] <| logo
        , Grid.row [] <| List.map description descriptionSrc
        , Grid.row [] <| List.map image imageSrc
        ]
