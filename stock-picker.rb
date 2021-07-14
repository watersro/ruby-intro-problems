def stock_picker(prices)
    low_price = prices[0]
    low_index = 0
    gain = 0
    best_days = [0, 0]

    prices.each_with_index do |price, index|
        if price < low_price
            low_price = price
            low_index = index
        end
        
        if price - low_price > gain
            gain = price - low_price
            best_days = [low_index, index]
        end
    end
    print best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])

=begin
find biggest
    
=end