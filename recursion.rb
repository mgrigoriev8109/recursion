require 'pry-byebug'

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

array_to_sort = [5,2,1,3,6,4]

def merge_sort(current_array)
  current_length = current_array.length
  if current_length == 1
    return current_array
  else
    elements_in_half = (current_length / 2).floor
    left_half = current_array.take(elements_in_half)
    right_half = current_array.drop(elements_in_half)
    sorted_left = merge_sort(left_half)
    sorted_right = merge_sort(right_half)
    #write pseudocode to merge(sorted_left, sorted_right)
  end
  
end
#binding.pry
p merge_sort(array_to_sort)

