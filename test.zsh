#!/usr/bin/zsh

# Poor man's test harness: wrapper function for testing the output of a command.
#
# For example, this succeeds:
#
#   $ echo 123 | expect 123
#
# But this fails:
#
#   $ echo "nobody" | expect "Spanish Inquisition"
#
expect () {
  if ! grep -w -q $argv
  then
    print "expected $argv, got something else" >&2
    exit 1
  else
    print -- $argv
  fi
}

# This causes zsh to show each command on standard output before executing it.
#
show_command() { print -- "$" $argv[3]; }
autoload -Uz add-zsh-hook
add-zsh-hook preexec show_command

# Exit immediately and fail on any (unguarded) failure.
#
set -e

# ###########################################################################
# Subtraction.
#

# This is the key commit from the rpn-subtract; when you're done, it should be
# in master too.
#
git merge-base --is-ancestor 7c1163a master

python3 rpn.py "150 20 - p" | expect 130
python3 rpn.py "150 20 - 7 - p" | expect 123
python3 rpn.py "150 180 + 16 7 - - p" | expect 321

# ###########################################################################
# Addition.
#

# The master branch should still contain this commit (which was in master to
# start with)...
#
git merge-base --is-ancestor 67c2b74 master

# Test addition, passing calculation as command-line arguments.
#
python3 rpn.py "10 20 + 93 + p" | expect 123

# Test addition, passing calculation on standard input.
#
python3 rpn.py <<EOF | expect 55
1 2 3 4 5 6 7 8 9 10
+ + + + + + + + + p
EOF

HEAD
# ###########################################################################
# Done (okay).
#
# ################################################################
# Multiplication.

python3 rpn.py "7 8 * p" | expect 56
python3 rpn.py "7 8 * 1 + 2 * p" | expect 114
origin/rpn-multiply

print "okay"
