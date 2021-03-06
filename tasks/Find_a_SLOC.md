---
layout: task
title: Find a SLOC
---
{{ page.title }}
================

Your Python interpreter says:

```
Traceback (most recent call last):
  File "my_project.py", line 102, in <module>
    if re.match(regular_expression, string):
TypeError: expected string or buffer
```

While you obviously passed an object of wrong type to `re.match` function,
you want to know of what type exactly. You finally fix the error in your 
source code, but you figure a more verbose TypeError message would help 
you trace such bugs in the future:

```
TypeError: expected string or buffer; got <type> instead
```

You decide to submit a **bug report** (or a _wishlist item_, since your report
is about a _feature extension_) against the Python interpreter (CPython)
source tree, so the project maintainers can fix it.

Task
----
1. Find the source line of code (in Python's source) that results in above TypeError exception.
2. Submit a bug report to Python's _issue tracker_.

What you will learn
-------------------
* How to trace issues to the core.
* How to access and read source code and how software projects are maintained.
* How to effectively search through the source code on the
  [command line](unix_command_line.html) -- ask your instructors or read about `grep(1)`.
