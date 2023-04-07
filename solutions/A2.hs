{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module A2 where

import A1
import Data.Bits (Bits (bitSize))
import Data.List (intercalate)

-- *** Assignment 2-1 *** --

-- Q#01

--promptPlayer :: Player -> String
--promptPlayer player = concat ["Player ", showSquare p ", - enter row and column: "]

-- Q#02

--_SIZE1_ :: Int
--_SIZE1_ = 4

_RANGE_ :: [Int]
--_RANGE_ = [0 _ ((_SIZE_) -1)]
_RANGE_ = [0 .. _SIZE_ - 1]

-- Q#03

-- Function to check if a character is a digit -  i.e. isDigit '1'
isDigit :: Char -> Bool
isDigit c = c `elem` ['0' .. '9']

-- Function to convert a character to an Int value if it's a valid digit i.e readDigit '3'
readDigit :: Char -> Int
readDigit c
  | isDigit c = read [c] -- Convert Char to String and use read function to parse Int
  | otherwise = -1 -- Return -1 for non-digit characters

-- Q#04

-- CODE THAT IS IN A1 FILE
-- Define the Square type with three constructors
--data Square = X | O | Empty deriving (Show)
-- Define the size constant
--_SIZE_ :: Int
--_SIZE_ = 3

-- Declare _EMPTY_ROW_ and _EMPTY_BOARD_ using replicate and Empty constructor
_EMPTY_ROW_ :: [Square]
_EMPTY_ROW_ = replicate _SIZE_ Empty

_EMPTY_BOARD_ :: [[Square]]
_EMPTY_BOARD_ = replicate _SIZE_ _EMPTY_ROW_

-- Q#05

isTied = undefined

_TIED_BOARD_ = undefined

-- Q#06

indexRowStrings = undefined

-- Q#07

formatLine = undefined

-- *** Assignment 2-2 *** --

-- Q#08

isMoveInBounds = undefined

-- Q#09

stringToMove = undefined

-- Q#10

replaceSquareInRow = undefined