module Irfanquestions where

import Control.Monad (when)

{-
data Pokemon = MkPokemon Name Id [Power]
    deriving Show

pikachu = MkPokemon "Pikachu" 25 ["Electric"]

bulbasaur = MkPokemon "Bulbasaur" 1 ["Grass", "Poison"]

fst' :: ((a, b), (c, d)) -> a
fst' ((w,_) , _) = W

----getName :: Pokemon -> Name
getName (MkPokemon name _ _) = name

-- getPower and fifth solutions provided

getPower (MkPokemon _ _ (p : _)) = p

fifth (_ : (_ : (_ : (_ : (x : _))))) = x

-}

-- Irfan questions 26th March 2023

--getFifthChar :: [a] -> a
--getFifthChar (_ : _ : _ : _ : x : _) = x

--getFifthChar _ = Nothing

-- Question 2
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

-- Question 1

--type a = String

myFunction :: Int -> Int -> Int
myFunction x y = myVar1
  where
    myVar1 :: Int
    myVar1 = 1

--

--type a = Char
fifth :: [a] -> a
--fifth (_ : _ : _ : _ : x : _) = x

--getFifthChar :: [b] -> b
--getFifthChar (_ : _ : _ : _ : y : _) = y

fifth (_ : (_ : (_ : (_ : (x : _))))) = x

--fst' :: ((w, _), _) = w
