```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.for
Enum.for(x <- list, x != 3, do: IO.puts(x))

# Solution 2: Handling exceptions outside Enum.each
# try do
#   Enum.each(list, fn x ->
#     if x == 3 do
#       #Better practice to raise an exception, avoid throwing
#       raise "Value 3 encountered"
#     else
#       IO.puts(x)
#     end
#   end)
# catch
#   :error -> IO.puts("Exception caught: Value 3 encountered")
# end
```