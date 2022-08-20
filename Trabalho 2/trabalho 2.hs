import Text.Printf
-- 1. Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um inteiro uma unidade maior que a entrada. 
soma1 :: Int -> Int
soma1 x = x+1  

-- 2. Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. 
sempre :: a -> Int
sempre x = 0

-- 3. Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.
treco :: Double -> Double -> Double -> Double
treco x y z = (x+y)*z

-- 4. Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números inteiros.

resto :: Int -> Int -> Int
resto x y = x `mod` y

-- 5. Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores monetários.
precoMaior :: Double->Double->Double->Double->Double 
precoMaior a b c d = max (max a b ) (max c d)

-- 6. Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar. 
impar :: Int -> Int -> Bool
impar x y = if  x*y `mod` 2 /= 0 then True else False


-- ?. Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟 ∷ (𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros.
q6ou7 :: (Int,Int)->Int
q6ou7 par = fst par + snd par


-- 7. Escreva uma função em Haskell que receba números reais (double) e devolva o resultado da equação 𝑥^2 +𝑦/2+ z
q7 :: Double -> Double -> Double -> Double
q7 x y z = x^2 + y/2 + z 

-- 8. Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima um diagnóstico de obesidade, segundo a tabela que pode ser encontrada no link: Sobrepeso, obesidade e obesidade mórbida: entenda a diferença entre os três termos (cuidadospelavida.com.br). Observe que este diagnóstico é meramente estatístico e não tem nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e qualquer diagnóstico deve ser feito por um profissional médico 
-- q8 ::
diagnostico :: Double -> String
diagnostico peso 
  |peso/1.75^2<17 = "Muito Abaixo do peso"
  |peso/1.75^2<=18.49 = "Abaixo do peso"
  |peso/1.75^2<=24.99 = "Peso normal"
  |peso/1.75^2<=29.99 = "Sobrepeso"
  |peso/1.75^2<=34.99 = "Obesidade leve"
  |peso/1.75^2<=39.99 = "Obesidade severa"
  |otherwise ="Obesidade mórbida"

-- 9. Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o ano for bisexto sabendo que anos bissextos obedecem a seguinte regra: 𝑇𝑜𝑑𝑜𝑠 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠𝑒𝑗𝑎𝑚 𝑑𝑖𝑣𝑖𝑠í𝑣𝑒𝑖𝑠 𝑝𝑜𝑟 4 𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 100 𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 400 1997 não é bissexto, 1900 não é bissexto e 2000 é bissexto.
bissexto :: Int -> Bool
bissexto ano = if ((ano `mod` 4) == 0 && ((ano `mod` 100) /= 0) || ((ano `mod` 100) == 0 && (ano `mod` 400) == 0)) then True else False




main = do
  printf "Func. 1: entrada:%d; resultado:%d" (4::Int) (soma1 4)
  printf "\nFunc. 2: entrada:%d; resultado:%d" (3::Int) (sempre 3)
  printf "\nFunc. 3: entrada:%f %f %f; resultado:%f" (1::Double) (2::Double) (3::Double) (treco 1.0 2.0 3.0)
  printf "\nFunc. 4: entrada:%d %d; resultado:%d" (3::Int) (2::Int) (resto 3 2)
  printf "\nFunc. 5: entrada:%f %f %f %f; resultado:%f" (1::Double) (2::Double) (3::Double) (4::Double)(precoMaior 1.0 2.0 3.0 4.0)
  printf "\nFunc. 6: entrada:%d %d; resultado:%s" (3::Int) (3::Int) (show (impar 3 3))
  printf "\nFunc. 6 ou 7: entrada:(%d,%d); resultado:%d" (1::Int) (2::Int) (q6ou7 (1,2))
  printf "\nFunc. 7: entrada:%f %f %f; resultado:%f" (6::Double) (3::Double) (9::Double) (q7 6 3 9)
  printf "\nFunc. 8: entrada:%f; resultado:%s" (65::Double) (diagnostico 65)
  printf "\nFunc. 9: entrada:%d; resultado:%s" (2000::Int) (show (bissexto 2000))
