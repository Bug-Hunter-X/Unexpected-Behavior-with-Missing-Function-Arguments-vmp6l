# Lua Function Argument Handling Bug

This repository demonstrates a potential issue in Lua related to handling function arguments.  The `bug.lua` file shows a function call where a parameter is omitted leading to unexpected behavior. The solution is explained in `bugSolution.lua`

## Bug Description

In Lua, you can call functions with fewer arguments than defined. While this might sometimes be desired behavior, it can lead to silent issues if not handled correctly. The `foo()` function, when called without an argument, implicitly uses `nil`, as designed, but this may not always be what the programmer intends.

## Solution

Explicitly checking for the number of arguments provided within the function is recommended. This helps in better error handling and avoids silent failures.