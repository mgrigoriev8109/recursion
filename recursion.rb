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

def merge_sort(array)
  items_to_sort = array.length
  if  items_to_sort <= 1 
    #merge the two halves together and return result
  else
    #split the array in half
    #merge_sort(left_half)
    #merge_sort(right_half)
  end
end

p merge_sort(array_to_sort)