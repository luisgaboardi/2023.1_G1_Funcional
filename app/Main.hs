module Main where

import HangmanSay (hangmanSay)
import Words (getPalavraAleatoria, escolheTema, getPalavraEscondida, escolheModoDeJogo)
import Match (novaPartida)
import Logic (jogo)

main :: IO ()
main = do

  hangmanSay "Hangman!"

  -- Chamada da função escolheTema do módulo Words para obter o tema de palavras escolhido pelo usuário
  categoria <- escolheTema "./data"

  -- Chamada da função escolheModoDeJogo do módulo Words para obter o modo de jogo escolhido pelo usuário
  modoJogo <- escolheModoDeJogo

  -- De acordo com o modo de jogo faz diferentes chamadas de função
  palavraSecreta <- if modoJogo == 1 then getPalavraAleatoria categoria   -- Chamada da função getPalavraAleatoria do módulo Words para obter uma palavra aleatória do arquivo palavras.txt
                                          else getPalavraEscondida -- Chamada da função getPalavraEscondida do módulo Words para obter uma palavra do usuário
  
  -- Cria e imprime estado da partida
  let partida = novaPartida 6 palavraSecreta "" -- cria uma nova partida com 6 chances e a palavra secreta "PALAVRA"

 -- Chamada da função hangman do módulo Logic para iniciar o jogo

  jogo palavraSecreta

  print partida
