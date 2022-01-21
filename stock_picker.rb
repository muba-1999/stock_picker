def stock_picker(price)
	buy_and_sell_days = []
	profit = 0
	
	for buy_day in (0...price.length)
		for sell_day in (buy_day + 1...price.length)
			
			current_profit = price[sell_day] - price[buy_day]

			if current_profit > profit
				profit = current_profit
				buy_and_sell_days = [buy_day, sell_day]
			end
		end
	end
	return buy_and_sell_days
end

print stock_picker([17,3,6,9,15,8,6,1,10])
puts