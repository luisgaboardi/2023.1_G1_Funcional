module Main where

import HangmanSay (hangmanSay)
import Words (getPalavraAleatoria, chooseFileFromFolder)
import Match (novaPartida)

main :: IO ()
main = do

  hangmanSay "Hangman!"

  -- Chamada da função chooseFileFromFolder do módulo Words para obter o tema de palavras escolhido pelo usuário
  categoria <- chooseFileFromFolder "./data"

  -- Chamada da função getPalavraAleatoria do módulo Words para obter uma palavra aleatória do arquivo palavras.txt
  palavraSecreta <- getPalavraAleatoria categoria

  -- Cria e imprime estado da partida
  let partida = novaPartida 6 palavraSecreta "" -- cria uma nova partida com 6 chances e a palavra secreta "PALAVRA"

  print partida
