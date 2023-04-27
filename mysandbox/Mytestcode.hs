{-# LANGUAGE InstanceSigs #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Redundant lambda" #-}

module Mytestcode where

import Data.Char (toUpper)
import System.Random

-- Note in FP
-- A function must always take an argument
-- A function must always return a value
-- Calling the same function with the same argument must
--      always return the same result

_SIZETEST_ :: Int
_SIZETEST_ = 4

calcChange owed given =
  if change > 0
    then change
    else 0
  where
    change = given - owed

calcChange2 owed2 given2 = given2 - owed2

--sumSquareOrSquareSum x y =
--  ( \sumSquare squareSum ->
--      if sumSquare > squareSum
--        then sumSquare
--        else squareSum (x ^ 2 + y ^ 2) ((x + y) ^ 2)
--  )

-- recursive examples

--frequency :: Char -> String -> Int
--frequency c s = if null s = 0 if c == head s then 1 + frequency (tail s) else frequency (tail s)

-- simplfy into a guard
frequency :: Char -> String -> Int
frequency c s
  | null s = 0
  | c == head s = 1 + frequency c (tail s)
  | otherwise = frequency c (tail s)

-- frequency 'b' "bulbasaur" = 2 therefore process of checking head if 'b' then add 1
-- frequency 'b' "ulbasaur" = 1
-- frequency 'b' "lbasaur" = 1
-- frequency 'b' "basaur" = 2
-- frequency 'b' "asaur" = 2
-- frequency 'b' "saur" = 2
-- frequency 'b' "aur" = 2
-- frequency 'b' "ur" = 2
-- frequency 'b' "r" = 2
-- frequency 'b' "" = 2

-- frequency c s frequency c (tail s) + 1 (if c is equal to head s) or 0 otherwise
--
-- now modify to use pattern matching change to frequencypat as eg 2
frequencypat :: Char -> String -> Int
--frequencypat c (x : xs) = if c == x then 1 + frequencypat c xs else frequencypat c xs

-- change into guard
frequencypat c [] = 0
frequencypat c (x : xs)
  | c == x = 1 + frequencypat c xs
  | otherwise = frequencypat c xs
