# Write a method that takes an array of integers and an integer to search for. 
# The method should return the index of the item, 
# or nil if the integer is not present in the array. 
# Don't use built-in array methods like .index. 
# You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):

# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil

# def search_array(arr, x)
  # new_arr = []
  # count = 0
  # while count < arr.length
    # arr.each_index.eql?(x) do { |x| new_arr << 
      # if arr.include?(x).each_index
        # new_arr << count
        # count += 1
      # else
        # p nil
        # count += 1
      # end
    # }
  # end
  # p new_arr
# end

# def search_array(arr, x)
  # new_arr = []
  # arr.each_index { |x| arr.include?(x) }
# end

arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil


# fibonacci sequence call...

fib_arr = [0, 1, 1, 2, 3, 5]

def fib_method(fib_arr, number)
  count = 0
  while count < (number - 6)
    new_fib = fib_arr.at(-1) + fib_arr.at(-2)
    fib_arr.push(new_fib)
    count += 1
  end
  fib_arr
end

p "Enter a number and I'll tell you the fibonacci sequence up to that number!"
user_fib = gets.to_i

p fib_method(fib_arr, user_fib)

# Sort an Array
# visualizations help, if I can see an example, I can understand it.

# Create an array
sort_array = [26, 53, 587, 1, 14, 7, 36, 212, 41]
# define method to sort an array
def bubble_sort(array)
  array.sort
end

# call method
p bubble_sort(sort_array)


