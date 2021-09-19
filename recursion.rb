def fibs(number, fibonacci_array = [0, 1])
  (2..number).each do 
    fibonacci_array.push(fibonacci_array[-1] + fibonacci_array[-2])
  end
  fibonacci_array
end 

p fibs(10)