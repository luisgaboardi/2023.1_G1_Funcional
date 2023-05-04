module Match where

import Data.Char (toUpper)

data Partida = Partida {
    chancesRestantes :: Int,
    letrasEscolhidas :: [Char],
    letrasIncorretas :: [Char],
    palavraSecreta :: String
} deriving (Show)

novaPartida :: Int -> String -> [Char] -> Partida
novaPartida n chances letrasEscolhidas = Partida n letrasEscolhidas [] palavra
  where palavra = map toUpper chances