module Logic where

import Data.Char (toUpper)

-- | Função que inicia o jogo
jogo :: String -> IO ()
jogo palavraSecreta = do 
                putStrLn "Tente adivinhar a palavra: "
                jogar palavra
                    where palavra = map toUpper palavraSecreta
                

-- | Função principal que recebe as tentativas do usuário até acertar a palavra
jogar :: String -> IO ()
jogar palavraSecreta = 
   do putStr "? "
      palavraTeste <- getLine
      let palavra = map toUpper palavraTeste
      if palavra == palavraSecreta then
         putStrLn "Parabens! Voce acertou!"
      else
         do putStrLn (match palavraSecreta palavra)
            jogar palavraSecreta


-- | Função que indica quais letras em uma string ocorrem na segunda string, se as letras forem diferente preenche com um tracinho
match :: String -> String -> String
match xs ys =
   [if elem x ys then x else '-' | x <- xs]