def stock_picker(arr, original_arr=nil)
  original_arr ||= arr
  max_val = arr.max
  max_index = original_arr.index(max_val)
  min_val = arr.min
  min_index = original_arr.index(min_val)
  days = []
  if max_index > min_index
    days = [min_index, max_index]
  else
    if min_index > max_index
      if max_index==0
        new_arr = arr - [max_val]
        puts("new array when empty: #{new_arr}")
      else
        new_arr = arr[0..max_index]
        puts("new array when min > max: #{new_arr}")
      end
      stock_picker(new_arr, original_arr)
    end
  end
  puts days
end


stock_picker([8,6,3,18,5,2,14,9,4])
stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,4,12,3,6,9,15,8,6,1])
