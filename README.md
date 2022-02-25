# ca274-git-2-calculator

An [RPN calculator](https://en.wikipedia.org/wiki/Reverse_Polish_notation)
(or postfix calculator)
is a calculator in which the operators follow the operands.

For example:

```
5 3 2 + *
```

for which the answer is `25`.

This repo contains an RPN calculator implementation which is initially limited to addition only, but which you
will extend to implement further operators.

The calculator is written in python, and you should probably begin by reviewing the code, running the
calculator, and running the test script.

## Task 1

In the initial implementation:

- the only operators are `+` (addition) and `p` (print), and
- the `+` operator is broken:

```console
$ python3 rpn.py 3 4 + 2 + p
11
$
```

(The correct answer should, of course, be `9`.)

Fix this bug.

When you are done, the test script `test.zsh` should succeed.

```console
$ zsh ./test.zsh
.
.
.
okay
$
