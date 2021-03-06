# https://leetcode.com/problems/house-robber/
# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed,
# the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and
# it will automatically contact the police if two adjacent houses were broken into on the same night.

# Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of
# money you can rob tonight without alerting the police.
# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
#              Total amount you can rob = 1 + 3 =

def house_robber(nums)
  length = nums.length
  return 0 if nums.empty?

  return nums.first if length == 1

  rob1, rob2 = 0,0

  nums.each do |n|
    temp = [n + rob1, rob2].max
    rob1 = rob2
    rob2 = temp
  end
  rob2
end

puts house_robber([2,7,9,3,1])


