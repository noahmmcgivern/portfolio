module Asset exposing (linkedIn, elm, logo, octocat, src)



-- Asset
-- Theses are things to include on the page.


import Html
import Html.Styled exposing (Attribute, Html)
import Html.Styled.Attributes as Attr


type Image
    = Image String



-- IMAGES


linkedIn : Image
linkedIn =
    image "linkedIn.png"

elm : Image
elm =
    image "elm.png"

logo : Image
logo =
    image "logo.png"


octocat : Image
octocat =
    image "octocat.png"


image : String -> Image
image filename =
    Image ("/assets/" ++ filename)



-- USING IMAGES


src : Image -> Attribute msg
src (Image url) =
    Attr.src url