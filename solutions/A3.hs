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

--type Line = [Square] in A1

getDiag1 :: Board -> Line
getDiag1 [] = []
getDiag1 (row : rows) = case row of
  [] -> []
  (square : _) -> square : getDiag1 (map tail rows)

getDiag2 :: Board -> Line
getDiag2 [] = []
getDiag2 (row : rows) = case reverse row of
  [] -> []
  (square : _) -> square : getDiag2 (map init rows)

getAllLines :: Board -> [Line]
getAllLines b = concat [horizLines, vertLines, diagLines]
  where
    horizLines = b
    vertLines = transpose b
    diagLines = [getDiag1 b, getDiag2 b]

-- *** Assignment 3-2 ***

-- Q#07

--putSquare = undefined
-- naming convention i = row j = colum index
----putSquare :: Player -> Board -> (Int, Int) -> Board
--putSquare p (r : rs) (0, j) = let r` = replaceSquareInRow p j r in r` : rs`
--putSquare _ [] _ = []

{- unsre why does not work ??
putSquare :: Player -> Board -> Move -> Board
putSquare player [] _ = []
putSquare player (row : rows) (rowIndex, colIndex)
  | rowIndex == 0 = (replaceSquareInRow player row colIndex) : rows
  | otherwise = row : putSquare player rows ((rowIndex - 1), colIndex)
-}

-- Q#08
prependRowIndices :: [String] -> [String]
prependRowIndices strs = worker $ indexRowStrings strs
  where
    worker [] = []
    worker ((ix, str) : pairs) = (ix : str) : worker pairs

-- Q#09
{-   unsure why player does not work in this code ??
isWinningLine :: Player -> Line -> Bool
isWinningLine player line = go line False
  where
    go [] acc = acc
    go (x:xs) acc
      | x == player = True
      | otherwise = False
-}

-- Q#10
{-   could not get code to work ??
isValidMove :: Board -> Move -> Bool
isValidMove board move = isMoveInBounds move && isValidMoveWorker board move

isValidMoveWorker :: Board -> Move -> Bool
isValidMoveWorker [] _ = False
isValidMoveWorker (row:rows) (rowIndex, colIndex)
  | rowIndex == 0 = isColEmpty row colIndex
  | otherwise = isValidMoveWorker rows (rowIndex - 1, colIndex)
-}