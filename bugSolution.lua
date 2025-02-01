local function foo(a)
  if a == nil then
    error("Argument 'a' is missing!")  --Raise an explicit error
  end
  return a + 1
end

print(foo(5)) -- Output: 6
--print(foo()) --This will now throw an error, highlighting the problem
--Alternatively:

local function foo2(...)
  local arg = select(1, ...)
  if arg == nil then
    return nil --Handle missing argument as you want
  else
    return arg + 1
  end
end
print(foo2(5))
print(foo2())
