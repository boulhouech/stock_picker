def stock_picker(prices)
  min_price = prices[0]
  min_price_index = 0
  max_price = 0
  best_days = [nil, nil]

  prices.each_with_index do |price, index|
    next if index == 0
    if price < min_price
      min_price = price
      min_price_index = index
  end
end
