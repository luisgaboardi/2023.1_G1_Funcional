module Words where

import System.Random (randomRIO)

getPalavraAleatoria :: FilePath -> IO String
getPalavraAleatoria path = do
    content <- readFile path
    let palavras = lines content
    index <- randomRIO (0, length palavras - 1)
    return $ palavras !! index
