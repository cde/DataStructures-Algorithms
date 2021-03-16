# Best Time to Buy and Sell Stock
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# You are given an array prices where prices[i] is the price of a given stock on the ith day.
#
# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future
# to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
#
# Input: prices = [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
# Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
#
# prices = [7,1,5,3,6,4]
# buy =  7, sell = 1 profit = 0
# buy = 5   sell = 5 profit = 0 n=2 price = 5
# buy = 3   sell = 5 profit = 2 n=3 price = 3

# two pointers technique
def max_profit(prices)

  n = prices.length
  return 0 if prices.empty?
  return prices.first if n == 1

  #left: buy, right: sell
  left,right = 0, 1
  maxProf = 0

  while right < n
    if prices[left] < prices[right]
      profit = prices[right] - prices[left]
      maxProf = [maxProf, profit].max
    else
      left = right
    end
    right += 1
  end
  maxProf
end

prices = [7,1,5,3,6,4]
puts max_profit(prices)