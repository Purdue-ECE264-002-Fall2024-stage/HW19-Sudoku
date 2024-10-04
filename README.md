# Sudoku

Learning Goals
==============

* Design data structures and algorithms to solve a Sudoku
* Implement a Sudoku solver in C

**Note**: For this assignment, there is no strict code template. You have the freedom to explore and implement any algorithm to solve a Sudoku.

Sudoku Game
===========

Sudoku is a number game played on a 9x9 grid. The grid is subdivided into 9 3x3 regions. Some cells are pre-filled by numbers between 1 and 9
inclusive.

The goal of the game is to fill the grid with numbers
between 1 and 9 such that each number appears exactly once in each row, column and 3x3 subregion.

If a Sudoku game is created correctly,
each cell should have one and only one correct answer.

For easy Sudoku games, the values in the unfilled cells are
determined by repeatedly checking the uniqueness rules above for *each
individual cell*. The problem lies in finding a systematic order to fill in the cells. As more cells are filled, the possible values for the remaining cells decrease solving each cell becomes easier.

However, more difficult Sudoku games, need to consider the values in several
cells simultaneously. After considering the uniqueness rules, sometimes it is not
possible to find a cell whose value can be definitively determined.
These games require that
players guess the values in some cells first and fill the remaining
cells. As cells are filled, if the player reaches a point where no new cell can be filled, then their initial guesses must have been incorrect and they must *backtrack* and guess again.

For this assignment however, the testcases will only be games where every cell's values
can be uniquely determined from the outset. The main problem to solve is filling in the cells in the correct order.

**Note**: There could be multiple valid orders to fill in the Sudoku.

Sample Inputs and Expected Outputs
==================================

The examples in this assignments are from the book "Sudoku Collection
Volume 124" published by www.kappabooks.com.

Submission
==========

You need to modify main.c, sudoku.c, and create your own sudoku.h. Submit these files to gradescope.

The assignment is due at 11:59 pm on November 26, 2024. The late due date is 11:59 pm on December 1, 2024.
