defmodule Sum do

  def of1(k) do
    do_sum(k, 0)
  end

  defp do_sum(0, acc) do
    IO.puts "do_sum 0, #{acc}"
    acc
  end

  defp do_sum(k, acc) do
    IO.puts "do_sum #{k}, #{acc}"
    do_sum(k - 1, k + acc)
  end

  def of(0), do: 0
  def of(n) do
    n + of(n - 1)
  end
end
