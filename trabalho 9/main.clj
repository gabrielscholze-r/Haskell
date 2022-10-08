;1. Utilizando a linguagem Clojure, crie uma função chamada ultimo que receba uma lista e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn ultimo [lista] (reduce (fn [a b] b) lista))





;2. Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e devolva o penúltimo elemento desta lista usar as funções já prontas e disponíveis paraesta mesma finalidade na linguagem Clojure.
(defn penultimo [lista] (reduce (fn [a b] b) (pop lista)))


;3. Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o elemento que está na posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
;; (defn elementoN [lista N] ())
(defn elementoN [lista n] (loop [counter n novaLista lista] (if (zero? counter) (first novaLista) (recur (dec counter) (rest novaLista)))))


;4. Utilizando a linguagem Clojure, crie uma função chamada inverso que receba uma lista edevolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] edevolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure. 
(defn inverso [lista] (reduce conj '() lista))

;5. Utilizando a linguagem Clojure, crie uma função chamada mdc que receba dois inteiros e devolve o mínimo divisor comum entre eles. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure. 
(defn mdc [a b] (if (zero? b) a (recur b (mod a b))))


(println (format "Função: 1: Entrada: %s; Saída: %s"  "[1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 'teste']" (str (ultimo [1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 "teste"]))))

(println (format "Função: 2: Entrada: %s; Saída: %s"  "[1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 'teste']" (str (penultimo [1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 "teste"]))))

(println (format "Função: 3: Entrada: %s; Saída: %s"  "[1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 'teste'] 5" (str (elementoN [1 2 3 4  13 413524 624 -51 51 64 51 4135 1 331 5 "teste"] 5))))

(println (format "Função: 4: Entrada: %s; Saída: %s"  "[1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 'teste']" (str (inverso [1 2 3 4  13 413524 624 51 -51 64 51 4135 1 331 5 "teste"]))))

(println (format "Função: 5: Entrada: %s; Saída: %s"  "18 60" (str (mdc 18 60))))
