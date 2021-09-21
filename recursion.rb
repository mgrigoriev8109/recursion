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

def merge_sort(current_array)
  current_length = current_array.length
  if current_length == 1
    current_array
  else
    elements_in_half = (current_length / 2).floor
    left_half = current_array.take(elements_in_half)
    right_half = current_array.drop(elements_in_half)
    sorted_left = merge_sort(left_half)
    sorted_right = merge_sort(right_half)
    merge(sorted_left, sorted_right)
  end
end

def merge(left_half, right_half)
  sorted_array = []
  number_of_merges = (left_half.length + right_half.length)
  number_of_merges.times do
    if left_half[0].nil?
      sorted_array.push(right_half.shift)
    elsif right_half[0].nil?
      sorted_array.push(left_half.shift)
    elsif left_half[0] < right_half[0]
      sorted_array.push(left_half.shift)
    else
      sorted_array.push(right_half.shift)
    end
  end
  sorted_array
end


array_to_sort = [2,1,5,3,4]
p merge_sort(array_to_sort)