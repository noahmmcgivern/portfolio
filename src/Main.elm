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
import FontAwesome exposing (aws, cubes, docker, draftingCompass, gitHub, linkedIn, icon)
import Html exposing (..)
import Html.Attributes as Attr



-- MAIN


main : Program () {} msg
main =
    Browser.sandbox
        { init = {}
        , view = view
        , update = \_ _ -> {}
        }



-- VIEW


descriptionSrc : List ( FontAwesome.Icon, String, List (Html msg) )
descriptionSrc =
    [ ( draftingCompass, "Front End", Asset.descFrontend )
    , ( cubes, "Back End", Asset.descBackend )
    , ( aws, "Cloud", Asset.descCloud )
    , ( docker, "Systems", Asset.descSystems )
    ]


imageSrc : List ( FontAwesome.Icon, String )
imageSrc =
    [ ( linkedIn, "https://www.linkedin.com/in/noah-mcgivern/" )
    , ( gitHub, "https://github.com/noahmmcgivern" )
    ]


logo : List (Grid.Column msg)
logo =
    [ Grid.col [ Col.md12 ]
            [ img
                [ Attr.src Asset.logo
                , Attr.style "display" "block"
                , Attr.style "margin" "0 auto"
                , Attr.style "maxWidth" "300px"
                , Attr.style "pointer-events" "none"
                ]
                []
            ]
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


image : ( FontAwesome.Icon, String ) -> Grid.Column msg
image ( faicon, link ) =
    Grid.col
        [ Col.md6
        , Col.sm12
        , Col.attrs [ Attr.style "text-align" "center" ]
        ]
        [ a
            [ Attr.href link
            , Attr.style "color" "white"
            , Attr.style "display" "inline-block"
            , Attr.style "margin-bottom" "30px"
            , Attr.style "margin-top" "30px"
            ]
            [ icon faicon ]
        ]


view : model -> Html msg
view _ =
    Grid.container []
        [ CDN.stylesheet
        , Grid.row [] <| logo
        , Grid.row [] <| List.map image imageSrc
        --, Grid.row [] <| List.map description descriptionSrc
        ]
