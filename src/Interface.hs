module Interface where

import System.Console.ANSI
import System.Exit(exitSuccess)


logoJogo :: IO ()
logoJogo = do
  clearFromCursorToScreenBeginning
  let logoJogo = ["                                                                                                            ","          @@@         @@@@@@@         @@@@@@@         @@@@@@@             @@@@@@@@@@@@@@@@@@@@@@@@@         ","          @@@        @@@@@@@@@       @@@@@@@@@       @@@@@@@@@            @            @@@      @@@         ","          @@@        @@@   @@@       @@@             @@@   @@@            @              @@@    @@@         ","          @@@        @@@   @@@       @@@             @@@   @@@            @               @@@   @@@         ","          @@@        @@@   @@@       @@@   @@@       @@@   @@@         ,@@@@@,              @@@(@@@         ","     @@@  @@@        @@@   @@@       @@@   @@@       @@@   @@@         @     @                @@@@@         ","     @@@@@@@@        @@@@@@@@@       @@@@@@@@@       @@@@@@@@@         @     @                 @@@@         ","      @@@@@@          @@@@@@@         @@@@@@@         @@@@@@@          ,@@@@@,                  @@@         ","    _____________   _____________   _____________   _____________         @                     @@@         ","                                                                       @@@@@@@                  @@@         ","                      @@@@@@@@         @@@@@@@                        @@  @   @@                @@@         ","                      @@@@@@@@@       @@@   @@@                      @    @     @               @@@         ","                      @@@   @@@       @@@   @@@                           @                     @@@         ","                      @@@   @@@       @@@@@@@@@                          @@@@                   @@@         ","                      @@@   @@@       @@@@@@@@@                        @@    @@                 @@@         ","                      @@@@@@@@@       @@@   @@@                        @      @                 @@@         ","                      @@@@@@@@        @@@   @@@                        @      @                 @@@         ","                    _____________   _____________                                               @@@         ","                                                                                                @@@         ","    @@@@@@@@@        @@@@@@@         @@@@@@@         @@@@@@@@        @@@@@@@                    @@@         ","    @@@@@@@@@       @@@@@@@@@       @@@@@@@@@       @@@@@@@@@       @@@   @@@                   @@@         ","    @@@             @@@   @@@       @@@   @@@       @@@             @@@   @@@                   @@@         ","    @@@@@@@         @@@   @@@       @@@@@@@@        @@@             @@@@@@@@@                   @@@         ","    @@@@@@@         @@@   @@@       @@@@@@          @@@             @@@@@@@@@                   @@@         ","    @@@             @@@@@@@@@       @@@  @@@        @@@@@@@@@       @@@   @@@                   @@@         ","    @@@              @@@@@@@        @@@   @@@        @@@@@@@@       @@@   @@@               @@@@@@@@@@      ","  _____________   _____________   _____________   _____________   _____________             @@@@@@@@@@      ","                                                                                                            "]
  setSGR [SetColor Foreground Vivid White] 
  mapM_ putStrLn $ logoJogo
  setTitle "JOGO DA FORCA"
  
