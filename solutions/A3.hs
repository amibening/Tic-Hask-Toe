module A3 where

import A1
import A2
import Data.List (intercalate, transpose)

-- *** Assignment 3-1 ***

-- Q#01
showInts :: [Int] -> [String]
showInts [] = []
showInts (x : xs) = show x : showInts xs

numbers = showInts _RANGE_

_HEADER_ = intercalate " | " (" " : numbers)

-- Q#02
-- ISsue why can't I get this to work with Square ??
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

--putSquare = undefined
-- naming convention i = row j = colum index
----putSquare :: Player -> Board -> (Int, Int) -> Board
--putSquare p (r : rs) (0, j) = let r` = replaceSquareInRow p j r in r` : rs`
--putSquare _ [] _ = []

-- Q#08

prependRowIndices = undefined

-- Q#09

isWinningLine = undefined

-- Q#10

isValidMove = undefined