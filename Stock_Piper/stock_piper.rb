arr_test = [17, 3, 6, 9, 12, 15, 8 ,6 ,1, 10]

def find_index_min_number (arr)
    index_min_number = arr[0]
    for i in 0..arr.length-1 
        if arr[i] < index_min_number
            index_min_number = arr[i]
        end
    end
    index_min_number
end