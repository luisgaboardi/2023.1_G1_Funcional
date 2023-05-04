module Words where

import System.Random (randomRIO)
import System.Directory (doesFileExist, getDirectoryContents)
import System.FilePath ((</>), takeBaseName)
import Control.Monad (filterM)

getAllFilePaths :: FilePath -> IO [FilePath]
getAllFilePaths path = do
    content <- getDirectoryContents path
    let filePathList = map (path </>) content
    files <- filterM doesFileExist filePathList
    return files

getFileNames :: [FilePath] -> IO [(Int, String)]
getFileNames filePaths = return $ zip [1..] (map takeBaseName filePaths)

chooseFileFromFolder :: FilePath -> IO FilePath
chooseFileFromFolder dir = do
    filePaths <- getAllFilePaths dir
    fileNames <- getFileNames filePaths
    let numFiles = length filePaths
    mapM_ (\(i, fileName) -> putStrLn (show i ++ ". " ++ fileName)) fileNames
    putStrLn "Selecione o número do arquivo que você deseja: "
    input <- getValidInput numFiles
    let selectedFilePath = filePaths !! (input - 1)
    return selectedFilePath

getValidInput :: Int -> IO Int
getValidInput maxInput = do
    input <- getLine
    case readMaybe input of
        Just n | n >= 1 && n <= maxInput -> return n
        _ -> do
            putStrLn "Entrada inválida. Tente novamente."
            getValidInput maxInput

readMaybe :: Read a => String -> Maybe a
readMaybe s = case reads s of
    [(x,"")] -> Just x
    _ -> Nothing

getPalavraAleatoria :: FilePath -> IO String
getPalavraAleatoria path = do
    content <- readFile path
    let palavras = lines content
    index <- randomRIO (0, length palavras - 1)
    return $ palavras !! index
