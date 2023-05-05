module Main where

import Interface (logoJogo)
import Words (getPalavraAleatoria, escolheTema)
import Match (novaPartida)
import Logic (jogo, setDificuldade)

main :: IO ()
main = do
  logoJogo 

  -- Chamada da função escolheTema do módulo Words para obter o tema de palavras escolhido pelo usuário
  categoria <- escolheTema "./data"

  -- Chamada da função getPalavraAleatoria do módulo Words para obter uma palavra aleatória do arquivo palavras.txt
  palavraSecreta <- getPalavraAleatoria categoria

  -- Cria e imprime estado da partida
  let partida = novaPartida 6 palavraSecreta "" -- cria uma nova partida com 6 chances e a palavra secreta "PALAVRA"

  -- Chamada da função hangman do módulo Logic para iniciar o jogo
  
  dificuldade<-setDificuldade

  jogo palavraSecreta dificuldade

  print partida
