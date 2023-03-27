module Irfanquestions where

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