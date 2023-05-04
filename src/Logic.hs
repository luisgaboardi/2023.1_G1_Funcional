module Logic where

import System.IO 

-- | Função que inicia o jogo
jogo :: String -> IO ()
jogo palavaSecreta = do 
                putStrLn "Tente adivinhar a palavra: "
                jogar palavraSecreta

-- | Função que le um caracter sem mostrar na tela
getCh :: IO Char
getCh = do hSetEcho stdin False
           x <- getChar
           hSetEcho stdin True
           return x

-- | Função principal que recebe as tentativas do usuário até acertar a palavra
jogar :: String -> IO ()
jogar palavraSecreta = 
   do putStr "? "
      palavraTeste <- getLine
      if palavraTeste == palavraSecreta then
         putStrLn "Parabens! Voce acertou!"
      else
         do putStrLn (match palavraSecreta palavraTeste)
            play palavraSecreta


-- | Função que indica quais letras em uma string ocorrem na segunda string, se as letras forem diferente preenche com um tracinho
match :: String -> String -> String
match xs ys =
   [if elem x ys then x else '-' | x <- xs]