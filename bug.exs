```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Incorrect: This will stop the iteration
    throw(:stop)
  else
    IO.puts(x)
  end
 end)
```