defmodule MyList do

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def mapsum(l, f) do
    map(l, f) |> sum
  end

  def sum(l) do
    do_sum l, 0
  end

  def do_sum([], acc), do: acc
  def do_sum([h|t], acc), do: h + do_sum(t, acc)


  def max([h|t]) do
    do_max t, h
  end

  def do_max([], acc), do: acc
  def do_max([h|t], acc) when h > acc, do: do_max t, h
  def do_max([h|t], acc) when h <= acc, do: do_max t, acc

  def caesar(l, n), do: map l, fn k -> k + n end

  def flatten([]), do: []
  def flatten([h|t])
  when not is_list(h) do
    [h] ++ flatten(t)
  end

  def flatten([h|t])
  when is_list(h) do
    flatten(h) ++ flatten(t)
  end

end

IO.puts inspect MyList.map [1, 2, 3], &1*&1 # [1, 4, 9]
IO.puts inspect MyList.sum [1, 2, 3] # 6
IO.puts inspect MyList.mapsum [1, 2, 3], &1*&1 # [1, 4, 9] -> 14

IO.puts inspect MyList.max [1,2,3,4,3,2,1] # 4
IO.puts inspect MyList.caesar [1, 2, 3], 3 # [4, 5, 6]
IO.puts inspect MyList.caesar 'stefan', 3 # 'vwhidq'

IO.puts inspect MyList.flatten [1, 2, 3] # [1, 2, 3]
IO.puts inspect MyList.flatten [[1, 2, 3], 4] # [1, 2, 3, 4]
IO.puts inspect MyList.flatten [[1, 2, 3], [4], []] # [1, 2, 3, 4]
IO.puts inspect MyList.flatten [[1, 2, 3], [4], [[[[5]]]]] # [1, 2, 3, 4, 5]

