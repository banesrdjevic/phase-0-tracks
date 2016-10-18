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
p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil


# use .times

