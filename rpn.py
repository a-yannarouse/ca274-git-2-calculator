#!/usr/bin/env python3

import sys
import rpn_add
import rpn_subtract

stack = []

def try_pop():
   if 0 < len(stack):
      return stack.pop()
   else:
      raise Exception("stack underflow: insufficient values on stack")

def evaluate(text):
   for token in text.split():
      if token == "+":
         a = try_pop()
         b = try_pop()
         stack.append(rpn_add.add(a, b))

      elif token == "-":
         b = try_pop()
         a = try_pop()
         stack.append(rpn_subtract.subtract(a, b))

      elif token == "p":
         v = try_pop()
         print(v)
         stack.append(v)

      else:
         try:
            n = int(token)
         except:
            raise Exception("invalid token: " + token)
         #
         stack.append(n)

args = sys.argv[1:]

if len(args) == 0:
   for line in sys.stdin:
      evaluate(line)
else:
   for arg in args:
      evaluate(arg)
