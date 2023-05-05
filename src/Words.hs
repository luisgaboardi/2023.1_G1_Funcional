module Words where

import System.Random (randomRIO)
import System.Directory (doesFileExist, getDirectoryContents)
import System.FilePath ((</>), takeBaseName)
import Control.Monad (filterM)
import Text.Read(readMaybe)
import System.IO

getPathArquivosTexto :: FilePath -> IO [FilePath]
getPathArquivosTexto path = do
    content <- getDirectoryContents path
    let filePathList = map (path </>) content
    files <- filterM doesFileExist filePathList
    return files

getNomesArquivos :: [FilePath] -> IO [(Int, String)]
getNomesArquivos pathsArquivos = return $ zip [1..] (map takeBaseName pathsArquivos)

getInputValido :: Int -> IO Int
getInputValido qtdArquivos = do
    input <- getLine
    case readMaybe input of
        Just n | n >= 1 && n <= qtdArquivos -> return n
        _ -> do
            putStrLn "Entrada inválida. Tente novamente."
            getInputValido qtdArquivos

escolheTema :: FilePath -> IO FilePath
escolheTema dir = do
    pathsArquivos <- getPathArquivosTexto dir
    nomesArquivos <- getNomesArquivos pathsArquivos
    let qtdArquivos = length pathsArquivos
    putStrLn "Temas: "
    mapM_ (\(i, nomeArquivo) -> putStrLn ("[" ++ show i ++ "] " ++ nomeArquivo)) nomesArquivos
    putStrLn "\nSelecione o número do tema que você deseja: "
    input <- getInputValido qtdArquivos
    let pathTemaSelecionado = pathsArquivos !! (input - 1)
    return pathTemaSelecionado

getPalavraAleatoria :: FilePath -> IO String
getPalavraAleatoria path = do
    content <- readFile path
    let palavras = lines content
    index <- randomRIO (0, length palavras - 1)
    return $ palavras !! index

getPalavraEscondida :: IO String
getPalavraEscondida = do
    putStrLn "\nDigite a palavra para seu oponente tentar adivinhar de acordo com o tema escolhido:"
    hSetEcho stdin False 
    palavra <- getLine 
    hSetEcho stdin True  
    return palavra

escolheModoDeJogo :: IO Int
escolheModoDeJogo = do
    putStrLn "\nModos de jogo:"
    putStrLn "[1] Single player"
    putStrLn "[2] Multiplayer"
    putStrLn "\nSelecione o número do modo de jogo que você deseja: "
    modoJogo <- getInputValido 2
    return modoJogo
