{-# LANGUAGE InstanceSigs #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

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
convertRowIndex row = fromEnum (toUpper row) - 65

-- Q#04

_INVALID_MOVE_ :: (Int, Int)
_INVALID_MOVE_ = (-1, -1)

-- Q#05

_SEP_ :: String
_SEP_ = "_|_"

-- *** Assignment 1-2 *** --

-- Q#06  Question why do we not need MkSquare as constructor here as it errors if added ??
data Square = X | O | Empty deriving (Show)

xSquare = X

oSquare = O

emptySquare = Empty

-- execute by running following on cabal command line
--xSquare
--oSquare
--emptySquare
--xSquare == oSquare

-- Q#07
data GameState = Xwon | Owon | Tie | InProgress --deriving (Show)

--xwonGameState = Xwon

--owonGameState = Owon

--tieGameState = Tie

--inProgressGameState = InProgress

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

--definition from Qu 07
--data GameState = W | L | Tie | InProgress deriving (Show, Eq) --  definition from Qu 07
--wonGameState = W
--lostGameState = L -- in decription Github notes says won assume meant lost
--tieGameState = Tie
--inProgressGameState = InProgress

showGameState :: GameState -> String
showGameState gameState = case gameState of
  Xwon -> "Congratulations! X won the game."
  Owon -> "Congratulations! O won the game."
  Tie -> "Game is a Tie"
  InProgress -> "The game is in progress."

{-
-- Execute as follows
showGameState Tie
etc...
-}

-- Q#11

-- Question Player function declarion issues in file ??

data Player1 = Xo | Ox | Emptyxo

switchPlayer :: Player1 -> Player1
switchPlayer Xo = Ox
switchPlayer Ox = Xo
switchPlayer Emptyxo = Emptyxo

-- Q#12

--showSquare = undefined
-- Read up on this and do again why can't I use same X and O .... and Square ...??
data Square1 = X2 | O2 | Empty2 deriving (Eq)

instance Show Square1 where
  show :: Square1 -> String
  show X2 = "X"
  show O2 = "O"
  show Empty2 = "_"

showSquare :: Square1 -> String
showSquare square = show square