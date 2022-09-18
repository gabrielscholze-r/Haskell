import Text.Printf
{-
1. Usando List Comprehension escreva uma função, chamada divisoresden, que devolva uma 
lista dos divisores de um número dado. 
-}
divisoresden :: Int -> [Int]
divisoresden x = [y | y <- [1..x], (x `mod` y) == 0]


{-
2. Usando  List Comprehension  escreva  uma  função,  chamada  contaCaractere,  que  conte  a 
ocorrência de um caractere específico, em uma string dada. 
-}
contaCaractere :: String -> Char -> Int
contaCaractere texto char = length [x| x <- texto, x==char]

{-
3. Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve 
o dobro dos valores dos elementos não negativos da lista de inteiros dada. 
-}
dobroNaoNegativo :: [Int] -> [Int]
dobroNaoNegativo lista = [x^2 | x <- lista, x>0]

{-
4. Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista 
de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem 
construídos por inteiros entre 1 e um número inteiro dado. 
-}
pitagoras :: Int -> [(Int,Int,Int)]
pitagoras num =[(x,y,z) | x<-[1..num], y<-[1..num], z<-[1..num], ((x^2)+(y^2))==(z^2), z>y, y>x]

{-
5. Números  perfeitos  são  aqueles  cuja  soma  dos  seus  divisores  é  igual  ao  próprio  número. 
Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva 
uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se 
que você já tem uma função que devolve uma lista dos divisores de um número dado. 
-}
numerosPerfeitos :: Int -> [Int]
numerosPerfeitos num = [x | x<-[1..num], (sum (init (divisoresden x)))==x, x<num]

{-
6. Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o 
produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no 
prelude que podem ser úteis. 
-}
produtoEscalar :: [Int]->[Int]->Int
produtoEscalar listaX listaY = sum[x*y | (x,y)<- zip listaX listaY]

{-
7. Usando  List Comprehension  escreva  uma  função,  chamada  primeirosPrimos,  que  devolva 
uma lista contendo os n primeiros números primos a partir do número 2. 
-}
primeirosPrimos :: Int -> [Int]
primeirosPrimos num = take num [x | x <- [2..], (length (divisoresden x))==2]

{-
8. Usando  List Comprehension  escreva  uma  função,  chamada  paresOrdenados,  que  devolva 
uma  lista  de  par  ordenados  contendo  uma  potência  de  2  e  uma  potência  de  3  até  um 
determinado número dado. Observe que estes números podem ser bem grandes. 
-}
paresOrdenados :: Int -> [(Double, Double)]
paresOrdenados num = [(2^x, 3^x) | x<-[0..num]]




main = do 
  printf "\nFuncao 1: entrada: %d; resultado: %s \n" (10 :: Int) (show(divisoresden 50))
  printf "\nFuncao 2: entrada: %s, %s; resultado: %s \n" ("texto exemplo" :: String) ("e" :: String) (show(contaCaractere "texto exemplo" 'e'))
  printf "\nFuncao 3: entrada: %s; resultado: %s \n" (show [-5..10]) (show(dobroNaoNegativo [-5..10]))
  printf "\nFuncao 4: entrada: %d; resultado: %s \n" (20 :: Int) (show(pitagoras 20))
  printf "\nFuncao 5: entrada: %d; resultado: %s \n" (600 :: Int) (show(numerosPerfeitos 600))
  printf "\nFuncao 6: entrada: %s, %s; resultado: %s \n" (show [1..5]) (show [1..5]) (show(produtoEscalar [1..5] [1..5]))
  printf "\nFuncao 7: entrada: %d; resultado: %s \n" (20 :: Int) (show(primeirosPrimos 20))
  printf "\nFuncao 8: entrada: %d; resultado: %s \n" (15::Int) (show(paresOrdenados 15))
  