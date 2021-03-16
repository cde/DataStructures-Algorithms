# frozen_string_literal: true
# 0,1,1,2,3,5,8,13
# O(2^N)
# def fibonacci(n)
#   return n if n < 2
#   cache = {}
#   fibonacci(n-1) + fibonacci(n-2)
# end

# Divide & Conquer + Memoization
# Can be divided into sub-problems aka tree like structure
# Recursive Solution
# Are there repetitive sub-problems
# Memoize sub-problems


def fibonacci(n)
  cache = {}
  fib = lambda do |n|
    return n if n < 2
    return cache[n] unless cache[n].nil?

    cache[n] = fib.call(n - 1) + fib.call(n - 2)
    cache[n]

  end
  fib.call(n)
end
puts fibonacci(7)