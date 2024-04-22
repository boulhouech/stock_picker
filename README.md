# stock_picker

The stock_picker function is designed to find the best pair of days to maximize profit from buying and selling stocks. Given an array of stock prices where each element represents the stock price for a specific day, this function identifies the optimal days to buy and sell to achieve the highest profit. The first day in the returned pair represents the ideal day to buy, and the second day represents the best day to sell.

# Parameters
prices: An array of integers, where each integer is the stock price for a given day. The length of the array indicates the total number of hypothetical days.
# Returns
An array with two elements:
The index of the best day to buy.
The index of the best day to sell (must be after the buy day).
If no profitable opportunity is found, the function returns nil.
# Function Logic
The function iterates through the given array of stock prices to find the best day to buy at a low price and the best day to sell at a high price, ensuring the sell day is always after the buy day. During the iteration, it tracks the minimum price encountered (potential buy day), calculates the potential profit for each day based on the minimum price, and keeps track of the maximum profit and corresponding days to buy and sell.

# Example Usage
For a stock prices array [100, 180, 260, 310, 40, 535, 695], the function would return [4, 6], indicating that buying on Day 4 and selling on Day 6 yields the highest profit of 655 (695 - 40). If no profitable pair of days is found, it returns nil with a message indicating that no profitable trading opportunity exists.
