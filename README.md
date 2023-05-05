# NomeDoProjeto(Criar um nome)

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
![Screenshot from 2023-05-05 00-55-51](https://user-images.githubusercontent.com/32913216/236375321-48245e61-7103-4fdd-957c-1bf97f3fb7b0.png)

![Screenshot from 2023-05-05 00-57-13](https://user-images.githubusercontent.com/32913216/236375307-b2d07d4f-f034-48ce-aaf6-6e5d58704bb6.png)

![teste](https://user-images.githubusercontent.com/32913216/236376613-ac7e9354-919a-43cd-84e6-4bdecbeaddd7.gif)


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


## Vídeo
Adicione 1 ou mais vídeos com a execução do projeto.
Procure: 
(i) Introduzir o projeto;
(ii) Mostrar passo a passo o código, explicando-o, e deixando claro o que é de terceiros, e o que é contribuição real da equipe;
(iii) Apresentar particularidades do Paradigma, da Linguagem, e das Tecnologias, e
(iV) Apresentar lições aprendidas, contribuições, pendências, e ideias para trabalhos futuros.
OBS: TODOS DEVEM PARTICIPAR, CONFERINDO PONTOS DE VISTA.
TEMPO: +/- 15min

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) |
| -- | -- | -- |
|  Douglas Farias de Castro      | | |
|  Gustavo Duarte Moreira        |Desenvolvimento do módulo de temas com leitura do arquivo; auxílio no móludo de lógica; Documentação e aperfeiçoamento do README.md | Exelente|
|  João Victor de Oliveira Matos | | |
|  Kathlyn Lara Murussi          | | |
|  Luís Guilherme Gaboardi Lins  | | |
|  Thiago Aparecido Lopes Santos | | |
|  Thiago Siqueira Gomes         | | |
|  Victor Hugo Carvalho Silva    | | |
|  Vitor Manoel Aquino de Brito  | | |

## Outros 
Quaisquer outras informações sobre o projeto podem ser descritas aqui. Não esqueça, entretanto, de informar sobre:
(i) Lições Aprendidas;
(ii) Percepções;
(iii) Contribuições e Fragilidades, e
(iV) Trabalhos Futuros.

## Fontes
> - Haskell Documentation. Disponível em: https://www.haskell.org/documentation/
> - Cabal User Guide. Disponível em: https://cabal.readthedocs.io/en/stable/
> - Regras jogo da Forca. Dispnível em: https://pt.wikipedia.org/wiki/Jogo_da_forca
