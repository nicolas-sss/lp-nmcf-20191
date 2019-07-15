import Data.List

fibo :: Integer -> Integer -> [Integer]
fibo a b = a:fibo b (a+b)

fact :: Integer -> Integer
fact 0 = 1
fact a = a * fact(a-1)

removelist :: ([a],[a]) -> [a]
removelist a = (init(fst a)) ++ snd a

adicionalist :: [a] -> ([a],[a]) -> [a]
adicionalist n a = fst a ++ n ++ snd a

quicksort :: [Integer] -> [Integer]
quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

divideip :: [Integer] -> ([Integer],[Integer])
divideip xs = (filter odd xs, filter even xs)

juntaip :: ([Integer],[Integer]) -> [Integer]
juntaip tuple = fst tuple ++ snd tuple

fatorial :: Integer -> Integer
fatorial n
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = fact n

fibonacciList :: Int -> [Integer]
fibonacciList n 
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = take n (fibo 0 1)

fibonacci :: Int -> Integer
fibonacci n
    | n < 0 = error "Não é válido número negativo"
    | n > 0 = fibonacciList n !! (n-1)

remover :: Int -> [a] -> [a]
remover n xs = removelist (splitAt (n-1) xs)

inserir :: Integer -> Int -> [Integer] -> [Integer] 
inserir x n xs = adicionalist [x] (splitAt (n-1) xs)

separarImparPar :: [Integer] -> ([Integer],[Integer])
separarImparPar xs = divideip (quicksort xs)

ordenarImparPar :: [Integer] -> [Integer]
ordenarImparPar xs = juntaip (separarImparPar xs)

main = do
    print (fibonacci 5)
    print (fatorial 5)
    print (fibonacciList 4)
    print (remover 2 [5,4,3,2,1])
    print (inserir 0 2 [5,4,3,2,1])
    print (separarImparPar [8,7,6,5,1,2,3,4])
    print (ordenarImparPar [8,7,6,5,1,2,3,4])