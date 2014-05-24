import System.IO
import qualified Data.Set as Set

main :: IO ()
main = do
  let multiplesOfThree = Set.fromList $ takeWhile (<1000) [3,6..]
  let multiplesOfFive  = Set.fromList $ takeWhile (<1000) [5,10..]

  print $ foldl (\acc x -> acc + x) 0 $ Set.toList $ Set.union multiplesOfThree multiplesOfFive 
  --print $ foldl (+) $ Set.toList $ Set.union multiplesOfThree multiplesOfFive 
