def bubble_sort(arr)
    if arr.each_cons(2).all?{|first, second| first <= second}
        arr
    else
        len = arr.size
    	arr.each.with_index(0) do |val, index|
            break if index == (len -1)
            new_set = arr[index, 2]
            if new_set[0] > new_set[1]
                arr[index, 2] = new_set.reverse
            end
    	end
        bubble_sort(arr)
    end
end

puts bubble_sort([4,3,78,2,0,2]) # [0,2,2,3,4,78]