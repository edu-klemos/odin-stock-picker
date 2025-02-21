def stock_picker(days)
  best_day_buy = 0
  best_day_sell = 0
  best_profit = days[best_day_sell] - days[best_day_buy]
  days.each_with_index do |buy_price, buy_index|
    days[buy_index..-1].each.with_index(buy_index) do |sell_price, sell_index|
      profit = sell_price - buy_price
      if profit > best_profit
        best_day_buy = buy_index
        best_day_sell = sell_index
        best_profit = profit
      end
    end
  end
  puts best_day_buy
  puts best_day_sell
end


stock_picker([17,18,6,9,15,8,6,10,1])
