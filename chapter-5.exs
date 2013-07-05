# 5.2 FizzBuzz
IO.puts "----------------------------------------------------------------------"
IO.puts "5.2"

# Write a function that takes three arguments. If the first two are zero,
# return “FizzBuzz”. If the first is zero, return “Fizz”. If the second is zero
# return “Buzz”. Otherwise return the third argument. Do not use any lan- guage
# features that we haven’t yet covered in this book.
fizzbuzz = fn
    0, 0, _ -> "FizzBuzz"
    0, _, _ -> "Fizz"
    _, 0, _ -> "Buzz"
    _, _, x -> x
  end

"FizzBuzz" = fizzbuzz.(0, 0, "foo")
"Fizz" = fizzbuzz.(0, "bar", "foo")
"Buzz" = fizzbuzz.("baz", 0, "foo")
"zonk" = fizzbuzz.("baz", "foo", "zonk")

# The operator rem(a, b) returns the remainder after dividing a by b. Write a
# function that takes a single integer (n) calls the previous function passing
# it rem(n,3), rem(n,5), and n. Call it 7 times with the arguments 10, 11, 12,
# etc. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz”, 16”.

do_fizzbuzz = fn n ->
    fizzbuzz.( rem(n,3), rem(n,5), n)
  end

IO.puts do_fizzbuzz.(10)
IO.puts do_fizzbuzz.(11)
IO.puts do_fizzbuzz.(12)
IO.puts do_fizzbuzz.(13)
IO.puts do_fizzbuzz.(14)
IO.puts do_fizzbuzz.(15)
IO.puts do_fizzbuzz.(16)

# 5.3 prefix
IO.puts "----------------------------------------------------------------------"
IO.puts "5.3"

prefix = fn pf ->
    fn arg ->
        "#{pf} #{arg}"
      end
  end

mrs = prefix.("mrs")
"mrs foo" = mrs.("foo")

# 5.4 & notation with lambdas
IO.puts "----------------------------------------------------------------------"
IO.puts "5.4"

IO.puts inspect Enum.map [1, 2, 3, 4], &1 + 2
Enum.map [1, 2, 3, 4], IO.puts &1
