# https://leetcode.com/problems/climbing-stairs/
# You are climbing a staircase. It takes n steps to reach the top.
#
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
#
# def climb_stairs(steps)
#   return steps if steps <= 2
#
#   previous_count = 1
#   current_count = 1
#
#   (steps - 1).times do
#     temp = current_count
#     current_count += previous_count
#     previous_count = temp
#   end
#
#   current_count
# end


def climb_stairs(steps)
  return steps if steps <= 2
  cache = {}
  cache[1] = 1
  cache[2] = 2
  3.upto(steps) do |n|
    cache[n] = cache[n - 2] + cache[n - 1]
  end
  cache[steps]
end

puts climb_stairs(3)