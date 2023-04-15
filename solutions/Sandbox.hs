module Sandbox where

import Control.Concurrent (yield)

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
