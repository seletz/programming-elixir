defmodule Chop do
  def guess(actual, min..max) do
    IO.puts "guess #{actual} #{min} #{max}"

    current = halve(min..max)
    IO.puts "Is it #{current}?"

    do_guess current, actual, min..max
  end

  defp do_guess(_, actual, min..max) when actual < min do
    raise "don't cheat!"
  end

  defp do_guess(_, actual, min..max) when actual > max do
    raise "don't cheat!"
  end

  defp do_guess(current, actual, _) when current == actual do
    IO.puts "The number is #{current}"
  end

  defp do_guess(current, actual, min..max) when current < actual do
    #IO.puts "   Too low!"

    new_guess = halve current..max

    IO.puts "Is it #{new_guess}?"

    do_guess new_guess, actual, current..max
  end

  defp do_guess(current, actual, min..max) when current > actual do
    #IO.puts "     Too high!"

    new_guess = halve min..current

    IO.puts "Is it #{new_guess}?"

    do_guess new_guess, actual, min..current
  end

  def halve(min..max) do
    #IO.puts "                 halve #{min} #{max}"
    div(min + max, 2)
  end
end

Chop.guess 7, 1..20
Chop.guess 273, 1..1000
