; 1. Na  aula  disponível  em:  https://replit.com/@frankalcantara/ClojureAula2?v=1  foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  funções  e  apresentar  dois exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  precisam  ser  utilizados  de forma que o resutado da função possa ser visto no terminal.

; assoc - retorna um novo map que contem o mapeamento de chave e valor.
; dissoc - retorna um novo map desasociando as chaves passadas como parametro
; range - Faz uma sequencia da 0 a n-1, sendo n o numero passado como parâmetro.
; map - Retorna uma sequência que consiste no resultado da aplicação de f ao conjunto dos primeiros itens de cada coll, seguido pela aplicação de f ao conjunto de segundos itens em cada coll
; filter - Aplica uma condição logica a coleção passada, fazendo uma filtragem quase o resultado da condição seja verdadeiro.
; inc - Retorna um valor maior que o valor inserido
; odd - Retorna true para valores impares

; count - Retorna o numero de itens da coleção
; nth - Retorna o valor que corresponde ao indice fornecido como parâmetro
; conj - Adiciona valores do segundo parametro ao primeiro parametro

; sort - retorna uma saida ordenada dos itens ca coleção
; char - Retorna o char equivalente ao numero dado
; partition-by - retorna um agrupamento de acordo com a condição lógica passada como parâmetro
; empty - Retorna true se o conteudo da coleção é vazio
; into - Retorna uma saida conjugada de uma coleção pra outra


(println (format "Função: assoc: Entrada: %s; Saída: %s"  "{:x 1 :y 2} :x 2" (str (assoc {:x 1 :y 2} :x 2))))
(println (format "Função: assoc: Entrada: %s; Saída: %s"  "{:x 1 :y 2} :z 3" (str (assoc {:x 1 :y 2} :z 3))))

(println (format "Função: dissoc: Entrada: %s; Saída: %s"  "{:x 1 :y 2} :y 2" (str (dissoc {:x 1 :y 2} :y 2))))
(println (format "Função: dissoc: Entrada: %s; Saída: %s"  "{:x 1 :y 2} :x 2" (str (dissoc {:x 1 :y 2} :x 2))))

(println (format "Função: range: Entrada: %s; Saída: %s"  "10" (str (range 20 30))))
(println (format "Função: range: Entrada: %s; Saída: %s"  "20 30" (str (range 10))))

(println (format "Função: map: Entrada: %s; Saída:"  " + [1 2 3] [4 5 6]") (map + [1 2 3] [4 5 6]))
(println (format "Função: map: Entrada: %s; Saída:"  " - [1 2 3] [4 5 6]") (map * [1 2 3] [4 5 6]))

(println (format "Função: inc: Entrada: %s; Saída: %s"  "10.0" (str (inc 10.0))))
(println (format "Função: inc: Entrada: %s; Saída: %s"  "22" (str (inc 22))))

(println (format "Função: inc: Entrada: %s; Saída: %s"  "10.0" (str (inc 10.0))))
(println (format "Função: inc: Entrada: %s; Saída: %s"  "22" (str (inc 22))))

(println (format "Função: filter: Entrada: %s; Saída:"  "even? (range 10))")(filter even? (range 20)))
(println (format "Função: filter: Entrada: %s; Saída:"  "odd? (range 10))")  (filter odd? (range 20)))

(println (format "Função: filter: Entrada: %s; Saída:"  "even? (range 10))")(filter even? (range 20)))
(println (format "Função: filter: Entrada: %s; Saída:"  "odd? (range 10))")  (filter odd? (range 20)))

(println (format "Função: odd: Entrada: %s; Saída: %s"  "10" (str (odd? 10))))
(println (format "Função: odd: Entrada: %s; Saída: %s"  "11" (str (odd? 11))))

(println (format "Função: into: Entrada: %s; Saída: %s"  "() '(1 2 3 4)" (str (into () '(1 2 3 4)))))
(println (format "Função: into: Entrada: %s; Saída: %s"  "[1 2 3] '(5 4)" (str (into [1 2 3] '(5 4)))))

(println (format "Função: conj: Entrada: %s; Saída: %s"  "[1 2 3] 4 5" (str (conj [1 2 3] 4 5))))
(println (format "Função: conj: Entrada: %s; Saída: %s"  "'(1 2 3) 4 5" (str (conj '(1 2 3) 4 5))))

(println (format "Função: sort: Entrada: %s; Saída: %s"  "[10 1 3 5 1 3]" (str (sort [10 1 3 5 1 3]))))
(println (format "Função: sort: Entrada: %s; Saída: %s"  " > [10 1 3 5 1 3]" (str (sort > [10 1 3 5 1 3]))))

(println (format "Função: partition-by: Entrada: %s; Saída: "  "odd? [1 1 1 2 2 2 2 3 3 3]") (partition-by odd? [1 1 1 2 2 2 2 3 3 3]))
(println (format "Função: partition-by: Entrada: %s; Saída: "  "even? [1 1 1 2 2 2 2 3 3 3]") (partition-by even? [1 1 1 2 2 2 2 3 3 3 4 4 4 6 6 6 5 5 5]))

(println (format "Função: empty: Entrada: %s; Saída: %s"  "empty? ()" (str (empty? ()))))
(println (format "Função: empty: Entrada: %s; Saída: %s"  "empty? '(2)" (str (empty? '(2)))))

(println (format "Função: count: Entrada: %s; Saída: %s"  "[]" (str (count []))))
(println (format "Função: count: Entrada: %s; Saída: %s"  "[10 20 30 40 50 60]" (str (count [10 20 30 40 50 60]))))

(println (format "Função: char: Entrada: %s; Saída: "  "10") (char 97))
(println (format "Função: char: Entrada: %s; Saída: "  "20") (char 104))







; 2. Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário. 

(defn ehPrimo? [n] (
              loop [counter 1 lista []]
                    (if (= counter (+ n 1)) (if (= (count lista) 2) true false)
                     (recur (inc counter) (if (zero? (mod n counter)) (conj lista counter) lista)))
                   
))


(println (format "Função: ehPrimo: Entrada: %s; Saída: %s"  "47" (str (ehPrimo? 47))))
(println (format "Função: ehPrimo: Entrada: %s; Saída: %s"  "12" (str (ehPrimo? 12))))




; 3. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  fatoresPrimos  que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética.  
(defn fatoresPrimos? [n] (
                         loop [counter 2 numero n lista []]
                         (if (= numero 1) lista 
                           (recur (if (and (ehPrimo? counter) (zero? (mod numero counter))) 2 (inc counter)) (if (and (ehPrimo? counter) (zero? (mod numero counter))) (/ numero counter) numero) (if (and (ehPrimo? counter) (zero? (mod numero counter))) (conj lista counter) lista))
)))
(println (format "Função: fatoresPrimos: Entrada: %s; Saída:"  "30") (fatoresPrimos? 30))
(println (format "Função: fatoresPrimos: Entrada: %s; Saída:"  "40") (fatoresPrimos? 40))

; 4. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos  que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores.
(defn todosPrimos [n1 n2] (
                           loop [lista (range n1 (+ n2 1)) lista2 []]
                           (if (empty? (rest lista)) lista2 (recur (rest lista) (if (ehPrimo? (nth lista 0)) (conj lista2 (nth lista 0)) lista2)))
))

(println (format "Função: todosPrimos: Entrada: %s; Saída:"  "10 30") (todosPrimos 10 30))


