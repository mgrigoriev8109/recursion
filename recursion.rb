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

def merge_sort(current_array, array_to_compare=[])
  items_to_sort = current_array.length
  if items_to_sort <= 1 
    if current_array[0] < array_to_compare[0]
      return current_array[0]
    else
      return array_to_compare[0]
    end
  else
    elements_in_half = ((items_to_sort / 2).floor)
    left_half = current_array.take(elements_in_half)
    right_half = current_array.drop(elements_in_half)
    merge_sort(left_half, right_half)
    merge_sort(right_half, left_half)
  end
  current_array
end

p merge_sort(array_to_sort)
