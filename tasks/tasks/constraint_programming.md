Win any game by cheating with constraint programming
====================================================

[Constraint programming](en.wikipedia.org/wiki/Constraint_programming) 
is a _declarative_
[programming paradigm](http://en.wikipedia.org/wiki/Programming_paradigm).
Declarative means that you only (mostly) **declare what you want the programm to do**
(e.g. the end result) and **not how to do it** (e.g. you don't specify the
procedure; like you're used in Python, which is a _procedural_ or _imperative_
programming language).
Since you don't specify the procedure (only the desired result), the program
must somehow find the solution by itself. And it does indeed find it, if it
exists and is reasonably calculable!

The way such a program finds the solution is by 
**trying out all the possibilities** of all distinct variables,
and then **compare variable states to given constraints**. If all the **variables 
match all of the specified constraints** (limits or rules regarding their values), a possible
**solution** is proclaimed (there may be several possible solutions to any problem).

But this is internal to the interpreter. What you should worry about is 
**decomposition of the problem** into specification of:
* all variables that play part in your system,
* all possible input values for each variable,
* the constraining limits and rules that the interaction of these variables must conform to.

For example, if you were to solve a problem of two equations with two variables:

![4*x + 3*y = 10](http://chart.apis.google.com/chart?cht=tx&chl=4%5Ccdot x%2B3%5Ccdot y=10)

![3*x + 2*y = 7](http://chart.apis.google.com/chart?cht=tx&chl=3%5Ccdot x%2B2%5Ccdot y=7)

You can decompose the problem into:
* variables that play part in the system: **_x_** and **_y_**,
* possible input values for _x_ and _y_: both can be any [**integer**](http://en.wikipedia.org/wiki/Integer) (-∞, ..., -2, -1, 0, 1, 2, ..., ∞)
* the **constraints**:
  1. the equation `4*x + 3*y` must evaluate and be equal to `12`, and
  2. the equation `3*x + 2*y` must evaluate and be equal to `7`.

The program automatically finds the solution, which is 
_x=1_, _y=2_.

Even though Python is a procedural language that requires you to specify
exactly **what to do in steps** (e.g. how to do it), its powerful interpreted
nature allows one to program with constraints as well.

Task
----
Your assignment is to **write a Sudoku solver in Python**. Don't fright, it's
actually pretty easy-peasy, but you **should** be thoroughly familiar
with [basic Python features and syntax](learn_python.md)!

Follow this short tutorial:
* [Constraint programming in Python](http://agiliq.com/blog/2009/03/constraint-programming-in-python/)

Now you should revise [Sudoku rules](http://www.sudoku.name/rules/),
if you don't know them already, and then figure out how to represent
the 'Sudoku problem':
* what are the **variables** in a game of Sudoku,
* what are their **possible values**, and
* what are the **constraints** that define the correct solution?

You will need to **install a constraint-solving library** to execute this
task, and you are free to [choose](http://labix.org/python-constraint)
[any](http://code.google.com/p/cspy-lib/) that you feel comfortable with.

<!---
Make sure their code doesn't resemble:
http://simplapi.wordpress.com/2012/11/02/python-constraint-and-sudoku/
or similar.
-->

You will witness the power and ease with which your computer solves that
one damned hard puzzle.

You are, of course, welcome to **suggest your own problem** that you would
like to solve with constraint programming. You will get points accordingly.
