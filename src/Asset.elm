module Asset exposing
    ( descBackend
    , descCloud
    , descFrontend
    , descSystems
    , logo
    )

-- Asset
-- These are things to include on the page.

import Html exposing (Html, br, text)


website : String
website =
    "https://noahmcgivern.com"



-- DESCRIPTIONS


descriptionParagraph : String -> List (Html msg)
descriptionParagraph description =
    List.intersperse (br [] []) (List.map text (String.lines description))


descBackend : List (Html msg)
descBackend =
    descriptionParagraph
        """I deliver invaluable information through GraphQL, REST and SOAP APIs. I have enterprise experience with Java and Spring Framework. My functional back-end language of choice is Elixir, utilizing the Phoenix Framework."""


descCloud : List (Html msg)
descCloud =
    descriptionParagraph
        """I carry cloud competence through practice in production environments using Amazon Web Services."""


descFrontend : List (Html msg)
descFrontend =
    descriptionParagraph
        """I design browser-based user-interfaces in JavaScript with the help of Reactjs and Gatsbyjs frameworks. I also really enjoy Elm!"""


descSystems : List (Html msg)
descSystems =
    descriptionParagraph
        """I build containerized distributed environments (as code) with Docker, Kubernetes, Ansible, Terraform, CloudFormation and a proficiency in Debian/Ubuntu Linux."""



-- IMAGES


image : String -> String
image filename =
    website ++ "/assets/" ++ filename

logo : String
logo =
    image "logo.png"
