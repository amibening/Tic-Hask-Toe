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

-- Define the Square type with three constructors
--data Square = X | O | Empty deriving (Show)

-- Define the Board type as a synonym for [[Square]]
type Board = [[Square]]

-- Define a function to check if a Square is Empty
isEmpty :: Square -> Bool
isEmpty Empty = True
isEmpty _ = False

-- Define the isTied function to check if a Board is tied
isTied :: Board -> Bool
isTied board = and $ map (not . any isEmpty) board

-- Declare a constant _TIED_BOARD_ to test the isTied function
_TIED_BOARD_ :: Board
_TIED_BOARD_ =
  [ [X, O, O],
    [O, X, X],
    [O, X, O]
  ]

--isTied = undefined

--_TIED_BOARD_ = undefined

-- Q#06

--indexRowStrings = undefined

indexRowStrings :: [String] -> [(Char, String)]
indexRowStrings strs = zip ['A' ..] strs

-- Q#07

--formatLine = undefined

formatLine :: [String] -> String
formatLine strs = "_|" ++ intercalate "|_" strs ++ "|_"

-- *** Assignment 2-2 *** --

-- Q#08

--isMoveInBounds = undefined

isMoveInBounds :: (Int, Int) -> Bool
isMoveInBounds (row, col) = all (\x -> x >= 0 && x < _SIZE_) [row, col]

-- NOTES on my answer Q8 using Lamda
--In Haskell, the code isMoveInBounds is defining a function that takes a tuple of two Int values, (row, col), and returns a Bool value indicating whether the given position is within the bounds of a square board of size _SIZE_.
--The all function is used to check that both row and col are greater than or equal to 0 and less than _SIZE_. The expression \x -> x >= 0 && x < _SIZE_ is a lambda function that takes a single argument x and returns a Boolean value indicating whether x is within the bounds of the board. The all function applies this lambda function to each element of the list [row, col] and returns True only if the lambda function returns True for all elements.
--Therefore, if _SIZE_ = 3, the function isMoveInBounds will return True if the position (row, col) is within the bounds of a 3x3 square board, and False otherwise.

-- suggested ans
-- type Move = (Int, Int)
-- isMoveInBounds :: Move -> Bool
-- isMoveInBounds (row, col) = and [ row >= 0, r < _SIZE_, c >= 0, c < _SIZE_]

-- Q#09
-- suggested ans
--stringToMove :: String -> Move
--stringToMove [r, c] = (convertRowIndex r, readDigit c)
--stringToMove _ = _INVALID_MOVE_ -- (-1,-1)

--stringToMove = undefined
{-
stringToMove :: String -> Move
stringToMove [col, row]
  | length [col, row] == 2 = Move (convertRowIndex row) (convertColIndex col)
  | otherwise = _INVALID_MOVE_
stringToMove _ = _INVALID_MOVE_

convertRowIndex :: Char -> Int -- in A1 but had to be commented out ??
convertRowIndex row = case row of
  '1' -> 0
  '2' -> 1
  '3' -> 2
  _ -> error "Invalid row index"

convertColIndex :: Char -> Int
convertColIndex col = case col of
  'A' -> 0
  'B' -> 1
  'C' -> 2
  _ -> error "Invalid column index"
-}

-- Q#10

-- suggested ans
--replaceSquareInRow :: Player -> Int -> Row -> Row
--replaceSquareInRow

--replaceSquareInRow = undefined
{-
replaceSquareInRow :: Player -> Int -> Row -> Row
replaceSquareInRow player col row =
  let (left, right) = splitAt col row
    newSquare = case player of
                    X -> "_X_"
                    O -> "_O_"
  in if col < 0 || col >= length row
       then row
       else left ++ newSquare : tail right

rsX :: Int -> Row -> Row
rsX = replaceSquareInRow X

rsO :: Int -> Row -> Row
rsO = replaceSquareInRow O

-}