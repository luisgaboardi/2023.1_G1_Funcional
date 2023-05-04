module Words where

import System.Random (randomRIO)
import System.Directory (doesFileExist, getDirectoryContents)
import System.FilePath ((</>), takeBaseName)
import Control.Monad (filterM)
import Text.Read(readMaybe)

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
    mapM_ (\(i, nomeArquivo) -> putStrLn (show i ++ ". " ++ nomeArquivo)) nomesArquivos
    putStrLn "Selecione o número do arquivo que você deseja: "
    input <- getInputValido qtdArquivos
    let pathTemaSelecionado = pathsArquivos !! (input - 1)
    return pathTemaSelecionado

getPalavraAleatoria :: FilePath -> IO String
getPalavraAleatoria path = do
    content <- readFile path
    let palavras = lines content
    index <- randomRIO (0, length palavras - 1)
    return $ palavras !! index
