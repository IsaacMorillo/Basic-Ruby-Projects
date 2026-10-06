arr_test = [17, 3, 6, 9, 15, 8 ,6 ,1, 10]

def find_index_min_number (arr)
    index_min_number = 0
    for i in 0..arr.length-1 
        if arr[i] < arr[index_min_number]
            index_min_number = i
        end
    end
    index_min_number
end


def find_index_max_number (arr, index_start=0)
    index_max_number = index_start
    for i in index_start..arr.length-1
        if arr[i] > arr[index_max_number]
            index_max_number = i
        end
    end
    index_max_number
end


def calculate_profit (purchase_value, sale_value)
    profit = sale_value - purchase_value
    profit
end

def stock_piper (arr_numbers)
    best_profit = 0
    arr_value_days = [0,0]
    arr_numbers_copy = arr_numbers.dup
    until arr_numbers_copy.length <= 1 do
        index_min = find_index_min_number(arr_numbers_copy)
        index_max = find_index_max_number(arr_numbers_copy, index_min)
        profit_calculate = calculate_profit(arr_numbers_copy[index_min], arr_numbers_copy[index_max])
        if profit_calculate > best_profit
            puts "entro al if..."
            puts "#{profit_calculate} es mayor a #{best_profit}"
            best_profit = profit_calculate
            arr_value_days = [arr_numbers_copy[index_min], arr_numbers_copy[index_max]]
        end
        arr_numbers_copy.delete_at(index_min)
        arr_numbers_copy.delete_at(index_max)
    end
    purchase_day =arr_numbers.find_index(arr_value_days[0])
    sales_day = arr_numbers.find_index(arr_value_days[1])
    result = [purchase_day, sales_day]
    result
end

best_combination_days = stock_piper(arr_test)
puts "Best day to buy: #{best_combination_days[0]}"
puts "Best day to sell: #{best_combination_days[1]}"
puts "Benefit of: #{calculate_profit(arr_test[best_combination_days[0]],arr_test[best_combination_days[1]])}"

