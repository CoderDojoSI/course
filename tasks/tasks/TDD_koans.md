Intro to **test-driven development** (TDD)
==========================================

It is important to ensure a level of confidence that your programs work as
intended, that is, correctly. One way to do it is by
[formally proving correctness](http://en.wikipedia.org/wiki/Formal_verification)
which is an interesting subject in _pure science_ that will not be covered here.

Another way is by writing tests. You write tests and
[_assertions_](http://en.wikipedia.org/wiki/Assertion_%28software_development%29)
describing how your program should behave, basically **what the 
_expected output_ is given a specific _input_**, and then let the 
_test suite_ automatically run the tests on your code.  If any errors are
found (e.g. one of the tests doesn't pass), then you can assume that either
your program's algorithm or the test is wrong.

This is called [_test-driven development_](http://en.wikipedia.org/wiki/Test-driven_development).

Having a set of tests also helps in further development of your program,
e.g. by having your code tested after every major code change, you ensure
that **you don't accidentally break any of the existing program features** with
the new code you've commited.


Task
----

[This repository](https://github.com/lucaminudel/TDDwithMockObjectsAndDesignPrinciples/tree/master/TDDMicroExercises)
contains a taste of what TDD is like in the real world (in either Python, Ruby, JavaScript, ...).
The code also adheres to [object-oriented programming](http://en.wikipedia.org/wiki/Object-oriented_programming) principles.
What can you do with it?

### Python ###

You will learn to appreciate [The Zen of Python](http://www.python.org/dev/peps/pep-0020/)
through solving simple Python problems.

Your task will be to **write not the program but the tests for it**.

This will provide a good introduction, or will deepen what you already know
about the Python language and designing computer software in general.

Follow the instructions here:
* https://github.com/gregmalcolm/python_koans

### Ruby ###

You can also test/expand your knowledge of Ruby with [Ruby koans](http://rubykoans.com)
(like Python koans above, just a little uglier).
