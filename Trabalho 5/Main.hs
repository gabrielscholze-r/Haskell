import Text.Printf
{-
1. Em Haskell temos um conjunto de tipos especiais: Maybe, Nothing e Just seu trabalho será
criar no repl.it um código, comentado, que explique estes tipos, sua funcionalidade e que
contenha quatro exemplos do seu uso. Com uma restrição: você deve evitar qualquer
explicação que inclua o uso de Monads. Lembre-se entre estes exemplos, um deve ser de
sua autoria e todos os outros precisam ter suas fontes citadas.
-}
{-
Uma variável do tipo Maybe a contém ou uma variável do tipo de a (Just a) ou é vazio (Nothing)
- Just: representa se o valor esta presente dentro do tipo da variável Maybe
- Nothing: Representa se o valor não esta presente dentro do valor do tipo Maybe, retornando um valor vazio, nulo.
-}
{-
A função abaixo identifica numeros impares. Caso o número fornecido seja ímpar, retorna o ele próprio, se não, returna Nothing
-}
impar :: Int -> Maybe Int
impar x
  |x`mod`2 == 0 = Nothing
  |otherwise = Just x

{-
A função abaixo identifica por meio de uma string de entrada um dos paises que participou da guerra do vietnã retornando a quantidade de soldados que participaram da guerra do respectivo pais
-}

vietna :: String -> Maybe Int
vietna x 
  |x=="Estados Unidos" = Just 2500000
  |x=="Vietnã do Norte" = Just 700000
  |otherwise = Nothing

{-
A função abaixo recebe de entrada o nome de uma banda e retorna a quantidade de músicas desta banda
-}
musicas :: String -> Maybe Int
musicas x
  |x=="Coldplay"= Just 160
  |x=="Green Day"=Just 44
  |x=="Iron Maiden"=Just 186
  |x=="Metallica"=Just 45
  |x=="Guns n Roses"=Just 21
  |otherwise = Nothing


{-
A função abaixo mostra a quantidade de cordas de um instrumento conforme a entrada dada pelo usuario
-}
cordas :: String -> Maybe Int
cordas x
  |x=="Violão"=Just 6
  |x=="Baixo"= Just 4
  |x=="Cavaquinho"=Just 4
  |x=="Ukulele"=Just 4
  |x=="Violino"=Just 4
  |x=="Harpa"=Just 46
  |x=="Guitarra"=Just 6
  |x=="Viola"=Just 10
  |x=="Banjo"=Just 5
  |otherwise = Nothing

{-
2. Escreva uma função chamada idade que usando pelo menos um tipo definido por você que
receba o tempo de vida em segundos de uma determinada pessoa, o nome de um planeta
e devolva a idade desta pessoa em anos caso ela tivesse vivido naquele planeta. Sabendo
que o período orbital dos planetas é dado por:
a. Mercúrio: 0.2408467 anos terrestres;
b. Vênus: 0.61519726 anos terrestres;
c. Terra: 1.0 anos terrestre equivalente a 365.25 dias, ou 31.557.600 segundos;
d. Marte: 1.8808158 anos terrestres;
e. Jupiter: 11.862615 anos terrestres;
f. Saturno: 29.447498 anos terrestres;
g. Urano: 84.016846 anos terrestres;
h. Netuno: 164.79132 anos terrestres;
-}
data Pessoa = Pessoa {
  nome :: String,
  lifeTime :: Double
}deriving(Show)

idade :: Pessoa -> String -> Maybe Double
idade p nomePlaneta
  |nomePlaneta=="Mercúrio" = Just (anos/0.2408467)
  |nomePlaneta=="Vênus" = Just (anos/0.61519726)
  |nomePlaneta=="Terra" = Just (anos/1.0)
  |nomePlaneta=="Marte" = Just (anos/1.8808158)
  |nomePlaneta=="Jupiter" = Just (anos/11.862615)
  |nomePlaneta=="Saturno" = Just (anos/29.447498)
  |nomePlaneta=="Urano" = Just (anos/84.016846)
  |nomePlaneta=="Netuno" = Just (anos/164.79132)
  |otherwise = Nothing
  where anos = lifeTime p/31557600


{-
3. Dada uma coleção de números, implemente as funções manter e descartar que recebem a
coleção e um predicado. Sempre que o predicado for verdadeiro quando aplicado a um item
da coleção original este item deve ser mantido ou descartado. Lembre-se dos valores
imutáveis. Você não pode usar as funções filter e reject já disponíveis no Prelude ou em
qualquer outra biblioteca
-}
manter :: (x -> Bool) -> [x] -> [x]
manter _ [] = []
manter funcao (h:t)
  | b == True = [h] ++ manter funcao t
  | otherwise = manter funcao t
  where b = (funcao h)

descartar :: (x -> Bool) -> [x] -> [x]
descartar _ [] = []
descartar funcao (h:t)
  | b == True = descartar funcao t
  | otherwise = [h] ++ descartar funcao t
  where b = (funcao h)


{-
4. Um dos jogos infantis mai4.s populares no planeta, chamado de Jogo Da Forca, consiste na
escolha de letras do alfabeto latino para tentar encontrar uma palavra que esteja oculta.
Você deve implementar uma versão deste jogo em Haskell considerando as seguintes
restrições: você deverá usar caracteres ASCII para representar a forca, o enforcado, e os
espaços selecionados para cada palavra; os símbolos usados nas palavras serão apenas os
caracteres do alfabeto latino minúsculos entre a e z; o banco de dados de palavras deve
conter, no mínimo 10 palavras de 6 letras ou mais; a cada tentativa a tela precisa ser limpa
e redesenhada (ANSI Escape Codes · GitHub). No repl.it não é possível importar a biblioteca
responsável pela geração de números randômicos, pode gerar as palavras e usá-las em
sequência ou, se preferir, use algum fator do sistema, como os últimos dígitos da data
corrente (Dates and Times (sourceforge.net))

-}
main = do
  printf "Func. 1.1: entrada:%d; resultado:%s" (6::Int) (show (impar 6))
  printf "\nFunc. 1.2: entrada:%s; resultado:%s" ("Estados Unidos"::String) (show (vietna "Estados Unidos"))
  printf "\nFunc. 1.3: entrada:%s; resultado:%s" ("Coldplay"::String) (show (musicas "Coldplay"))
  printf "\nFunc. 1.4: entrada:%s; resultado:%s" ("Banjo"::String) (show (cordas "Banjo"))
  printf "\nFunc. 2: entrada:%s %s; resultado:%s" (show (Pessoa "Rogerio" (31557600*15)))("Mercúrio"::String)  (show (idade (Pessoa "Rogerio" (31557600*15)) "Mercúrio"))
  printf "\nFunc. 3 MANTER: entrada:%s %s; resultado:%s" ("\\x -> (x`mod`5)==0") (show [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]) (show (manter (\x -> (x`mod`5)==0)[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]))
  printf "\nFunc. 3 DESCARTAR: entrada:%s %s; resultado:%s" ("\\x -> (x`mod`5)==0") (show [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]) (show (descartar (\x -> (x`mod`5)==0)[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]))
  print("POR RAZÔES DE FORÇA MAIOR, A QUESTÃO 4 NÃO SERA FEITA!")
