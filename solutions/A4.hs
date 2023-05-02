module A4 where

import A1
import A2
import A3 hiding
  ( dropFirstCol,
    dropLastCol,
    formatRows,
    isWinningLine,
    prependRowIndices,
    showSquares,
    _HEADER_,
  )
import Control.Exception.Base (recSelError)
import System.Random (Random (random))

-- *** Assignment 4-1 *** --

-- Rewatch tutorial 16th April video note import from A3 avoid named conflicts from 2.20 ish mins
-- Q#01
_HEADER_ :: String
_HEADER_ = ' ' : formatLine (map show _RANGE_)

-- Q#02
showSquares :: [Square] -> [String]
showSquares = map showSquare

-- Q#03
dropFirstCol :: Board -> Board
dropFirstCol b = map tail b

-- Q#04
dropLastCol :: [Row] -> [Row]
dropLastCol rows = map init rows

--Q#05  ?? redo
formatRowsL :: [Row] -> [String]
formatRowsL rs = map (\r -> formatLine (map A1.showSquare r)) rs

-- Q#06
{-- issue with player type ??}
isWinningLine :: Player -> Line -> Bool
isWinningLine _ [] = False
isWinningLine player line = null (filter (== player) line)
--}

--isWinningLine :: Player -> Line -> Bool
--isWinningLine _ [] = False
--isWinningLine player line = null (filter (/= player) line) && length line == length (filter (== player) line)

-- *** Assignment 4-2 *** --

-- Q#07

-- ?? to do

-- Q#08
{-  Get Q6 right first
hasWon :: Player -> Board -> Bool
hasWon player board = foldr checkForWinningLine False (getAllLines board)
  where
    checkForWinningLine line acc
      | acc = True -- short-circuit if a winning line has already been found
      | isWinningLine player line = True -- check if current line is winning
      | otherwise = False
--}
-- Q#09

getGameState = undefined

playMove = undefined

-- Q#10

prependRowIndices = undefined

-- Q#11

formatBoard = undefined