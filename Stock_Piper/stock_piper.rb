arr_test = [17, 3, 6, 9, 12, 15, 8 ,6 ,1, 10]

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