telaFim :: String -> Int -> IO ()
telaFim palavraSecreta tipo = do
  clearFromCursorToScreenBeginning
  let txtDerrota = ["                                                                                                                        ","     @@@   @@@   @@@@@@@     @@@@@@@   @@@@@@@@      @@@@@@@    @@@@@@@@  @@@@@@@@   @@@@@@@@    @@@@@@@@  @@@   @@@    ","     @@@   @@@  @@@@@@@@@  @@@@@@@@@  @@@@@@@@@     @@@@@@@@@  @@@@@@@@@  @@@@@@@@@  @@@@@@@@@  @@@@@@@@@  @@@   @@@    ","     @@@   @@@  @@@   @@@  @@@        @@@           @@@   @@@  @@@        @@@   @@@  @@@   @@@  @@@        @@@   @@@    ","     @@@   @@@  @@@   @@@  @@@        @@@@@@@@@     @@@   @@@  @@@@@@@@@  @@@   @@@  @@@   @@@  @@@@@@@@@  @@@   @@@    ","     @@@   @@@  @@@   @@@  @@@        @@@@@@@@@     @@@@@@@@   @@@@@@@@@  @@@@@@@@   @@@   @@@  @@@@@@@@@  @@@   @@@    ","      @@@ @@@   @@@   @@@  @@@        @@@           @@@        @@@        @@@ @@@    @@@   @@@  @@@        @@@   @@@    ","       @@@@@    @@@@@@@@@  @@@@@@@@@  @@@@@@@@@     @@@        @@@@@@@@@  @@@  @@@   @@@@@@@@@  @@@@@@@@@  @@@@@@@@@    ","        @@@      @@@@@@@    @@@@@@@@   @@@@@@@@     @@@         @@@@@@@@  @@@   @@@  @@@@@@@@    @@@@@@@@   @@@@@@@     ","                                                                                                                        "]
  let txtVitoria = [ "                                                                                                                       ", "     @@@   @@@   @@@@@@@     @@@@@@@   @@@@@@@@     @@@@@@@@   @@@@@@@   @@@   @@@  @@@   @@@   @@@@@@@   @@@   @@@    ", "     @@@   @@@  @@@@@@@@@  @@@@@@@@@  @@@@@@@@@    @@@@@@@@@  @@@@@@@@@  @@@@  @@@  @@@   @@@  @@@@@@@@@  @@@   @@@    ", "     @@@   @@@  @@@   @@@  @@@        @@@          @@@        @@@   @@@  @@@@@ @@@  @@@   @@@  @@@   @@@  @@@   @@@    ", "     @@@   @@@  @@@   @@@  @@@        @@@@@@@@@    @@@        @@@   @@@  @@@@@@@@@  @@@@@@@@@  @@@   @@@  @@@   @@@    ", "     @@@   @@@  @@@   @@@  @@@        @@@@@@@@@    @@@   @@@  @@@@@@@@@  @@@@@@@@@  @@@@@@@@@  @@@   @@@  @@@   @@@    ", "      @@@ @@@   @@@   @@@  @@@        @@@          @@@   @@@  @@@@@@@@@  @@@ @@@@@  @@@   @@@  @@@   @@@  @@@   @@@    ", "       @@@@@    @@@@@@@@@  @@@@@@@@@  @@@@@@@@@    @@@@@@@@@  @@@   @@@  @@@  @@@@  @@@   @@@  @@@@@@@@@  @@@@@@@@@    ", "        @@@      @@@@@@@    @@@@@@@@   @@@@@@@@     @@@@@@@   @@@   @@@  @@@   @@@  @@@   @@@   @@@@@@@    @@@@@@@  @  ", "                                                                                                                       "]
  
  if (tipo == 1) then do
    setSGR [SetColor Foreground Vivid Red] 
    mapM_ putStrLn $ txtDerrota
  else do
    setSGR [SetColor Foreground Vivid Green]
    mapM_ putStrLn $ txtVitoria
    
  putStr "A palavra era "
  putStrLn palavraSecreta
  exitSuccess


imprimirLetrasErradas :: String -> IO ()
imprimirLetrasErradas letrasErradasFiltradas = do
  setSGR [SetColor Foreground Vivid White]
  putStrLn "logoJogo"
  setSGR [SetColor Background Vivid Red]
  putStr "Letras erradas: "
  putStr letrasErradasFiltradas
  setSGR [Reset]
  putStrLn ""

imprimirChances :: Int -> IO ()
imprimirChances chances = do
  setSGR [SetColor Foreground Vivid White]
  setSGR [SetColor Background Vivid Red]
  putStr "Chances: "
  putStr (show chances)
  setSGR [Reset]
  putStrLn "\n"

imprimirLetrasEncontradas :: String -> IO ()
imprimirLetrasEncontradas estadoAtual = do
  setSGR [SetColor Foreground Vivid Black]
  setSGR [SetColor Background Vivid White] 
  putStr "Tente adivinhar a palavra: "
  putStr estadoAtual
  setSGR [Reset]
  putStrLn "\n" 
