Unix command line
=================

Exhaustive [command line](http://en.wikipedia.org/wiki/Command-line_interface)
interface is a legacy part of _Unix_.

Get yourself familiar with the Unix philosophy:
* http://en.wikipedia.org/wiki/Unix_philosophy

The operating systems you **should** be running are **_GNU/Linux_**,
which inherit from Unix and add a great deal of other features.
Even if you are running _Mac OS X_, you are on a Unix-type OS,
but you are [tied into it more firmly](http://en.wikipedia.org/wiki/Vendor_lock-in).
But you shouldn't ever be using **_Windows_**, because Windows are **evil and dumb**.

![Linux/Windows/OS X from the POV of Mac/Win/Linux fag...](https://github.com/CoderDojoSI/ideas/raw/master/tasks/resources/OS-POV.jpg)

See [why Linux is better](http://whylinuxisbetter.net/).

So... Unix. Every Unix has a command line. A terminal console window (or no window)
**with a _prompt_**, e.g. `user@machine:/current/dir $`, after which you type in commands.
The `$` usually denotes a regular-user terminal session, and if the prompt
ends with `#`, the user is `root` (e.g. highest-permission super-admin).

The point of this command line is thus: You run a _program_ with some _arguments_.
You can pass the program some input stream of bytes (called _standard input_), and
the program can output some stream of bytes (called _standard output_).
You can chain several commands with a _pipe_ (`|` symbol), which means the standard output
of the previous program is passed as standard input into the next.

Example:
```
$ grep -i 'error' /var/log/some-program.log | wc -l
237
```

In the above example, `grep` is the name of the first program which is passed
three arguments (`-i` for case-insensitive matches of the string `error` on any lines
of `/var/log/some-program.log` log (journal, diary) file. Normally, grep would output
all the lines that match, but in this case, the output of grep is passed as input to
the second program `wc` with the argument `-l`, which makes it count the number of lines.
237 lines containing the word 'error', in this case.

You can always get the help on some program by typing `man` before, or `--help` after, its name.
That is, `man grep` and `wc --help`, for example.
The first will open `grep`'s _user's manual_, the latter `wc`'s short help and usage.

Task
----
Follow through with the tutorial on one of these sites:
* **first six** [UNIX tutorials for beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/),
* [Learning the shell](http://linuxcommand.org/learning_the_shell.php),

After you're done, **skim through** these pages very briefly:
* [Learn Unix in 10 minutes](http://freeengineer.org/learnUNIXin10minutes.html)
  — a refresher of the above,
* [List of Unix Utilities](http://en.wikipedia.org/wiki/List_of_Unix_utilities)
  — just a short reference of what is at your disposal at nearly any Unix machine,
* [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard#Directory_structure)
  — the standard directory structure of Linux.

If you are **feeling masochistic** yet, dive into these (optional but benefiting) tutorials as well:
* exhaustive [Unix Tutorial for Beginners](http://www.tutorialspoint.com/unix/unix-getting-started.htm),
* [Learn Linux the Hard Way](http://nixsrv.com/llthw) — lots of practical exercises,
* [Introduction to the OS X Unix Command Line](http://www.matisse.net/osx/intro_unix/0_outline.html) — if you're a Mac fag.

**Remember**: If you **know the name of the program** you need in order to solve your problem
(let's call it `program`) but you don't know exactly **how to use it**, then
type `man program` for the program's **manual** or `program --help` for its short **help**.

**Remember**: If you **don't know what program** you need to accomplish something, type
`apropos -s1 <keyword>` for **a propos**al of suitable installed programs
(from Section 1, Commands, and with `<keyword>` in its short description).

Try it now:
```
man apropos
apropos -s1 game
```
