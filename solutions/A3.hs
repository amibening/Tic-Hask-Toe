module A3 where

import A1
import A2
import Data.List (intercalate, transpose)

-- *** Assignment 3-1 ***

-- Q#01
showInts :: [Int] -> [String]
showInts [] = []
showInts (x : xs) = show x : showInts xs

-- X without formatLine
numbers = showInts _RANGE_

_HEADERX_ = intercalate "_|_" (" " : numbers) ++ "|_"

-- with formatLine
_HEADER_ = " " ++ formatLine (showInts _RANGE_)

-- Q#02
showSquares :: [Square] -> [String]
showSquares [] = []
showSquares (s : squares) = showSquare s : showSquares squares

-- Q#03

--formatRows = undefined

formatRows :: [Row] -> [String]
formatRows [] = []
formatRows (r : rows) = formatLine (showSquares r) : formatRows rows

-- Q#04

{- Issue will come back
isColEmpty :: Row -> Int -> Bool
isColEmpty [] _ = True
isColEmpty (Square _ y : squares) colIndex
  | colIndex == 0 = False
  | otherwise = isColEmpty squares (colIndex - 1)
  where
    squareIsEmpty (Square _ _) = False
    squareIsEmpty Empty = True
-}

-- Q#05
dropFirst :: Row -> Row
dropFirst [] = []
dropFirst (_ : squares) = squares

dropFirstCol :: Board -> Board
dropFirstCol = map dropFirst
  where
    dropFirst [] = []
    dropFirst (_ : squares) = squares

dropLastCol :: Board -> Board
dropLastCol = map dropLast
  where
    dropLast squares = init squares

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