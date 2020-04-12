module Asset exposing
    ( descBackend
    , descCloud
    , descFrontend
    , descSecurity
    , descSystems
    , elm
    , linkedIn
    , logo
    , octocat
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
        """I deliver invaluable information through REST / SOAP APIs built using .NET Framework (C#/F#),

            node.js plus additional frameworks like Serverless or Nest.js (JavaScript/TypeScript),

            Spring Framework (Java/Kotlin/Scala),

            and Django (Python)."""


descCloud : List (Html msg)
descCloud =
    descriptionParagraph
        """I carry cloud competence through practice in production environments primarily using Amazon Web Services and Microsoft Azure.
            
            No matter the challenge at hand, I am able to engineer simple solutions using many of the popular, modern PaaS providers."""


descFrontend : List (Html msg)
descFrontend =
    descriptionParagraph
        """I am comfortable creating user experiences with popular JavaScript node.js frameworks like React, Angular, Vue, Gatsby, Next.
            
            I also enjoy exploring the cutting-edge frontiers of JavaScript by studying TypeScript, Elm and PureScript."""


descSecurity : List (Html msg)
descSecurity =
    descriptionParagraph
        """Ethical hacking is a hobby of mine.
            
            I enjoy learning and teaching on topics like Bad USBs, Fuzz Testing/Exploit Development and Computer Forensics with Volatility.
            
            I apply it to my current work by implementing security functionality into our organization's development pipeline
            
            and when I'm charged with the responsibilty of Incident Response for our API services."""


descSystems : List (Html msg)
descSystems =
    descriptionParagraph
        """I build cloud development and production environments with IaC: Docker/Kubernetes, HashiCorp Stack, CloudFormation and ARM templates.
            
            I thoroughly enjoy virtualization and even have a home lab to experiment with these different technologies."""



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
