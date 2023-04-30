module Sandbox where

import Control.Concurrent (yield)
import System.Random

{-
data Pokemon = MkPokemon Name Id [Power]
    deriving Show

pikachu = MkPokemon "Pikachu" 25 ["Electric"]

bulbasaur = MkPokemon "Bulbasaur" 1 ["Grass", "Poison"]

fst' :: ((a, b), (c, d)) -> a
fst' ((w,_) , _) = W

----getName :: Pokemon -> Name
getName (MkPokemon name _ _) = name

-- getPower and fifth solved

getPower (MkPokemon _ _ (p : _)) = p

fifth (_ : (_ : (_ : (_ : (x : _))))) = x

-}

-- Irfan questions 26th March 2023
-- define types
type Name = String

type Id = Int

type Power = String

-- data type
data Pokemon = MkPokemon Name Id [Power]

-- create data entries
pikachu = MkPokemon "Pikachu" 25 ["Electric"]

bulbasaur = MkPokemon "Bulbasaur" 18 ["Grass", "Poison"]

-- get all powers
getAllPowers (MkPokemon _ _ p) = p

-- get first power
getFirstPower (MkPokemon _ _ (p : _)) = p

-- my test example code

n = a `div` length xs
  where
    a = 30
    xs = [1, 2, 3, 4, 5]

-- types

zeroto :: Int -> [Int]
zeroto n = [0 .. n]

-- curried functions
-- Functions with multiple arguments are possible by retruning function as result
add' :: Int -> (Int -> Int)
add' x y = x + y

-- Ian Recursive Code Egs 15th April

sum' :: Num a => [a] -> a
sum' (x : xs) = x + sum' xs
sum' [] = 0

-- sum' [1,2,3] =>
--      (1:[2, 3]) = 1 + sum' [2, 3]
--      (2:[3])    =    2 + sum' [3]
--      (3:[])     =        3 + sum' []
--      []         =            0
--                 = 1 + 2 + 3 + 0 = 6

-- Worker Wrapper Use Case eg from slide 23
isPrime :: Int -> Bool
isPrime n
  | n <= 1 = False
  | n <= 3 = True
  | otherwise = go 2
  where
    go i
      | i >= n = True
      | mod n i == 0 = False
      | otherwise = go (i + 1)

-- Compose (.) example code
squared :: Int -> Int
squared x = x * x

addSome1 :: Int -> Int
addSome1 x = x + 1

addSome2 :: Int -> Int
addSome2 x = x + 2

addSome3 :: Int -> Int
addSome3 x = x + 3

--(squared . addSome)    -- returns 25

-- Random IO - examples
getFirstRandomPlayer1 :: IO Bool
getFirstRandomPlayer1 = randomIO

-- use Lamda expression
greetTrainer :: IO ()
greetTrainer =
  putStrLn " Enter your name: "
    >> getLine
      >>= ( \name ->
              putStrLn $ "Hi there, " ++ name ++ "!"
          )

-- refactor
greetTrainerRe :: IO ()
greetTrainerRe = do
  putStrLn " Enter your name: "
  name <- getLine
  putStrLn $ "Hi there, " <> name ++ "!"

greetTainerDo :: IO ()
greetTainerDo = do
  putStrLn "Enter your first name: "
  fname <- getLine
  putStrLn "Enter your last name: "
  lname <- getLine
  putStrLn $ concat ["hi there, ", fname, " ", lname, "!"]