module Main where

import HangmanSay (hangmanSay)
import Words (getPalavraAleatoria)



main :: IO ()
main = do

  hangmanSay "Hangman!"
  
  -- Chamada da função getPalavraAleatoria do módulo Words para obter uma palavra aleatória do arquivo palavras.txt
  palavra <- getPalavraAleatoria "./data/palavras.txt"
  
  -- Imprime a palavra escolhida como teste para ver o funcionamento da função
  putStrLn ("Esta é a palavra para o jogo: " ++ palavra)
