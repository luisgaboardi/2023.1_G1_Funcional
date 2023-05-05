module Main where

import Interface (logoJogo)
import Words (getPalavraAleatoria, escolheTema, getPalavraEscondida, escolheModoDeJogo)
import Match (novaPartida)
import Logic (jogo, setDificuldade)

main :: IO ()
main = do
  logoJogo 

  -- Chamada da função escolheModoDeJogo do módulo Words para obter o modo de jogo escolhido pelo usuário
  modoJogo <- escolheModoDeJogo

  -- A função setDificuldade é chamada e retorna o número de chances de acordo com a dificuldade
  chances<-setDificuldade

  -- De acordo com o modo de jogo faz diferentes chamadas de função
  palavraSecreta <- if modoJogo == 1 then do
                      -- Chamada da função escolheTema do módulo Words para obter o tema de palavras escolhido pelo usuário
                      categoria <- escolheTema "./data"
                      getPalavraAleatoria categoria   -- Chamada da função getPalavraAleatoria do módulo Words para obter uma palavra aleatória do arquivo palavras.txt
                    else getPalavraEscondida                              -- Chamada da função getPalavraEscondida do módulo Words para obter uma palavra do usuário
  
  -- Cria e imprime estado da partida
  let partida = novaPartida 6 palavraSecreta "" -- cria uma nova partida com 6 chances e a palavra secreta "PALAVRA"

  -- Chamada da função hangman do módulo Logic para iniciar o jogo

  jogo palavraSecreta chances

  print partida
