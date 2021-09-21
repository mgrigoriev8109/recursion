I created these methods to practice Recursion in Ruby. 

#fibs is an iterative approach to returning the fibonacci sequences. 

#fibs_rec is the same functionality, but done recursively by calling the method on itself unless the base case is met when the sequences gets to its desired length.

#merge_sort is the Merge Sort algorith, which uses the #merge method to recursively sort an unsorted array.
  - This took me a while to create, and required starting over multiply times before I understood the forward and backward flow of recursion.
  - First the method works recursively by calling #merge_sort on itself to split the array into single elements
  - Once that base case is met, the single elements are returned and the opposite flow merges elements and arrays together using #merge
  
