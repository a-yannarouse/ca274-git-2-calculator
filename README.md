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

## Notes

For this task, only the contents of the `master` branch matter (so, all of your updates will be made
to the `master` branch).

When you are done, push your `master` branch back to GitLab; I (SB) will collect your work from there.

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
```

## Task 2

This repo contains a branch `rpn-subtract` which implements the "subtract" operator, `-`.

Merge that branch into `master` and make such all of the tests (`test.zsh`) are working.

## Task 3

This repo contains a branch `rpn-multiply` which implements the "multiplication" operator, `*`.

Merge that branch into `master` and make such all of the tests (`test.zsh`) are working.
