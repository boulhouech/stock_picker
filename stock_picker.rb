def stock_picker(prices)
  min_price = prices[0]
  min_price_index = 0
  max_profit = 0
  best_days = [nil, nil]

  prices.each_with_index do |price, index|
    next if index == 0

    # Update the minimum price and its index if the current price is lower
    if price < min_price
      min_price = price
      min_price_index = index
    end

    # Calculate profit from the current price and the minimum price found so far
    profit = price - min_price

    # Update max profit and best trading days if the profit is higher
    if profit > max_profit
      max_profit = profit
      best_days = [min_price_index, index] # Store the best days to buy and sell
    end
  end

  # Return the best days if any profitable trading opportunity is found, else nil
  best_days.any? ? best_days : nil
end

stock_prices = [100, 180, 260, 310, 40, 535, 695]

result = stock_picker(stock_prices)

if result
  puts "Buy on day #{result[0]}, sell on day #{result[1]}"
else
  puts "No profitable trading opportunity found"
end
