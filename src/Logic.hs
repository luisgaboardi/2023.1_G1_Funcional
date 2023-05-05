module Logic where

import Data.Char (toUpper)


-- | Função que inicia o jogo
jogo :: String -> IO ()
jogo palavraSecreta = do 
    putStrLn "Tente adivinhar a palavra: "
    -- passar a palavraSecreta para maiuscula e chamar a função jogar
    jogar (map toUpper palavraSecreta) (replicate (length palavraSecreta) '-') []

-- | Função principal que recebe as tentativas do usuário até acertar a palavra
jogar :: String -> String -> [Char] -> IO ()
jogar palavraSecreta estadoAtual letrasErradas = do 
    putStrLn estadoAtual
    -- imprime as letras erradas
    putStr "Letras erradas: "
    putStrLn $ filter (`notElem` palavraSecreta) letrasErradas
    -- verifica se o usuário acertou a palavra
    if all (`elem` estadoAtual) palavraSecreta then
        putStrLn "Parabens! Voce acertou!"
    -- se não acertou, pede uma nova tentativa
    else do
        putStr "? "
        palavraTeste <- getLine
        let palavra = map toUpper palavraTeste
        if palavra == "DESISTIR" then
            putStr ("\nVocê Perdeu! A palavra correta era: " ++ palavraSecreta ++ "\n")
        else do
            let (novoEstado, novasLetrasErradas) = estadoPalavra palavraSecreta palavra estadoAtual letrasErradas
            -- chama a função jogar novamente com o novo estado recusivo
            jogar palavraSecreta novoEstado novasLetrasErradas



-- | Função que retorna a palavra secreta com as letras corretas preenchidas e os traços para as letras não acertadas
estadoPalavra :: String -> String -> String -> [Char] -> (String, [Char])
estadoPalavra secreta palavra estadoAnterior letrasErradas =
   -- zip secreta estadoAtual -> cria uma lista de tuplas com as letras da palavra secreta e as letras acertadas
  let estadoAtual = [ if c `elem` palavra then c else estadoAnterior!!i | (c,i) <- zip secreta [0..] ]
  -- filtra as letras erradas
      novasLetrasErradas = filter (`notElem` estadoAnterior) palavra
   -- retorna a palavra secreta com as letras corretas preenchidas e os traços para as letras não acertadas
  in (map displayChar (zip secreta estadoAtual), letrasErradas ++ novasLetrasErradas)
  where
    displayChar (c1, c2)
      | c1 == c2 = c1
      | otherwise = '-'



-- | Função que indica quais letras em uma string ocorrem na segunda string, se as letras forem diferente preenche com um tracinho
match :: String -> String -> String
match xs ys =
   [if elem x ys then x else '-' | x <- xs]
