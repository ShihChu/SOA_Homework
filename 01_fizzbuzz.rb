def fizzbuzz_turn(num)
  if (num % 15).zero?
    'FizzBuzz'
  elsif (num % 5).zero?
    'Buzz'
  elsif (num % 3).zero?
    'Fizz'
  else
    num.to_s
  end
end

def fizzbuzz(size)
  (1..size).map { |num| yield fizzbuzz_turn(num) }
end

puts fizzbuzz(15) { |item| "-#{item}-" }
