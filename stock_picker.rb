def stock_picker(price_array)
  result = [0, 0]
  maxProfit = 0

  for buyIndex in (0...price_array.length) do
    for sellIndex in (buyIndex...price_array.length) do
      profit = price_array[sellIndex] - price_array[buyIndex]
      if profit > maxProfit
        maxProfit = profit
        result = [buyIndex, sellIndex]
      end
    end
  end

  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])