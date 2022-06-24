# Project Euler Solutions

This repository contains some solutions to the [Project Euler](
https://projecteuler.net/about) problems in various languages such as
C, Rust, Awk, Python and Ruby.

I am solving these problems to learn better practices and understand
better some programming languages I rarely use (like Rust and Python).

## Copyright

All `problem.md` files contain text extracted from the page and are
licensed under the [Attribution-NonCommercial-ShareAlike 4.0
International (CC BY-NC-SA 4.0) License](
https://creativecommons.org/licenses/by-nc-sa/4.0/)

Also read [copyright](https://projecteuler.net/copyright).

To go to the page of a problem just replace the \`X\` with the index
of the problem: [https://projecteuler.net/problem=X]()

None of the solutions here are taken from any other source and my code
has no license because they're are small and generic.

## Checking

There is a shell script called `euler.sh` that can sourced and used to
compile, run, check and clean all directories and files provided.

**how to source:**

	$ source euler.sh

**examples:**

This will show the problem 005 then compile, run and check all
solutions in that directory.

	$ euler src/005

This will compile, run and check all the solutions of the problem 002
without printing the problem and expected result.

	$ euler src/002/*

