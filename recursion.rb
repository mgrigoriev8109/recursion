def fibs(number, fibonacci_array = [0, 1])
  (2..number).each do 
    fibonacci_array.push(fibonacci_array[-1] + fibonacci_array[-2])
  end
  fibonacci_array
end 

def fibs_rec(number, fibonacci_array = [0, 1])
  return fibonacci_array if fibonacci_array.length == (number + 1)

  fibs_rec(number, fibonacci_array.push(fibonacci_array[-1] + fibonacci_array[-2]))
end

array_to_sort = [5,2,6,1,4,3]

def merge_sort(current_array, array_to_compare)
  items_to_sort = curreny_array.length
  if items_to_sort <= 1 
    if current_array[0] < array_to_compare[0]
      return current_array[0]
    else
      return array_to_compare[0]
    end
  else
    index_to_split_at = (items_to_sort / 2).floor
    left_half = current_array[0..index_to_split_at]
    right_half = current_array[index_to_split_at..-1]
    merge_sort(left_half, right_half)
    merge_sort(right_half, left_half)
  end
end

p merge_sort(array_to_sort)

1) merge_sort splits array into left_half 5,2,6 and right_half 1,4,3
2) merge_sort splits left_half into 5 and 2, 6 
  2.1) 5 is a base case, so it needs to merge with 2, 6
  2.2) 2, 6 is split into left_half 2 and right_half 6
    2.21) 2 returns into sorted_array after being compared to right_half
    2.22) 6 returns into sorted_array after being compared to left_half

3) merge_sort splits right_half of array into 1 and 4,6