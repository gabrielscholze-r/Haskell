import Text.Printf
{-
1. Escreva uma função chamada fatorialn que usando o operador range e a função foldr
devolva o fatorial de n.
-}
fatorialn :: Int -> Int
fatorialn x = foldr (*) 1 [1..x]


{-
2. Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de
números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos
inteiros listados.
-}
quadradoReal :: [Double] -> [Double]
quadradoReal x = map (^2) x

{-
3. Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de
palavras e devolve uma lista com o comprimento de cada uma destas palavras.
-}
comprimentoPalavras :: [String]->[Int]
comprimentoPalavras x = map (length) x

{-
4. Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva o maior
número entre 0 e 100000 que seja divisivel por 29.
-}
maiorMultiploDe29 :: Int
maiorMultiploDe29 = last(filter (\x -> ((x `mod` 29)==0))[0..100000])

{-
5. Usando a função filter escreva uma função, chamada maiorMultiploDe que recebe um 
inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro.
-}
maiorMultiploDe :: Int->Int
maiorMultiploDe y = last(filter (\x -> ((x `mod` y)==0))[0..100000])

{-

6. Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva 
a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De 
tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠 = 1² + 2² + 3² + 4²
. . . +𝑛2.
-}

somaQuadrados :: Int -> Int
somaQuadrados n = foldr (\x y -> x*x + y) 0 [1..n]

{-
7. Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o 
comprimento (cardinalidade) de uma lista dada. 
-}

comprimento :: [r] -> Int
comprimento x = foldl (\x y -> x + 1) 0 x

{-
8. Esta é uma tarefa de pesquisa: você deve encontrar e executar exemplos em Haskell do uso 
das seguintes funções disponíveis no Prelude: flip, ord, max, min, curry, uncurry. Para cada 
uma destas funções você deverá encontrar, executar e testar no mínimo dois exemplos.
-}
flip1 :: Double -> Double -> Double 
flip1 x y = flip (/) x y 

flip2 :: Double -> Double -> Double 
flip2 x y = flip (-) x y 

xMax :: Int -> Int -> Int
xMax x y = max x y

xMin :: Int -> Int -> Int
xMin x y = min x y

curry1 :: Int ->  Int -> Int
curry1  = curry (\ (x,y) -> 2*x+y)

curry2 :: Int ->  Int -> Int
curry2 = curry (\ (x,y) -> (x+y)^2)


uncurry1:: (Int,  Int) -> Int
uncurry1 = uncurry (*)

uncurry2:: (Double, Double) -> Double
uncurry2 = uncurry (/)

main = do
  printf "Func. 1: entrada:%d; resultado:%d" (10::Int) (fatorialn 7)
  printf "\nFunc. 2: entrada:%s; resultado:%s" (show [1,2,3,4,-2]) (show (quadradoReal [1,2,3,4, -2]))
  printf "\nFunc. 3: entrada:%s; resultado:%s" (show ["asv", "adfaga", "asdasdsfafa"]) (show (comprimentoPalavras ["asv", "adfaga", "asdasdsfafa"]))
  printf "\nFunc. 4: entrada:Nenhuma; resultado:%d" (maiorMultiploDe29)
  printf "\nFunc. 5: entrada:%d; resultado:%d" (5::Int) (maiorMultiploDe 5)
  printf "\nFunc. 6: entrada:%d; resultado:%d" (3::Int) (somaQuadrados 3)
  printf "\nFunc. 7: entrada:%s; resultado:%d" (show [1,2,3,4,5]) (comprimento [1,2,3,4,5])
  printf "\nFunc. 8 flip-1: entrada:%d %d; resultado:%s" (1::Int) (2::Int) (show (flip1 1 2))
  printf "\nFunc. 8 flip-2: entrada:%d %d; resultado:%s" (1::Int) (2::Int) (show (flip1 1 2))
  printf "\nFunc. 8 max-1: entrada:%d %d; resultado:%d" (1::Int) (2::Int) (xMax 1 2)
  printf "\nFunc. 8 max-2: entrada:%d %d; resultado:%d" (5::Int) (3::Int) (xMax 5 3)
  printf "\nFunc. 8 min-1: entrada:%d %d; resultado:%d" (1::Int) (2::Int) (xMin 1 2)
  printf "\nFunc. 8 min-2: entrada:%d %d; resultado:%d" (5::Int) (3::Int) (xMin 5 3)
  printf "\nFunc. 8 curry-1: entrada:%d %d; resultado:%d" (2::Int) (3::Int) (curry1 2 3)
  printf "\nFunc. 8 curry-2: entrada:%d %d; resultado:%d" (2::Int) (3::Int) (curry2 2 3)  
  printf "\nFunc. 8 uncurry-1: entrada:%s; resultado:%d" (show (2,2)) (uncurry1 (2,2))
  printf "\nFunc. 8 uncurry-2: entrada:%s; resultado:%s" (show (2,2)) (show (uncurry2 (2,2)))
  
  