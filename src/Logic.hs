module Logic where

import System.IO 

hangman :: String -> IO ()
hangman word = do 
                putStrLn "Tente adivinhar a palavra: "
                play word

getCh :: IO Char
getCh = do hSetEcho stdin False
           x <- getChar
           hSetEcho stdin True
           return x


play :: String -> IO ()
play word = 
   do putStr "? "
      guess <- getLine
      if guess == word then
         putStrLn "You got it!"
      else
         do putStrLn (match word guess)
            play word


match :: String -> String -> String
match xs ys =
   [if elem x ys then x else '-' | x <- xs]