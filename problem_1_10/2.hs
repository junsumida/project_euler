import System.IO

main :: IO ()
main = do
  print $ foldl (\acc x -> acc + x) 0 $ filter even $ fib 4000000 [3,2,1]

fib :: Int -> [Int] -> [Int]
fib max all@(x:y:xs)
  | x + y <= max = fib max $ [x + y] ++ all
  | otherwise   = all
