# Jogo da Forca

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: G1<br>
**Paradigma**: Funcional<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 17/0140571  |  Douglas Farias de Castro      |
| 20/0038141  |  Gustavo Duarte Moreira        |
| 17/0013987  |  João Victor de Oliveira Matos |
| 18/0042378  |  Kathlyn Lara Murussi          |
| 18/0022962  |  Luís Guilherme Gaboardi Lins  |
| 18/0028260  |  Thiago Aparecido Lopes Santos |
| 19/0055294  |  Thiago Siqueira Gomes         |
| 19/0038969  |  Victor Hugo Carvalho Silva    |
| 20/0028677  |  Vitor Manoel Aquino de Brito  |

## Sobre
O jogo da forca é um jogo de adivinhação de palavras em que um jogador escolhe uma palavra secreta e outro jogador tenta adivinhar a palavra, sugerindo letras uma de cada vez. A cada letra incorreta, uma parte do corpo do boneco é desenhada, e o objetivo do jogo é descobrir a palavra antes que ele esteja completo.

O projeto é uma implementação do jogo da forca em Haskell, utilizando conceitos como entrada e saída de dados, manipulação de strings, listas e funções recursivas. A escolha da palavra secreta é feita a partir de uma lista de palavras em português previamente definida, utilizando o modulo Words que contém uma função que seleciona uma palavra de forma aleatória.

## Screenshots
### Escolha do modo de jogo
![Screenshot from 2023-05-05 05-56-52](https://user-images.githubusercontent.com/69691521/236421181-8c20954a-602f-4336-9960-94f43e694388.png)
### Escolha da dificuldade
![Screenshot from 2023-05-05 05-57-01](https://user-images.githubusercontent.com/69691521/236421208-9d4371cb-bd5e-436e-9eb3-402ab9114cc4.png)
### Escolha do tema da palavra
![Screenshot from 2023-05-05 05-57-11](https://user-images.githubusercontent.com/69691521/236421216-cf557f6a-dd67-4cb6-afbd-ca7b4399285b.png)
### Começou a partida
![Screenshot from 2023-05-05 05-59-19](https://user-images.githubusercontent.com/69691521/236421227-df1708ba-2eea-4e7e-bbd6-3e2ab40fe459.png)
### Final da partida
![Screenshot from 2023-05-05 05-59-39](https://user-images.githubusercontent.com/69691521/236421236-efef4390-6be9-414f-ab72-2628631e250e.png)
### Demonstração do modo Multiplayer
![Peek 2023-05-05 06-35](https://user-images.githubusercontent.com/69691521/236424539-082695b0-08cc-4528-9909-c3fb5ad33e53.gif)

## Instalação
**Linguagens**: Haskell<br>
**Tecnologias**: Cabal<br>

Para instalar o Cabal, é necessário ter o GHC (Glasgow Haskell Compiler) instalado no sistema operacional. O GHC é o compilador de Haskell padrão e vem com o Cabal.

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```
ou acesse [Guia de Instalação GHCup](https://www.haskell.org/ghcup)

Depois de instalado, verifique a versão do Cabal com o seguinte comando:

```
cabal --version
```
Para mais informações sobre o uso do Cabal, consulte a documentação oficial em [The Haskell Cabal | Overview](https://www.haskell.org/cabal/)

## Uso

### 1. Baixe o repositório do git;
```
git clone https://github.com/UnBParadigmas2023-1/2023.1_G1_Funcional_Hangman.git
```

### 2. Entre na pasta do jogo;
```
cd 2023.1_G1_Funcional_Hangman
```

### 3. Execute a aplicação;
```
cabal run
```
ou
```
cabal new-run
```
### 4. Limpe a pasta criada pelo cabal;
```
cabal clean
```
ou
```
cabal new-clean
```

## Video

[Vídeo do projeto](https://youtu.be/XPIgcruZTpk)

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) |
| -- | -- | -- |
|  Douglas Farias de Castro      | Criação do esqueleto do projeto, criação da identidade visual, implemetação da interface e interação, implementação dos níveis de dificuldade, auxílio no módulo de lógica, auxílio na documentação e readme | Excelente |
|  Gustavo Duarte Moreira        |Desenvolvimento do módulo de temas com leitura do arquivo; auxílio no módulo de lógica; Documentação e aperfeiçoamento do README.md | Excelente|
|  João Victor de Oliveira Matos | Criação do modulo de lógica e atualização de dependências | Boa |
|  Kathlyn Lara Murussi          |Participamento no levantamento e decisão da proposta do projeto | Ruim |
|  Luís Guilherme Gaboardi Lins  | Participamento no levantamento e decisão da proposta do projeto | Ruim |
|  Thiago Aparecido Lopes Santos | Desenvolvimento da escolha de temas e verificação de inputs válidos no módulo Words | Excelente |
|  Thiago Siqueira Gomes         | Desenvolvimento da criação de estado de uma nova partida e criação de funções para imprimir Interface | Excelente |
|  Victor Hugo Carvalho Silva    | Desenvolvimento das opções dos modos de jogo Single player e Multiplayer, implementação da função de input de palavra sem aparecer no terminal e criação da opção de desistir| Boa |
|  Vitor Manoel Aquino de Brito  | Participamento no levantamento e decisão da proposta do projeto | Ruim |

## Fontes
> - Haskell Documentation. Disponível em: https://www.haskell.org/documentation/
> - Cabal User Guide. Disponível em: https://cabal.readthedocs.io/en/stable/
> - Regras jogo da Forca. Dispnível em: https://pt.wikipedia.org/wiki/Jogo_da_forca
