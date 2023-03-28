module A1 where

import Data.Char (toUpper)
import System.Random

-- *** Assignment 1-1 *** --

-- Q#01
_SIZE_ :: Int
_SIZE_ = 3

-- Q#02
_DISPLAY_LOGO_ :: Bool
_DISPLAY_LOGO_ = True

-- Q#03

convertRowIndex :: Char -> Int
convertRowIndex row = (fromEnum (toUpper row)) - 65

-- Q#04

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1, -1)

-- Q#05

_SEP_ :: String
_SEP_ = "_|_"

-- *** Assignment 1-2 *** --

-- Q#06  Question why do we not need MkSquare as constructor here as it errors if added ??
data Square = X | O | Empty
  deriving (Show, Eq)

xSquare = X

oSquare = O

emptySquare = Empty

-- execute by running following on cabal command line
--xSquare
--oSquare
--emptySquare
--xSquare == oSquare

-- Q#07
data GameState = W | L | Tie | InProgress
  deriving (Show, Eq)

wonGameState = W

lostGameState = L -- in decription Github notes says won assume meant lost

tieGameState = Tie

inProgressGameState = InProgress

-- execute as above Q6

-- Q#08

type Player = Square

type Row = [Square]

type Line = [Square]

type Board = [Row]

type Move = (Int, Int)

-- Q#09
-- Note -- Player changed to PlayerData as else conflicts type name in same file !!
data Playerdata = FirstX | SecondO
  deriving (Show, Eq)

getFirstPlayer :: Bool -> Playerdata
getFirstPlayer b = if b then FirstX else SecondO

-- Another Random way to do this  is
--import System.Random  -- added to top of file

getFirstRandomPlayer :: IO Bool
getFirstRandomPlayer = randomIO

-- Q#10
{-
showGameState :: GameState -> String
showGameState gameState = case gameState of
  Ongoing player -> "It's " ++ show player ++ "'s turn to play."
  Draw -> "The game ended in a draw."
  Won player -> "Player " ++ show player ++ " has won the game!"
-}
-- Q#11

switchPlayer = undefined

-- Q#12

showSquare = undefined