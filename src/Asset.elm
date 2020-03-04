module Asset exposing (linkedIn, elm, logo, octocat)



-- Asset
-- These are things to include on the page.


website : String
website =
  "https://noahmcgivern.com"



-- IMAGES


image : String -> String
image filename =
  website ++ "/assets/" ++ filename


linkedIn : String
linkedIn =
  image "linkedIn.png"


elm : String
elm =
  image "elm.png"


logo : String
logo =
  image "logo.png"


octocat : String
octocat =
  image "octocat.png"