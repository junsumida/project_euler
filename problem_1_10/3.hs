import System.IO

main :: IO ()
main = do
  let n = 600851475143
  print $ primeFactors n

primeFactors :: Int -> [Int]
-- returns nth given 1
primeFactors 1 = []
primeFactors n
  | factors == [] = [n] -- there's no factors except for 1 and n, so returns [n]
  | otherwise = factors ++ primeFactors (n `div` (head factors)) -- otherwise returns [factors] + primeFactors of n / the minimum factor of n
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2..n-1] -- "factors" is a list which has the minimum factor of n
