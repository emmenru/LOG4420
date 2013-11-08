{-# LANGUAGE TupleSections, OverloadedStrings #-}
module Handler.Home where

import Import

-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.



footer :: Widget 
footer = do 
    toWidget 
        [lucius|footer{background-color:red}|] 
    toWidget
        [hamlet|<footer><p>Castle Death - Lone Wolf par Konstantinos Lambrou-Latreille|]

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        addStylesheetRemote "https://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/dot-luv/jquery-ui.css"
        addScriptRemote "http://code.jquery.com/jquery-1.10.1.js"
        addScriptRemote "https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"
        addScriptRemote "https://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"        
        aDomId <- newIdent
        setTitle "Accueil"
        $(widgetFile "accueil")

postHomeR :: Handler Html
postHomeR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "Accueil"
        $(widgetFile "accueil")
