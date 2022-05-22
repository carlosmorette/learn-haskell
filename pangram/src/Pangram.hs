module Pangram (isPangram) where
import Data.Char(toLower)

isPangram :: String -> Bool
isPangram text = doIsPangram (cleanText text)

doIsPangram :: String -> Bool
doIsPangram text = foldl (\acc i ->
                            if acc == True then
                              if (elem i text) then True else False
                            else
                              False
                         ) True ['a'..'z']

cleanText :: String -> String
cleanText text = map toLower text
