{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module A2 where

import A1
import Data.Bits (Bits (bitSize))
import Data.List (intercalate)

-- *** Assignment 2-1 *** --

-- Q#01
promptPlayer :: Player -> String
promptPlayer p = concat ["Player ", showSquare p, ", enter row and column: "]

-- Q#02
_RANGE_ :: [Int]
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
-- Declare _EMPTY_ROW_ and _EMPTY_BOARD_ using replicate and Empty constructor
-- Unsure why this is an issue when run with elem... as in question 4!!
_EMPTY_ROW_ :: Row
_EMPTY_ROW_ = replicate _SIZE_ Empty

_EMPTY_BOARD_ :: Board
_EMPTY_BOARD_ = replicate _SIZE_ _EMPTY_ROW_

-- Q#05
-- Define a function to check if a Square is Empty

-- ** Why an issue when running !!??

isEmpty :: Square -> Bool
isEmpty Empty = True
isEmpty _ = False

-- Define the isTied function to check if a Board is tied
isTied :: Board -> Bool
isTied board = and $ map (not . any isEmpty) board

-- isTied _EMPTY_BOARD_ (works ok)
-- isTied _TIED_BOARD_ (errors why??)
-- Declare a constant _TIED_BOARD_ to test the isTied function

-- ** Why an issue when using !!??

_TIED_BOARD_ :: Board
_TIED_BOARD_ =
  [ [X, O, O],
    [O, X, X],
    [O, X, O]
  ]

-- Q#06
indexRowStrings :: [String] -> [(Char, String)]
indexRowStrings strs = zip ['A' ..] strs

-- Q#07
formatLine :: [String] -> String
formatLine strs = "_|" ++ intercalate "|_" strs ++ "|_"

-- *** Assignment 2-2 *** --

-- Q#08
--NOTES on my answer Q8 using Lamda
--In Haskell, the code isMoveInBounds is defining a function that takes a tuple of two Int values, (row, col), and returns a Bool value indicating whether the given position is within the bounds of a square board of size _SIZE_.
--The all function is used to check that both row and col are greater than or equal to 0 and less than _SIZE_. The expression \x -> x >= 0 && x < _SIZE_ is a lambda function that takes a single argument x and returns a Boolean value indicating whether x is within the bounds of the board. The all function applies this lambda function to each element of the list [row, col] and returns True only if the lambda function returns True for all elements.
--Therefore, if _SIZE_ = 3, the function isMoveInBounds will return True if the position (row, col) is within the bounds of a 3x3 square board, and False otherwise.
isMoveInBounds :: (Int, Int) -> Bool
isMoveInBounds (row, col) = all (\x -> x >= 0 && x < _SIZE_) [row, col]

-- Ian's ans as in video
-- type Move = (Int, Int)
-- isMoveInBounds :: Move -> Bool
-- isMoveInBounds (row, col) = and [ row >= 0, r < _SIZE_, c >= 0, c < _SIZE_]

-- Q#09
-- Ian's ans as in video
stringToMove :: String -> Move
stringToMove [r, c] = (convertRowIndex r, readDigit c)
stringToMove _ = _INVALID_MOVE_ -- (-1,-1)

{- my code had errors
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
-- Ian's ans as in video - wont run on my setup!!??
replaceSquareInRow :: Player -> Int -> Row -> Row
replaceSquareInRow p c row = xs ++ ys
  where
    (xs, ys) = splitAt c row
    ys'
      | null ys = []
      | c < 0 = ys
      | otherwise = p : tail ys

{- my code had errors
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