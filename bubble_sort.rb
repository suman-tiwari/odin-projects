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
puts bubble_sort([6,5,1,3,2,9,4,8,12,3]) # [1, 2, 3, 3, 4, 5, 6, 8, 9, 12]
puts bubble_sort([200,25,69,22,12,800,9,55,8,65,34]) #[8, 9, 12, 22, 25, 34, 55, 65, 69, 200, 800]