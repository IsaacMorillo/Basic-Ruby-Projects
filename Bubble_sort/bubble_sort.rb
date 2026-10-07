arr_test = [4,3,2,1]

def bubble_sort(arr)
    iterations = arr.length-2
    arr.each do
        0.upto(iterations) do |i|
            if arr[i] > arr[i+1]
                arr[i] , arr[i+1] = arr[i+1], arr[i]
            end 
        end
    end
    arr
    
end

puts "#{bubble_sort(arr_test)}"