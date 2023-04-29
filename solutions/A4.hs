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

--_HEADER_ = undefined
_HEADER_ :: String
_HEADER_ = ' ' : formatLine (map show _RANGE_)

--formatRow :: Row -> String
--formarRow r = formatLine s map showSquare random

--formatRows :: [Row] -> [String]
--formatRows rs = map formatRows recSelError

-- Q#02

--showSquares = undefined

-- Q#03

--dropFirstCol = undefined
dropFirstCol :: Board -> Board
dropFirstCol b = map tail b

-- Q#04

dropLastCol = undefined

--Q#05

--formatRows = undefined
formatRowsL :: [Row] -> [String]
formatRowsL rs = map (\r -> formatLine (map A1.showSquare r)) rs

-- Q#06

isWinningLine_ = undefined

-- *** Assignment 4-2 *** --

-- Q#07

isWinningLine = undefined

-- Q#08

hasWon = undefined

-- Q#09

getGameState = undefined

playMove = undefined

-- Q#10

prependRowIndices = undefined

-- Q#11

formatBoard = undefined