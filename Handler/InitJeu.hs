module Handler.InitJeu where

import Import

getInitJeuR :: Handler Html
getInitJeuR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "InitJeu"
        $(widgetFile "initjeu")


postInitJeuR :: Handler Html
postInitJeuR = error "HEJHEJ"

