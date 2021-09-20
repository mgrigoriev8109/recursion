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

def merge_sort(array, sorted_array = Array.new(array.length))
  items_to_sort = array.length
  if items_to_sort <= 1 
    #merge the two halves together and return result
  else
    index_to_split_at = (items_to_sort / 2).floor
    left_half = array[0..index_to_split_at]
    right_half = array[index_to_split_at..-1]
    merge_sort(left_half, sorted_array = Array.new(array.length))
    merge_sort(right_half, sorted_array = Array.new(array.length))
  end
end

p merge_sort(array_to_sort)

splits array into 5,2,6 and into 1,4,3 and 
  passing in a new sorted_array with the same length