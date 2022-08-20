import Text.Printf
{-
1. Escreva uma função para o cálculo dos números da sequência de Fibonacci, utilizando
Haskell.
-}
fibonacci :: Int -> Int
fibonacci x
  |x==1=1
  |x==2=1
  |otherwise = (fibonacci (x-1)) + (fibonacci (x-2))

{-2. Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor 
Comum  (MDC)  de  Euclides  publicado  por  volta do  ano 300  AC.  Podemos simplificar  este 
algoritmo  dizendo  que  dados  dois  inteiros  A  e  B,  o  MDC  entre  eles  será dado  pelo  valor 
absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva 
uma  função  para  o  cálculo  do  MDC  entre  dois  números  inteiros  positivos,  usando  o 
algoritmo de Euclides conforme apresentado aqui, utilizando Haskell. -}
mdc :: Int -> Int -> Int
mdc a b
  | b==0=abs(a)
  | otherwise = (mdc b (a `mod` b))


{-
3. Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos
deste número. Exemplo: dado 1234 a função deverá devolver 10. Utilizando Haskell e
recursividade
-}
q3 :: Int -> Int
q3 x
  | div x 10==0=x
  | otherwise = (q3 (div x 10) + (x `mod` 10))

{-
4. Escreva uma função que devolva a soma de todos os números menores que 10000 que
sejam múltiplos de 3 ou 5.
-}
q4 :: Int -> Int
q4 x
  |x==0=0
  |x==10000 = (q4 9999)
  |x `mod` 3 == 0 = x + (q4 (x-1))
  |x `mod` 5 == 0 = x + (q4 (x-1))
  |otherwise = (q4 (x-1))

{-
5. Escreva uma função que, recebendo uma lista de inteiros, apresente a diferença entre a
soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade.
-}
-- q5 x 
--   |
--   |otherwise x 
somaQuadrados :: [Int] -> Int
somaQuadrados x 
  |x==[]=0
  |otherwise = (head x)^2 + somaQuadrados (tail x)

soma :: [Int] -> Int
soma x
  |x==[]=0
  |otherwise = (head x) + soma (tail x)

quadradoSoma :: [Int] -> Int
quadradoSoma x
  |x==[]=0
  |otherwise = (soma x)^2

q5 :: [Int] -> Int
q5 x = (somaQuadrados x) - (quadradoSoma x)

{-
6. O Crivo de Eratóstenes não é o melhor algoritmo para encontrar números primos. Crie uma
função que implemente o Crivo de Euler (Euler’s Sieve) para encontrar todos os números
primos menores que um determinado inteiro dado. 
-}

aux :: Int -> [Int] -> [Int]
aux a b
  |b==[]=[]
  |(head b)`mod`a==0 = aux a (tail b)
  |otherwise = [head b] ++ aux a (tail b)

q6 :: [Int] -> [Int]
q6 x 
  | x==[]=[]
  | otherwise = [head x] ++ q6 (aux (head x) (tail x))

{-
7. Nem só de Fibonacci vivem os exemplos de recursão. Escreva uma função que devolva
todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores
que um inteiro dado.
-}
lucas p q n
  | n==0=[2]
  | n==1=[2] ++ [p]
  | otherwise = (lucas p q (n-1)) ++[(p* (last(lucas p q (n-1)))-q*(last(lucas p q (n-2))))]

{-
8. Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3]
devolva [3,2,1].
-}
aoContrario :: [Int] -> [Int]
aoContrario x 
  |x==[]=[]
  |otherwise = (aoContrario (tail x)) ++ [head x]


{-
9. Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o
produto destes valores sem usar o operador de multiplicação.
-}
somaRecursiva :: Int -> Int -> Int
somaRecursiva x y
  | y==0 = 0
  | otherwise = x + (somaRecursiva x (y-1))

{-
10. Escreva uma função chamada comprimento que receba uma lista de inteiros e devolva o
comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule
o comprimento de uma lista.
-}
comprimento :: [Int] -> Int
comprimento x
  | x==[]=0
  | otherwise = 1 + (comprimento (init(x)))


main = do
  printf "Func. 1: entrada:%d; resultado:%d" (7::Int) (fibonacci 7)
  printf "\nFunc. 2: entrada:%d %d; resultado:%d" (10::Int) (5::Int) (mdc 10 5)
  printf "\nFunc. 3: entrada:%d; resultado:%d" (1234::Int) (q3 1234)
  printf "\nFunc. 4: entrada:%d; resultado:%d" (10000::Int) (q4 10000)
  printf "\nFunc. 5: entrada:%s; resultado:%d" (show ([1,2,3])) (q5 [1,2,3])
  printf "\nFunc. 6: entrada:%s; resultado:%s" (show ([2..30])) ( show (q6 [2..30]))
  printf "\nFunc. 7: entrada:%d %d %d; resultado:%s" (1::Int) (-1::Int) (10::Int)  (show (lucas 1 (-1) 10))
  printf "\nFunc. 8: entrada:%s; resultado:%s" (show ([1,2,3])) (show (aoContrario [1,2,3]))
  printf "\nFunc. 9: entrada:%d %d; resultado:%d" (3::Int) (2::Int) (somaRecursiva 3 2)
  printf "\nFunc. 10: entrada:%s; resultado:%d" (show ([10, 11, 17, 25])) (comprimento [10, 11, 17, 25])