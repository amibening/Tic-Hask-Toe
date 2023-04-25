{-# LANGUAGE InstanceSigs #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

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
