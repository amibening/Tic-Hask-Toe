module A3 where

import A1
import A2
import Data.List (intercalate, transpose)

-- *** Assignment 3-1 ***

-- Q#01

--showInts = undefined
showInts :: [Int] -> [String]
showInts [] = []
showInts (x : xs) = show x : showInts xs

--_HEADER_ = undefined

range = [1 .. 10]

numbers = showInts range

_HEADER_ = intercalate " | " (" " : numbers)

-- Q#02

--showSquares = undefined

data Squareq3 = Square Int Int

showSquare :: Squareq3 -> String
showSquare (Square x y) = "(" ++ show x ++ ", " ++ show y ++ ")"

showSquares :: [Squareq3] -> [String]
showSquares [] = []
showSquares (x : xs) = A3.showSquare x : showSquares xs

-- Q#03

formatRows = undefined

-- Q#04

isColEmpty = undefined

-- Q#05

dropFirstCol = undefined

dropLastCol = undefined

-- Q#06

getDiag1 = undefined

getDiag2 = undefined

getAllLines = undefined

-- *** Assignment 3-2 ***

-- Q#07

putSquare = undefined

-- Q#08

prependRowIndices = undefined

-- Q#09

isWinningLine = undefined

-- Q#10

isValidMove = undefined